require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should show match" do
    get root_path(@match)
    assert_response :success
  end

end
