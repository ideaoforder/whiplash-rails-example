class Whiplash < ActiveResource::Base
  class_attribute :settings
  self.settings = {'X-API-KEY' => 'XXXXXXXXX' }
  self.site = 'http://localhost:3000/api/'
  self.format = :json
end
  
  