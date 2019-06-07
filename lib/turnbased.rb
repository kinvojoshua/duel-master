require_relative 'engine'

class Turnbased < Engine
  def start(hero1, hero2)
    turn = 1
    attacker, defender = [hero1, hero2].shuffle
    while turn != 6 do
      puts "---------------- Game ##{turn}--------------------"
      hp = game_logic(attacker, defender)
      turn += 1
      break if hp == 0
    end

    if hero1.hp > hero2.hp then
      puts "#{hero1.name} Won the duel"
    else
      puts "#{hero2.name} Won the duel"
    end
  end
end
