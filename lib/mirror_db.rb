# Gem files
[:version, :string, :hash, :new, :install, :reflect, :helpers].each { |lib| require "mirror-db/#{lib}" }

module MirrorDB
  # If true the mirror wont generate custom fk,pk & table references
  @rails_pattern

  def rails_pattern
    @rails_pattern
  end

  def rails_pattern=rails_pattern
    @rails_pattern=rails_pattern
  end
end
