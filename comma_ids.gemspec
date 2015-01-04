# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'comma_ids/version'

Gem::Specification.new do |spec|
  spec.name          = "comma_ids"
  spec.version       = CommaIds::VERSION
  spec.authors       = ["炜哥(David Zhang)"]
  spec.email         = ["david.shejio@gmail.com"]
  spec.summary       = %q{summary: comma_ids}
  spec.description   = %q{description: comma_ids}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
