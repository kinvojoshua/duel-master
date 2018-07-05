require_relative 'hero'

class Healer < Hero
   def initialize
    @hp = 60
    @armor = 0
    @damage = 5
    @name = "Mercy"
  end
end
