require "test_helper"

class MatchControllerTest < ActionDispatch::IntegrationTest
  test "should get show_all" do
    get match_show_all_url
    assert_response :success
  end
end
