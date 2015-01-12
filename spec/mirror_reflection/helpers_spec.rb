require 'spec_helper'

describe MirrorReflection::Helpers do
  describe 'All gems on the .yml listed' do
    it 'should list all the gems' do
      MirrorReflection::Helpers.append_gemfile
    end
  end
end