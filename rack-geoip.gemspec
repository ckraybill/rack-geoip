# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rack/geoip/version'

Gem::Specification.new do |s|
  s.name          = "rack-geoip"
  s.version       = Rack::Geoip::VERSION
  s.authors       = ["Chris Kraybill"]
  s.email         = ["ckraybill@gmail.com"]
  s.description   = %q{A rack middleware component that handles simple geoip lookups.}
  s.summary       = %q{A rack middleware component that handles simple geoip lookups.}
  s.homepage      = %q{http://github.com/ckraybill/rack-geoip}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_dependency 'rack'
  s.add_dependency 'geoip_city19', '>= 2.0.2'
  s.add_dependency 'json'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rack-test'
end
