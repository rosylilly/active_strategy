$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_strategy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_strategy"
  s.version     = ActiveStrategy::VERSION
  s.authors     = ["Sho Kusano"]
  s.email       = ["rosylilly@aduca.org"]
  s.homepage    = "https://github.com/rosylilly/active_strategy"
  s.summary     = "Extract the business logic from the model"
  s.description = "Extract the business logic from the model"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README"]

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 2.12.0'
end
