require_relative 'hero'

class Mage < Hero
  def initialize
    @hp = 40
    @armor = 0
    @damage = 100
    @name = "Mei"
  end
end
