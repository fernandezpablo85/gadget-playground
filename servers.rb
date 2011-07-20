require 'rubygems'
require 'sinatra'

get '/' do
  erb :main
end

get '/frame' do
  erb :frame
end