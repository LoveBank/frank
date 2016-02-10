$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "frank/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "frank"
  s.version     = Frank::VERSION
  s.authors     = ["Jared L Jennings"]
  s.email       = ["jared@jaredjennings.org"]
  s.homepage    = "https://treasury.love"
  s.summary     = "Summary of Frank."
  s.description = "Description of Frank."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "pg"
end
