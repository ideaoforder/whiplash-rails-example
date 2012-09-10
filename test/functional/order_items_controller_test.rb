require 'test_helper'

class OrderItemsControllerTest < ActionController::TestCase
  setup do
    @order_item = order_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_item" do
    assert_difference('OrderItem.count') do
      post :create, order_item: { available: @order_item.available, created_at: @order_item.created_at, description: @order_item.description, id: @order_item.id, item_id: @order_item.item_id, order_id: @order_item.order_id, originator_id: @order_item.originator_id, packaging: @order_item.packaging, packed: @order_item.packed, picked: @order_item.picked, price: @order_item.price, quantity: @order_item.quantity, sku: @order_item.sku, unshippable: @order_item.unshippable, updated_at: @order_item.updated_at }
    end

    assert_redirected_to order_item_path(assigns(:order_item))
  end

  test "should show order_item" do
    get :show, id: @order_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_item
    assert_response :success
  end

  test "should update order_item" do
    put :update, id: @order_item, order_item: { available: @order_item.available, created_at: @order_item.created_at, description: @order_item.description, id: @order_item.id, item_id: @order_item.item_id, order_id: @order_item.order_id, originator_id: @order_item.originator_id, packaging: @order_item.packaging, packed: @order_item.packed, picked: @order_item.picked, price: @order_item.price, quantity: @order_item.quantity, sku: @order_item.sku, unshippable: @order_item.unshippable, updated_at: @order_item.updated_at }
    assert_redirected_to order_item_path(assigns(:order_item))
  end

  test "should destroy order_item" do
    assert_difference('OrderItem.count', -1) do
      delete :destroy, id: @order_item
    end

    assert_redirected_to order_items_path
  end
end
