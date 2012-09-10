require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { billed: @order.billed, created_at: @order.created_at, email: @order.email, gift: @order.gift, id: @order.id, order_orig: @order.order_orig, originator: @order.originator, originator_id: @order.originator_id, originator_notified: @order.originator_notified, public_note: @order.public_note, req_ship_method_code: @order.req_ship_method_code, req_ship_method_price: @order.req_ship_method_price, ship_3rdparty_account: @order.ship_3rdparty_account, ship_3rdparty_cost: @order.ship_3rdparty_cost, ship_3rdparty_country: @order.ship_3rdparty_country, ship_3rdparty_zip: @order.ship_3rdparty_zip, ship_actual_cost: @order.ship_actual_cost, ship_method: @order.ship_method, ship_notes: @order.ship_notes, shipped_on: @order.shipped_on, shipping_address_1: @order.shipping_address_1, shipping_address_2: @order.shipping_address_2, shipping_city: @order.shipping_city, shipping_company: @order.shipping_company, shipping_country: @order.shipping_country, shipping_name: @order.shipping_name, shipping_phone: @order.shipping_phone, shipping_state: @order.shipping_state, shipping_zip: @order.shipping_zip, status: @order.status, tracking: @order.tracking, tracking_sent: @order.tracking_sent, updated_at: @order.updated_at }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { billed: @order.billed, created_at: @order.created_at, email: @order.email, gift: @order.gift, id: @order.id, order_orig: @order.order_orig, originator: @order.originator, originator_id: @order.originator_id, originator_notified: @order.originator_notified, public_note: @order.public_note, req_ship_method_code: @order.req_ship_method_code, req_ship_method_price: @order.req_ship_method_price, ship_3rdparty_account: @order.ship_3rdparty_account, ship_3rdparty_cost: @order.ship_3rdparty_cost, ship_3rdparty_country: @order.ship_3rdparty_country, ship_3rdparty_zip: @order.ship_3rdparty_zip, ship_actual_cost: @order.ship_actual_cost, ship_method: @order.ship_method, ship_notes: @order.ship_notes, shipped_on: @order.shipped_on, shipping_address_1: @order.shipping_address_1, shipping_address_2: @order.shipping_address_2, shipping_city: @order.shipping_city, shipping_company: @order.shipping_company, shipping_country: @order.shipping_country, shipping_name: @order.shipping_name, shipping_phone: @order.shipping_phone, shipping_state: @order.shipping_state, shipping_zip: @order.shipping_zip, status: @order.status, tracking: @order.tracking, tracking_sent: @order.tracking_sent, updated_at: @order.updated_at }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
