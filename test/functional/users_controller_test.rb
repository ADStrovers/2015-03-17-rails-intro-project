require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get canvases" do
    get :canvases
    assert_response :success
  end

end
