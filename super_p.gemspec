# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'super_p/version'

Gem::Specification.new do |spec|
  spec.name          = "super_p"
  spec.version       = SuperP::VERSION
  spec.authors       = ["jugyo"]
  spec.email         = ["jugyo.org@gmail.com"]
  spec.description   = %q{The super p}
  spec.summary       = %q{The super p}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
