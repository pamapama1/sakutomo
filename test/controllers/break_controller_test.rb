require 'test_helper'

class BreakControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get break_create_url
    assert_response :success
  end

end
