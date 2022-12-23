require "test_helper"

class HomeUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_user_index_url
    assert_response :success
  end
end
