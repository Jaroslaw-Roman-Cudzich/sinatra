require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "hello!"
end

get '/secret' do
    "This is a secret page"
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

get '/cat-naming' do
    erb(:form)
end

post '/named-cat' do
    # p params
    @name = params[:name]
    erb(:index)
end

