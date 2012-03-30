# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spine-rails-icanhaz/version"

Gem::Specification.new do |s|
  s.name        = "spine-rails-icanhaz"
  s.version     = Spine::Rails::Icanhaz::VERSION
  s.authors     = ["David Beveridge"]
  s.email       = ["davidjbeveridge@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Adds ICanHaz template support to the asset pipeline for use with spine-rails}
  s.description = %q{Adds ICanHaz template support to the asset pipeline for use with spine-rails}

  s.rubyforge_project = "spine-rails-icanhaz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "tilt"
  s.add_development_dependency "sprockets"
  # s.add_runtime_dependency "rest-client"
end
