# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orion/version'

Gem::Specification.new do |spec|
  spec.name          = "orion"
  spec.version       = Orion::VERSION
  spec.authors       = ["Ken Ebling"]
  spec.email         = ["kenebling@gmail.com"]

  spec.summary       = %q{Ruby library for Orion}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_runtime_dependency "activesupport", "~> 5"

  spec.add_development_dependency "bundler", ">= 1.15"
  spec.add_development_dependency "rake", "~> 12.3.0"
  spec.add_development_dependency "rspec", "~> 3.7"
end
