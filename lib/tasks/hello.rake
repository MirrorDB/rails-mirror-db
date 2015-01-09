require 'colorize'

namespace :mirror do
  desc "Generate the rails project (mirror:new)"
  task :new do
    puts 'Hello'.colorize(:light_blue)
  end
end