require 'rubygems'
require 'sinatra/base'

class Host < Sinatra::Base

  set :port, 8080
  set :public, File.dirname(__FILE__) + "/public"

  get '/' do
    erb :host
  end
end

class Guest < Sinatra::Base

  set :port, 8081
  set :public, File.dirname(__FILE__) + "/public"
  
  get '/' do
    erb :guest
  end
end

Thread.new {
  Guest.run!  
}
sleep(1) # Wait for guest to load.
Host.run!