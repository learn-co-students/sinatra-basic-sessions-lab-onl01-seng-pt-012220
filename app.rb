require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    #just using the example from before, i know not to do this.
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session["item"] = @item

    erb :checkout
  end

end
