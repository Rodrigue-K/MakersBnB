require 'data_mapper'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, Text
  property :price, Integer
  property :description, Text
end
