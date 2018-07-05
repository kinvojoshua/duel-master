require_relative 'engine'

class Deathmatch < Engine
  def start(hero1,hero2)
    attacker, defender = [hero1, hero2].shuffle
    game_logic(attacker, defender)
  end
end
