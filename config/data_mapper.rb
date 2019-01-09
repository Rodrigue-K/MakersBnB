ENV['RACK_ENV'] ||= 'development'

require './lib/user'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/makers_bnb_#{ENV['RACK_ENV']}")

DataMapper.finalize
