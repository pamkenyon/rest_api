require 'sinatra'
require 'json'

set :port, 4567
set :hostname, :host_name


get '/hello-world' do
  content_type :json
  { :msg => 'Hello World' }.to_json
end