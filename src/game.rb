require 'sinatra'
require 'json'

set :port, 4567
set :hostname, :host_name
set :game_ip, ENV['GAME_IP']
set :game_port, ENV['GAME_PORT']


get '/hello-world' do
  content_type :json
  { :msg => 'Hello World' }.to_json
end

get '/TicTacToe' do
  { :board => '' }.to_json
end

post '/TicTacToe/NextMove' do
  request.body
end
