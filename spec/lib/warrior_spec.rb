require 'spec_helper'
require_relative '../../lib/warrior'

describe Warrior do
  describe "#initialize" do
    it "returns warrior specifications" do
      w = Warrior.new
      expect(w.hp).to eq 100
      expect(w.armor).to eq 25
      expect(w.damage).to eq 25
      expect(w.name).to eq "Genji"
    end
  end
end
