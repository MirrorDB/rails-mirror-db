class MirrorReflection::Install
  def self.task terminal_params
    # if terminal_params.nil? it means that the Dev generated the rails & is running by this step
    puts 'mirror:install called'
  end
end