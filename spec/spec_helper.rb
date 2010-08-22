$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'json'
require 'rack-geoip'
require 'spec'
require 'spec/autorun'
require 'rack/test'

Spec::Runner.configure do |config|
  config.include Rack::Test::Methods
end

class BasicRackApp
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, 'Hello World']
  end
end