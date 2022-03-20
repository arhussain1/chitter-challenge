require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Welcome to Chitter"
  end
  
  # dont delete this
  run! if app_file == $0
end