require 'rubygems'
require 'rack'
require 'rack/geoip'

class BasicRackApp
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, 'Your request did not hit the geoip lookup']
  end
end

use Rack::Geoip, :path => '/lookup', :db => 'data/GeoLiteCity.dat'

run BasicRackApp.new
