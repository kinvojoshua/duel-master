require 'spec_helper'
require_relative '../../lib/engine'

describe Engine do
  describe "#game_logic" do
    it "returns defender hp if the armor breaks" do
      w = Warrior.new
      h = Healer.new
      e = Engine.new
      e.game_logic(w,h)
      expect(h.hp).to be < Healer.new.hp
    end
  end
end

describe Engine do
  describe "#game_logic" do
    it "returns armor if the damage does not break it" do
      h = Healer.new
      t = Tank.new
      e = Engine.new
      e.game_logic(h,t)
      expect(h.hp).to be < Tank.new.armor
    end
  end
end

describe Engine do
  describe "#ultimate" do
    context "when Mage ulti proc" do
      it "returns Mage damage + 100" do
        m = Mage.new
        e = Engine.new
        damage = e.ultimate(m)
        expect(damage).to eq 200
      end
    end
  end
end

# describe Engine do
#   describe "#compute" do
#     it "returns defender hp" do
#       w = Warrior.new
#       d = w.damage
#       h = Healer.new
#       e = Engine.new
#       e.compute(w,h,d)
#       expect(d.armor).to be < Healer.new.armor
#     end
#   end
# end
