require 'pry'
require 'sinatra/base'
<<<<<<< HEAD
require './config/data_mapper'
=======
require '.config/data_mapper'
>>>>>>> 9bf3d691c8214854634be16f34f364d5c1de8995

class MakersBnB < Sinatra::Base
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'
  
  get '/' do
    erb :index
  end
end
