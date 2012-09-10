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
      post :create, item: { available: @item.available, created_at: @item.created_at, description: @item.description, exp_quantity: @item.exp_quantity, height: @item.height, id: @item.id, image_file_name: @item.image_file_name, image_originator_url: @item.image_originator_url, image_updated_at: @item.image_updated_at, length: @item.length, media_mail: @item.media_mail, originator: @item.originator, originator_id: @item.originator_id, packaging: @item.packaging, price: @item.price, quantity: @item.quantity, sku: @item.sku, title: @item.title, updated_at: @item.updated_at, vendor: @item.vendor, weight: @item.weight, width: @item.width }
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
    put :update, id: @item, item: { available: @item.available, created_at: @item.created_at, description: @item.description, exp_quantity: @item.exp_quantity, height: @item.height, id: @item.id, image_file_name: @item.image_file_name, image_originator_url: @item.image_originator_url, image_updated_at: @item.image_updated_at, length: @item.length, media_mail: @item.media_mail, originator: @item.originator, originator_id: @item.originator_id, packaging: @item.packaging, price: @item.price, quantity: @item.quantity, sku: @item.sku, title: @item.title, updated_at: @item.updated_at, vendor: @item.vendor, weight: @item.weight, width: @item.width }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
