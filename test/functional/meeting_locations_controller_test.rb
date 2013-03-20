require 'test_helper'

class MeetingLocationsControllerTest < ActionController::TestCase
  setup do
    @meeting_location = meeting_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_location" do
    assert_difference('MeetingLocation.count') do
      post :create, meeting_location: { address_id: @meeting_location.address_id, title: @meeting_location.title }
    end

    assert_redirected_to meeting_location_path(assigns(:meeting_location))
  end

  test "should show meeting_location" do
    get :show, id: @meeting_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting_location
    assert_response :success
  end

  test "should update meeting_location" do
    put :update, id: @meeting_location, meeting_location: { address_id: @meeting_location.address_id, title: @meeting_location.title }
    assert_redirected_to meeting_location_path(assigns(:meeting_location))
  end

  test "should destroy meeting_location" do
    assert_difference('MeetingLocation.count', -1) do
      delete :destroy, id: @meeting_location
    end

    assert_redirected_to meeting_locations_path
  end
end
