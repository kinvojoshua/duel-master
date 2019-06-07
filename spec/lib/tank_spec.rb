require 'spec_helper'
require_relative '../../lib/tank'

describe Tank do
  describe "#initialize" do
    it "returns warrior specifications" do
      w = Tank.new
      expect(w.hp).to eq 100
      expect(w.armor).to eq 100
      expect(w.damage).to eq 0.5
      expect(w.name).to eq "Winston"
    end
  end
end
