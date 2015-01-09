require 'bundler/setup'
require './spec/helpers'

Bundler.setup

require 'simplecov'
SimpleCov.start do
end

# and any other gems you need
require 'mirror_reflection'
require 'faker'

RSpec.configure do |c|
  # some (optional) config here
  c.include Helpers
end