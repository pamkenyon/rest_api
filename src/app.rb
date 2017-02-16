require 'sinatra'
require 'json'

set :port, 4567
set :hostname, :host_name
set :game_ip, ENV['GAME_IP']
set :game_port, ENV['GAME_PORT']

def findNextMove(board)
  # create logic to receive the next move (board), then return a move
  # board = { :board => '*********', :piece => 'x' }.to_json
  # return = { :board => '*********' }.to_json
end

get '/hello-world' do
  content_type :json
  { :msg => 'Hello World' }.to_json
end

get '/TicTacToe' do
  { :board => '*********', :piece => 'x' }.to_json
end

post '/TicTacToe/NextMove' do
  findNextMove(request.body)
end
