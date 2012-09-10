class Whiplash < ActiveResource::Base
  class_attribute :settings
  self.settings = {'X-API-KEY' => 'PAfPapjZKYfYeZ2B97qf' }
  self.site = 'http://localhost:3000/api/'
  self.format = :json
end
  
  