class Order < Whiplash
  # Unfortunately, headers don't inherit from the parent, so they have to be set like so:
  headers['X-API-KEY'] = Whiplash.settings['X-API-KEY']
  
    # attr_accessible :billed, :created_at, :email, :gift, :id, :order_orig, :originator, :originator_id, :originator_notified, :public_note, :req_ship_method_code, :req_ship_method_price, :ship_3rdparty_account, :ship_3rdparty_cost, :ship_3rdparty_country, :ship_3rdparty_zip, :ship_actual_cost, :ship_method, :ship_notes, :shipped_on, :shipping_address_1, :shipping_address_2, :shipping_city, :shipping_company, :shipping_country, :shipping_name, :shipping_phone, :shipping_state, :shipping_zip, :status, :tracking, :tracking_sent, :updated_at
end
