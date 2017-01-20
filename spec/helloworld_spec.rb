ENV['RACK_ENV'] = 'test'

require_relative '../src/hello_world.rb'
require 'rspec'
require 'rack/test'

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/hello-world'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello World')
  end
end