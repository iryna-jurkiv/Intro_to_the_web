require 'sinatra'
set :session_secret, 'super secret'
get '/cat' do
  @name = ["Amigo","Oscar","Viking"].sample
    erb(:index)
end
get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
