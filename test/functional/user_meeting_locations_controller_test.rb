require 'test_helper'

class UserMeetingLocationsControllerTest < ActionController::TestCase
  setup do
    @user_meeting_location = user_meeting_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_meeting_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_meeting_location" do
    assert_difference('UserMeetingLocation.count') do
      post :create, user_meeting_location: {  }
    end

    assert_redirected_to user_meeting_location_path(assigns(:user_meeting_location))
  end

  test "should show user_meeting_location" do
    get :show, id: @user_meeting_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_meeting_location
    assert_response :success
  end

  test "should update user_meeting_location" do
    put :update, id: @user_meeting_location, user_meeting_location: {  }
    assert_redirected_to user_meeting_location_path(assigns(:user_meeting_location))
  end

  test "should destroy user_meeting_location" do
    assert_difference('UserMeetingLocation.count', -1) do
      delete :destroy, id: @user_meeting_location
    end

    assert_redirected_to user_meeting_locations_path
  end
end
