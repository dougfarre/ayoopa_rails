require 'test_helper'

class RenterSettingsControllerTest < ActionController::TestCase
  setup do
    @renter_setting = renter_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:renter_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renter_setting" do
    assert_difference('RenterSetting.count') do
      post :create, renter_setting: {  }
    end

    assert_redirected_to renter_setting_path(assigns(:renter_setting))
  end

  test "should show renter_setting" do
    get :show, id: @renter_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renter_setting
    assert_response :success
  end

  test "should update renter_setting" do
    put :update, id: @renter_setting, renter_setting: {  }
    assert_redirected_to renter_setting_path(assigns(:renter_setting))
  end

  test "should destroy renter_setting" do
    assert_difference('RenterSetting.count', -1) do
      delete :destroy, id: @renter_setting
    end

    assert_redirected_to renter_settings_path
  end
end
