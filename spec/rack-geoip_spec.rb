require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RackGeoip" do
  def app
    app = Rack::Builder.new {
      use Rack::Geoip, :path => '/geocode/lookup', :db => File.dirname(__FILE__)+'/../data/GeoLiteCity.dat'
      run BasicRackApp.new
    }
  end

  # This makes sure the middleware doesn't get in the way of normal requests
  it "says hello" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'Hello World'
  end
  
  # This makes sure that the middleware will return a 404 with some suggested usage
  # when the request is malformed
  it 'should return 404 when a geocode lookup request has malformed parameters' do
    get '/geocode/lookup'
    last_response.status.should == 404
    last_response.body.should == 'Example usage: http://example.org/geocode/lookup?ip=8.8.8.8'
  end
  
  # This makes sure that the response is JSON parse-able
  it 'should return some json when a geocode lookup works' do
    get '/geocode/lookup?ip=8.8.8.8'
    last_response.should be_ok
    json = JSON.parse(last_response.body)
    json.class.should == Hash
  end
  
  # This tests the actual geocode lookup
  it 'should return the city Mountain View when the provided IP lookup is for a googleplex' do
    get '/geocode/lookup?ip=8.8.8.8'
    json = JSON.parse(last_response.body)
    json['city'].should == 'Mountain View'
  end
end
