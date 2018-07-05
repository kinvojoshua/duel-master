require 'spec_helper'
require_relative '../../lib/deathmatch'

describe Deathmatch do
  describe ".start" do
    it "checks if the duel proceeds" do
      w = Warrior.new
      t = Tank.new
      a = Turnbased.new.start(w, t)

      if t.hp == Tank.new.hp
        expect(w.hp).to be < 100
      else
        expect(t.hp).to be < 100
      end
    end
  end
end
