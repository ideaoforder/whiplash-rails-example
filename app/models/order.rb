class Order < Whiplash
  # Unfortunately, headers don't inherit from the parent, so they have to be set like so:
  headers['X-API-KEY'] = Whiplash.settings['X-API-KEY']  

end
