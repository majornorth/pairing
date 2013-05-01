require 'test_helper'

class ActivityTypesControllerTest < ActionController::TestCase
  test "should get sport" do
    get :sport
    assert_response :success
  end

end
