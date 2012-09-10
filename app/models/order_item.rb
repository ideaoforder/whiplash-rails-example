class OrderItem < ActiveRecord::Base
  attr_accessible :available, :created_at, :description, :id, :item_id, :order_id, :originator_id, :packaging, :packed, :picked, :price, :quantity, :sku, :unshippable, :updated_at
end
