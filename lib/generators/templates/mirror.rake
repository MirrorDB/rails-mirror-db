require 'colorize'
require 'mirror_reflection'

namespace :mirror do
  desc "Generate the rails project (mirror:new)"
  task :new do
    puts 'mirror:new task started'.colorize(:light_green)
    MirrorReflection::New.task ARGV
  end

  desc "Generate rakes & Gemfile. & run the rails g :install for the gems which need it"
  task :install do
    puts 'mirror:install task started'.colorize(:light_green)
    MirrorReflection::Install.task
  end

  desc "Generate the scaffolds based on the DataBase models"
  task :reflect do
    puts 'mirror:reflect task started'.colorize(:light_green)
    MirrorReflection::Reflect.task
  end
end