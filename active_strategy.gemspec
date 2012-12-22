$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_strategy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_strategy"
  s.version     = ActiveStrategy::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActiveStrategy."
  s.description = "TODO: Description of ActiveStrategy."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 3.2.9'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 2.12.0'
end
