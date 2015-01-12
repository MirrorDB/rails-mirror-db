require 'colorize'
module Mirror
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "It automatically create the Mirror initializers for rails app config"
      def copy_initializer
        # Add mirror.rake FILE
        template "mirror.rake", "lib/tasks/mirror.rake"
        puts 'Now the mirror tasks were added & you can run: rake mirror:reflect'.colorize(:light_green)

        # Edit the Gemfile FILE
        puts 'Updating your gemfile'.colorize(:light_blue)
        MirrorReflection::Helpers.append_gemfile
      end
    end
  end
end