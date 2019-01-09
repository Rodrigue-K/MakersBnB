ENV['RACK_ENV'] = 'development'

require 'pry'
require 'sinata/base'
require '.config/data_mapper'

class MakersBnB < Sinatra::Base
  enable :sessions
  enable :method_override

  get '/' do
    erb :index
  end
end
