require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { active: @item.active, caption: @item.caption, condition: @item.condition, cost_day: @item.cost_day, cost_month: @item.cost_month, cost_week: @item.cost_week, description: @item.description, title: @item.title, user_id: @item.user_id, value: @item.value }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    put :update, id: @item, item: { active: @item.active, caption: @item.caption, condition: @item.condition, cost_day: @item.cost_day, cost_month: @item.cost_month, cost_week: @item.cost_week, description: @item.description, title: @item.title, user_id: @item.user_id, value: @item.value }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
