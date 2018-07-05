require_relative 'hero'

class Tank < Hero
  def initialize
    @hp = 100
    @armor = 100
    @damage = 0.5
    @name = "Winston"
  end
end
