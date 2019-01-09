ENV['RACK_ENV'] ||= 'development'

Datamapper.setup(:default, "postgres://localhost/makers_bnb_#{ENV['RACK_ENV']}")

Datamapper.finalize
