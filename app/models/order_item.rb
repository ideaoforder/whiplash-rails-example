class OrderItem < Whiplash
  # Unfortunately, headers don't inherit from the parent, so they have to be set like so:
  headers['X-API-KEY'] = Whiplash.settings['X-API-KEY']
  
  #attr_accessible :available, :created_at, :description, :id, :item_id, :order_id, :originator_id, :packaging, :packed, :picked, :price, :quantity, :sku, :unshippable, :updated_at
end
