require 'yaml'

# Methods to help on the task's calls
class MirrorReflection::Helpers
  def self.gems_installation
    @it_file_folder = File.dirname(File.expand_path(__FILE__))
    YAML.load_file("#{@it_file_folder}/gem_installs.yml").it_keys_to_sym
  end
end