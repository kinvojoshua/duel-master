require 'spec_helper'
require_relative '../../lib/healer'

describe Healer do
  describe "#initialize" do
    it "returns warrior specifications" do
      w = Healer.new
      expect(w.hp).to eq 60
      expect(w.armor).to eq 0
      expect(w.damage).to eq 5
      expect(w.name).to eq "Mercy"
    end
  end
end
