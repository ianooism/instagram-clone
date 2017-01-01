ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
  
  def user_params
    @user_params ||= { email: 'test@test.com', password: 'password' }
  end
  
  def create_user
    @user ||= User.create(user_params)
  end
  
  def sign_in_user
    post user_session_url, params: { user: user_params }
    follow_redirect!
  end
end
