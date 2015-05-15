require 'colorize'
require 'mirror_db'

namespace :mirror do
  @gen_rails_project_desc = 'Generate the rails project (mirror:new)'
  desc @gen_rails_project_desc
  task :new do
    puts 'mirror:new task started'.colorize(:light_green)
    MirrorDB::New.task ARGV
  end

  @gen_rake_gemfile_desc = 'Generate rakes & Gemfile. & run the rails g :install for the gems which need it'
  desc @gen_rake_gemfile_desc
  task :install do
    puts 'mirror:install task started'.colorize(:light_green)
    MirrorDB::Install.task
  end

  @gen_scaffold_desc = 'Generate the scaffolds based on the DataBase models'
  desc @gen_scaffold_desc
  task :reflect do
    puts 'mirror:reflect task started'.colorize(:light_green)
    MirrorDB::Reflect.task
  end
end