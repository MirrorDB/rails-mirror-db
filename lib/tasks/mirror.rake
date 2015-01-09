require 'colorize'
require 'mirror_reflection'

namespace :mirror do
  desc "Generate the rails project (mirror:new)"
  task :new do
    puts 'mirror:new task started'.colorize(:light_green)
    MirrorReflection::New.task ARGV
  end
end