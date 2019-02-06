require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get dashboard_open_url
    assert_response :success
  end

end
