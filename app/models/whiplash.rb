class Whiplash < ActiveResource::Base
  class_attribute :settings
  self.settings = {'X-API-KEY' => 'Hc2BHTn3bcrwyPooyYTP' } # Shared Sandbox key for the testing environment
  self.site = 'http://testing.whiplashmerch.com/api/'
  self.format = :json
end
  
  