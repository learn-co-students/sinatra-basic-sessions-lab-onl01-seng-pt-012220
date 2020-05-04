require_relative 'config/environment'

class App < Sinatra::Base
    enable :sessions
    set :session_secret, "MunchTheShortMonster"

    get '/' do
        erb :index
    end

    post '/checkout' do
        session["item"] = "socks"
        @session = session
        #binding.pry
    end
end