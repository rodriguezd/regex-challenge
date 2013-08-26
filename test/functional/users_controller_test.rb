require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get enter_arena" do
    get :enter_arena
    assert_response :success
  end

  test "should get exit_arena" do
    get :exit_arena
    assert_response :success
  end

end
