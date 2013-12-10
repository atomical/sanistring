# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sanistring/version'

Gem::Specification.new do |spec|
  spec.name          = 'sanistring'
  spec.version       = Sanistring::VERSION
  spec.authors       = ['Adam Hallett']
  spec.email         = ['adam.t.hallett@gmail.com']
  spec.description   = %q{Sanitize strings by whitelist and character replacement.}
  spec.summary       = %q{Sanitize strings by whitelist and character replacement.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'debugger'
  spec.add_development_dependency 'rspec'
end
