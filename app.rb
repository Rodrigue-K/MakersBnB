require 'pry'
require 'sinatra/base'
require './config/data_mapper'

class MakersBnB < Sinatra::Base
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'
  
  get '/' do
    erb :index
  end
end
