# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-geoip}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Kraybill"]
  s.date = %q{2011-01-03}
  s.description = %q{A rack middleware component that handles simple geoip lookups.}
  s.email = %q{ckraybill@gmail.com}
  s.extra_rdoc_files = [
    "README",
    "TODO"
  ]
  s.files = [
    ".document",
    "COPYING",
    "README",
    "Rakefile",
    "TODO",
    "VERSION",
    "examples/basic.ru",
    "lib/rack-geoip.rb",
    "lib/rack/geoip.rb",
    "lib/rack/geoip/lookup.rb",
    "rack-geoip.gemspec",
    "spec/rack-geoip_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/ckraybill/rack-geoip}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A rack middleware component that handles simple geoip lookups.}
  s.test_files = [
    "spec/rack-geoip_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<geoip_city>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<geoip_city>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<geoip_city>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end

