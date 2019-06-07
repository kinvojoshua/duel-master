require_relative 'hero'

class Warrior < Hero
  def initialize
    @hp = 100
    @armor = 25
    @damage = 25
    @name = "Genji"
  end
end
