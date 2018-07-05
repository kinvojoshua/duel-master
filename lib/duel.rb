require_relative 'deathmatch'
require_relative 'turnbased'

class Duel
  def self.duel(hero1, hero2, mode)
    a = mode.new
    a.start(hero1, hero2)
  end
end
