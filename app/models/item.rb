class Item < Whiplash
  # Unfortunately, headers don't inherit from the parent, so they have to be set like so:
  headers['X-API-KEY'] = Whiplash.settings['X-API-KEY']
  
  # attr_accessible :available, :created_at, :description, :exp_quantity, :height, :id, :image_file_name, :image_originator_url, :image_updated_at, :length, :media_mail, :originator, :originator_id, :packaging, :price, :quantity, :sku, :title, :updated_at, :vendor, :weight, :width
end
