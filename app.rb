require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/form'

class Form < Sinatra::Base
  enable :sessions
  set :port, 3000

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/welcome' do
    erb :welcome
  end

  run! if app_file == $PROGRAM_NAME
end