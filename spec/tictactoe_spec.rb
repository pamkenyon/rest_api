ENV['RACK_ENV'] = 'test'

require_relative '../src/game.rb'
require 'rspec'
require 'rack/test'
describe 'Game App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'says hello' do
    get '/hello-world'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello World')
  end

  it 'creates a board' do
    get '/TicTacToe'
    expect(last_response).to be_ok
    expect(last_response.body).to include('board')
  end

  it 'verifies the board' do

  end

  it 'verifies the next move' do

  end

end