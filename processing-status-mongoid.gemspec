# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "processing-status-mongoid/version"

Gem::Specification.new do |s|
  s.name        = "processing-status-mongoid"
  s.version     = ProcessingStatusMongoid::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martin Wawrusch"]
  s.email       = ["martin@wawrusch.com"]
  s.homepage    = "http://github.com/mwawrusch/processing-status-mongoid"
  s.summary     = %q{A mongoid gem that provides a means to track job progress}
  s.description = %q{Helps you to track longer running jobs and collect status information. It is independent of any background job infrastructure.}
  s.extra_rdoc_files   = ["LICENSE","README.md"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubyforge_project = "processing-status-mongoid"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "activesupport", "~> 3.0"  
  s.add_runtime_dependency "activemodel", "~> 3.0"  
  s.add_runtime_dependency "bson_ext"
  s.add_runtime_dependency "mongoid"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "rake", "~> 0.8"

  s.post_install_message=<<eos
**********************************************************************************
  Thank you for using this gem.
  
  Follow @martin_sunset on Twitter for announcements, updates and news
  https://twitter.com/martin_sunset

  To get the source go to http://github.com/mwawrusch/processing-status-mongoid

**********************************************************************************    
eos
  
  
end
