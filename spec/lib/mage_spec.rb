require 'spec_helper'
require_relative '../../lib/mage'

describe Mage do
  describe "#initialize" do
    it "returns warrior specifications" do
      w = Mage.new
      expect(w.hp).to eq 40
      expect(w.armor).to eq 0
      expect(w.damage).to eq 100
      expect(w.name).to eq "Mei"
    end
  end
end
