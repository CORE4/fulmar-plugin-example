# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fulmar/plugin/example/version'

Gem::Specification.new do |spec|
  spec.name          = 'fulmar-plugin-example'
  spec.version       = Fulmar::Plugin::Example::VERSION
  spec.authors       = ['Gerrit Visscher']
  spec.email         = ['g.visscher@core4.de']

  spec.summary       = 'Example plugin for fulmar'
  spec.description   = 'Use this gem as a basic example how to develop a plugin for fulmar. It implements the basic' +
                       'methods to create valid plugin.'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }.reject { |f| %w(console setup).include? f }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
