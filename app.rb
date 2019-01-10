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

  get '/profile' do
    if signed_in?
      erb :profile
    else
      redirect '/signin'
    end
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    user = User.create(email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect '/profile'
  end

  get '/signin' do
    erb :signin
  end

  post '/signin' do
    user = User.authenticate(params[:email], params[:password])

    if user
      session[:user_id] = user.id
      redirect '/profile'
    else
      redirect '/'
    end
  end

  delete '/signin' do
    session.delete(:user_id)
    redirect '/'
  end

  private

  def signed_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= User.get(session[:user_id])
  end
end
