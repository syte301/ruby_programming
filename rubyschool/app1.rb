require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  erb: index
end

get '/contacts' do
  "Phone: 111222"
end