# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'confabulate/version'

Gem::Specification.new do |spec|
  spec.name          = "confabulate"
  spec.version       = Confabulate::VERSION
  spec.authors       = ["Wil"]
  spec.email         = ["github@william-burns.com"]

  spec.summary       = 'Confabulate is just a configuration abstraction layer'
  spec.description   = 'Confabulate is just a configuration abstraction layer'
  spec.homepage      = 'https://github.com/wburns84/confabulate'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest'
end
