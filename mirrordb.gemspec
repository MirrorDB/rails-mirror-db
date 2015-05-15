# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mirror-db/version'

Gem::Specification.new do |spec|
  spec.name          = 'mirror-db'
  spec.version       = MirrorDB::VERSION
  spec.authors       = ['Ilton Garcia dos Santos Silveira']
  spec.email         = ['ilton_unb@hotmail.com']
  spec.summary       = 'MirrorDBFramework to easy migrate to or create a Rails projects'
  spec.description   = 'MirrorDB generate a mirror application based on the existing DataBase'
  spec.homepage      = 'http://mirrordb.github.io/rails-mirror-db/'
  spec.license       = 'MIT'

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  #================== GEMs to build it GEM, so its improve the development ==============================
  # Base GEMs to build it gem
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.4', '>= 10.4'

  # RSpec for tests
  spec.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
  # Coverage
  spec.add_development_dependency 'simplecov', '~> 0.7', '>= 0.7.1'
  # Create readable attrs values
  spec.add_development_dependency 'faker', '~> 1.4', '>= 1.4.2'

  #================== GEMs to be used when it is called on a project ====================================
  # To pretty print on console
  spec.add_dependency 'colorize', '~> 0.7.3', '>= 0.7.3'
end
