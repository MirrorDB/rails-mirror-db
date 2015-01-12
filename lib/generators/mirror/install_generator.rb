require 'colorize'
module Mirror
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "It automatically create the Mirror initializers for rails app config"
      def copy_initializer
        # Add the files on the templates folder to the Rails App
        add_templates
        # Add the gems on the Gemfile (on this folder) to the Rails Gemfile
        update_gemfile
        # Run the bundle install to install those new gems added
        run_bundle
        # Run rails g gem:install for the gems which need it like RentS
        run_g_install
      end

      def add_templates
        # Adding .rake FILEs
        template "mirror.rake", "lib/tasks/mirror.rake"
        puts 'Now the mirror tasks were added & you can run: rake mirror:reflect'.colorize(:light_green)
      end

      def update_gemfile
        # Editing the Gemfile FILE
        puts 'Updating your gemfile'.colorize(:light_blue)
        it_file_folder = File.dirname(File.expand_path(__FILE__))
        gemfile_uri = "#{it_file_folder}/Gemfile"
        file = File.open(gemfile_uri)
        gemfile = file.read
        gemfile.gsub!(/\r\n?/, '\n')

        # Here goes it append
        begin
          organized_lines = []
          gemfile.each_line do |line|
            organized_lines.unshift line
          end

          organized_lines.each do |line|
            insert_into_file 'Gemfile', line,
                             after: "source 'https://rubygems.org'\n"
          end
        rescue Exception => e
          puts 'something went wrong while appending to the Gemfile'.colorize(:red)
          return puts e
        end

        puts 'Gemfile updated'.colorize(:light_green)
      end

      def run_bundle
        # Running the bundle install
        puts 'Running bundle install'.colorize(:light_blue)
        system('bundle install')
        puts 'bundle install executed'.colorize(:light_green)
      end

      def run_g_install

      end
    end
  end
end