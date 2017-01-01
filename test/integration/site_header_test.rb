require 'test_helper'

class SiteHeaderTest < ActionDispatch::IntegrationTest
  test "unsigned-in user should load unsigned-in header" do
    get root_url
    assert_select "a[href=?]", new_user_registration_path
  end
  
  test "signed-in user should load signed-in header" do
    create_user
    sign_in_user
    assert_select "a[href=?]", destroy_user_session_path
  end
end
