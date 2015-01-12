class MirrorReflection::Install
  def self.task
    # if terminal_params.nil? it means that the Dev generated the rails & is running by this step
    system('bundle install')
    puts 'mirror:install called'

    # Run the bundle install to install those new gems added
    run_bundle
    # Run rails g gem:install for the gems which need it like RentS
    run_g_install
  end

=begin
  def run_g_install
    # TODO add to gem_installs.yml any GEM on the Gemfile which need to run rails g gem_name:install
    gems_yml = YAML.load "#{@it_file_folder}/gem_installs.yml"
    puts 'Running rails g gem_name:install'.colorize(:light_blue)
    gems = gems_yml[:gems]
    gems.each do |gem|
      system("rails g #{gem}:install")
    end
    puts 'rails g gem_name:install executed'.colorize(:light_green)
  end
=end
end