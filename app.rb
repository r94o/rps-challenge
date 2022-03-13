require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure do
    # :nocov:
    register Sinatra::Reloader
    # :nocov:
  end

  get "/" do
    erb(:index)
  end
 

  run! if app_file == $0
end