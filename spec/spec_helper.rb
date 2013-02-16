require 'rspec'
require 'rack/test'
require 'rack/geoip'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

class BasicRackApp
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, ['Hello World']]
  end
end
