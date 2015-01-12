# Methods to help on the task's calls
class MirrorReflection::Helpers
  @templates_dir = './lib/generators/templates'

  # Read it Gemfile on templates & append it to the project Gemfile
  def self.append_gemfile
    # Read the file
    gemfile = File.open("#{@templates_dir}/Gemfile").read
    gemfile.gsub!(/\r\n?/, '\n')

    # Here goes it append
    begin
      gemfile.each_line do |line|
        insert_into_file 'Gemfile', line,
                         after: "source 'https://rubygems.org'\n"
      end
    rescue
      puts 'something went wrong while appending to the Gemfil'
    end
  end
end