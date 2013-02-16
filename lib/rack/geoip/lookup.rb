require 'geoip_city'
require 'json'

module Rack::Geoip
  # Implements Rack's middleware interface and provides the geoip
  # lookup service
  class Lookup
    DEFAULT =  {:path => '/geoip/lookup', :db => 'GeoLiteCity.dat', :db_lookup => :memory}

    def initialize(app, options={})
      @app, @options = app, DEFAULT.merge(options)
      @db = GeoIPCity::Database.new(@options[:db], @options[:db_lookup])
    end

    def call(env)
      dup._call(env)
    end

    def _call(env)
      if env['PATH_INFO'] == @options[:path]
        request = Rack::Request.new(env)
        if request.params['ip'] && result=@db.look_up(request.params['ip'])
          [200, {'Content-Type' => 'application/json'}, [result.to_json]]
        else
          [404, {'Content-Type' => 'text/plain'}, ["Example usage: #{env['rack.url_scheme']}://#{env['HTTP_HOST']}#{env['PATH_INFO']}?ip=8.8.8.8"]]
        end
      else
        @app.call(env)
      end
    end
  end
end
