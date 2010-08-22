require 'rack'

module Rack  #:nodoc:
  # = Rack Middleware for GEOIP Lookups
  # 
  # Rack::Geoip is intended to be a rack interface into a GeoIP database
  # provided by MaxMind (http://www.maxmind.com). See the README for
  # installation
  # 
  # == Usage
  # 
  # === Basic Usage
  # 
  #     require 'rack/geoip'
  #     use Rack::Geoip
  #     run app
  # 
  # === Using with Rails
  # 
  # Add this to your config/environment.rb
  # 
  #     config.gem 'rack-geoip'
  # 
  # And then in an initializer block
  # 
  #     config.middleware.use "Rack::Geoip",
  #       :db => 'data/GeoLiteCity.dat',
  #       :path => '/geoip/info'
  #
  # === Sample output
  #     $ curl http://localhost:9292/lookup?ip=8.8.8.8
  #     {"area_code":650,"city":"Mountain View","postal_code":"94043","country_code":"US","latitude":37.4192008972168, \
         "country_code3":"USA","longitude":-122.057403564453,"country_name":"United States","dma_code":807,"region":"CA"}
  #
  module Geoip
    autoload :Lookup, 'rack/geoip/lookup'
  
    def self.new(backend, options = {})
      Lookup.new(backend,options)
    end
  end
end