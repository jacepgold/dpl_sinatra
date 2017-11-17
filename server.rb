require 'sinatra'
require 'pry'

# HTTP VERBS
# GET - fetches data from the server
# POST - creates data on the server
# PUT / PATCH - updates data on the server
# DELETE - removes data from the server

# CRUD
# CREATE - POST
# READ - GET
# UPDATE - PUT / PATCH
# DELETE - DELETE

# Root Route
get '/' do
  "Hello World!"
end 

# Example localhost:4567/hello/jake
# :name is a dynamic placeholder
# URL Params
get '/hello/:name' do
  "Hello #{params[:name]}"
end

# Example: localhost:4567/name/jake/sport/snowboarding
get '/name/:name/sport/:sport' do
  "Hello #{params[:name]}, Your sport is: #{params[:sport]}"
end

# Example: localhost:4567/code?language=ruby&experience=expert
get '/code' do
  @language = params[:language]
  @experience = params[:experience]
  erb :code
end

get '/people' do
  @name = params[:name]
  erb :people
end

get '/blocks' do
  erb :blocks
end

get '/secret' do
  erb :secret
end

post '/secret' do 
  @secret = params[:secret].reverse
  erb :secret
end
