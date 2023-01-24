require 'test_helper'

class AdminsBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins__backoffice_welcome_index_url
    assert_response :success
  end

end
