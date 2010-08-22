require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rack-geoip"
    gem.summary = %Q{A rack middleware component that handles simple geoip lookups.}
    gem.description = %Q{A rack middleware component that handles simple geoip lookups.}
    gem.email = "ckraybill@gmail.com"
    gem.homepage = "http://github.com/ckraybill/rack-geoip"
    gem.authors = ["Chris Kraybill"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency "geoip_city"
    gem.add_dependency "json"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rack-geoip #{version}"
  rdoc.rdoc_files.include('README*','COPYING')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include('TODO')
end
