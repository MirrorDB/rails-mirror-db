require 'spec_helper'

describe MirrorReflection::Sum do
  describe "xpto" do
    it 'works' do
      expect(MirrorReflection::Sum.sum 1,2).to eq 3
    end
  end
end