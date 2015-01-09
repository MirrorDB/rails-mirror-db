# Gem files
[:version, :string, :new, :install, :scaffold].each { |lib| require "mirror_reflection/#{lib}" }

module MirrorReflection
end
