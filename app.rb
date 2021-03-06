require 'pry'
require 'sinatra/base'
require './config/data_mapper'

class MakersBnB < Sinatra::Base
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'

  get '/' do
    @spaces = Space.all
    erb :index
  end

  post '/' do
    space = Space.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      available_from: params[:available_from],
      available_to: params[:available_to]
    )

    dates = space.make_dates(space.available_from, space.available_to)
    dates.each do |date|
      Availability.create(
        date: date,
        space_id: space.id
      )
    end

    redirect '/'
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
      redirect '/signin'
    end
  end

  delete '/signin' do
    session.delete(:user_id)
    redirect '/'
  end

  get '/space/:id' do
    @space = Space.get(params[:id])
    @dates = Availability.all
    erb :space
  end

  private

  def signed_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= User.get(session[:user_id])
  end
end
