require 'data_mapper'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, Text
  property :price, Integer
  property :description, Text
  property :available_from, Date
  property :available_to, Date

  def make_dates(from, to)
    dates = []

    while from <= to
      dates << from
      from += 1
    end
    dates
  end
end
