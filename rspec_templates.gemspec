# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_templates/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_templates"
  spec.version       = RspecTemplates::VERSION
  spec.authors       = ["Koen Punt"]
  spec.email         = ["koen@fetch.nl"]

  spec.summary       = %q{RSpec templates with Rails 5 support}
  spec.description   = %q{Differentiate between regular and api-only applications, and make some deprecation warnings disappear}
  spec.homepage      = "https://github.com/fetch/rspec-templates"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
