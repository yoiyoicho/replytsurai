require "test_helper"

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get twitter_show_url
    assert_response :success
  end
end
