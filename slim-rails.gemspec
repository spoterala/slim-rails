lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "slim-rails/version"

Gem::Specification.new do |spec|
  spec.name = "slim-rails"
  spec.version = Slim::Rails::VERSION
  spec.authors = ["Leonardo Almeida", "Janusz Mordarski"]
  spec.email = ["lalmeida08@gmail.com", "janusz.m@gmail.com"]

  spec.summary = "Slim templates generator for Rails"
  spec.description = "Provides the generator settings required for Rails to use Slim"
  spec.homepage = "https://github.com/slim-template/slim-rails"
  spec.license = "MIT"

  spec.files = Dir["{lib}/**/*", "README.md", "CHANGELOG.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"

  spec.add_runtime_dependency "actionpack", [">= 3.1"]
  spec.add_runtime_dependency "railties", [">= 3.1"]
  spec.add_runtime_dependency "slim", [">= 3.0", "< 8"]

  spec.add_development_dependency "sprockets-rails"
  spec.add_development_dependency "slim_lint", "~> 0.21.0"
  spec.add_development_dependency "rocco"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "actionmailer", [">= 3.1"]
  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "standardrb"
end
