require 'spec_helper'
require_relative '../../lib/turnbased'

describe Turnbased do
  describe ".start" do
    it "if the duel proceed" do
      w = Warrior.new
      t = Tank.new
      a = Turnbased.new.start(w,t)
      expect(a).not_to be(0)
    end
  end
end
