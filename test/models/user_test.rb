require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user should be saved" do
    create_user
    assert @user.persisted?
  end
end
