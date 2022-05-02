require "test_helper"

class YahooControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get yahoo_show_url
    assert_response :success
  end
end
