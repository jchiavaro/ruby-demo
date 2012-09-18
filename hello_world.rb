require 'haml'

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

get '/' do
  redirect '/hello'
end

get '/hello/:name' do
  "Hello, #{params[:name]} "
end

get '/hello' do
#  "Hello world, it's #{Time.now} at the server!"
  
  #session['counter'] ||= 0  
  #session['counter'] += 1
  #"You've hit this page #{session['counter']} times!"
  haml :index
end


before '/hello/*' do
  enable :sessions
end
