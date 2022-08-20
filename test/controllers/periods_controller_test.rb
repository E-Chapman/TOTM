require "test_helper"

class PeriodsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get periods_create_url
    assert_response :success
  end

  test "should get delete" do
    get periods_delete_url
    assert_response :success
  end
end
