require 'rubygems'
require 'sinatra/base'

class Host < Sinatra::Base

  set :port, 8080

  get '/' do
    erb :host
  end
end

class Guest < Sinatra::Base

  set :port, 8081

  get '/' do
    erb :guest
  end
end

Thread.new {
  Guest.run!  
}
sleep(1) # Wait for guest to load.
Host.run!