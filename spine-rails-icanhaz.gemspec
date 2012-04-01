$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spine-rails-icanhaz/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spine-rails-icanhaz"
  s.version     = SpineRailsIcanhaz::VERSION
  s.authors     = ['David Beveridge']
  s.email       = ['davidjbeveridge@gmail.com']
  s.homepage    = "http://davidbeveridge.net"
  s.summary     = "ICanHaz support for spine-rails"
  s.description = "ICanHaz support for spine-rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "rspec"
  s.add_dependency "tilt"
  s.add_dependency "spine-rails"

  s.add_development_dependency "sqlite3"
end
