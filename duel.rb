module Actions

  def duel(hero1, hero2)
  
    number = rand(1..2)

    if number == 1 then
      attacker = hero1
      defender = hero2
    else
      attacker = hero2
      defender = hero1
    end

    if attacker.name == "Mei" || attacker.name == "Winston"
      mage_tank =  ultimate_chance_mage_tank()
    elsif attacker.name == "Genji" || attacker.name == "Mercy"
      warrior_healer = ultimate_chance_healer_warrior()
    end

    puts "attacker: #{attacker.name}"
    puts "defender: #{defender.name}"
    puts "#{attacker.name} attacked #{defender.name}"
    puts "ult: #{mage_tank}"
    puts "ult: #{warrior_healer}"

    if mage_tank == 2 || warrior_healer == 4 then
      ultimate(attacker)
      if attacker.name == "Mei" then
        puts "#{attacker.name}'s Ultimate(Blizzard) has been Triggered!! and gained + 100 Damage!!! "
      elsif attacker.name == "Genji" then
        puts "#{attacker.name}'s Ultimate(Dragonblade) has been Triggered!! and gained + 125 Damage!!! "
      elsif attacker.name == "Mercy" then
        puts "#{attacker.name}'s Ultimate(Ressurection) has been Triggered!! and gained + 20 Damage!!! "
      else
        puts "#{attacker.name}'s Ultimate(Primal Rage) has been Triggered!! and gained + 50 Damage!!! "
      end
    end

    compute(attacker, defender)

    puts "#{attacker.name} dealt #{attacker.damage} to #{defender.name}"
    puts "--------Attacker--------"
    puts "#{attacker.name}"
    puts "total hp: #{attacker.hp}"
    puts "total armor: #{attacker.armor}"
    puts "--------Defender--------"
    puts "#{defender.name}"
    puts "total hp #{defender.hp}"
    puts "total armor #{defender.armor} "

    if defender.hp == 0 then
      puts "#{defender.name} did not make, #{defender.name} died"
    end

  end

  def ultimate(hero)
    puts "ultimate:"
    if hero.name == "Mei" then
      hero.damage = hero.damage + 100
    elsif hero.name == "Genji" then
      hero.damage = hero.damage + 125
    elsif hero.name == "Mercy" then
      hero.damage = hero.damage + 20
    elsif hero.name == "Winston" then
      hero.damage = hero.damage + 50
    end
  end

  private
  def compute(attacker, defender)
      if defender.armor != 0 then
        defender.armor = defender.armor - attacker.damage

        if defender.armor < 0 then
	         defender.hp = defender.hp - attacker.damage
        end

      else
        defender.hp = defender.hp - attacker.damage
      end

      if defender.armor < 0
        defender.armor = 0
      end

      if defender.hp < 0 then
        defender.hp = 0
      end
  end

  def ultimate_chance_healer_warrior()
    warrior_healer = rand(1..4)
  end

  def ultimate_chance_mage_tank()
    mage_tank = rand(1..2)
  end

end

class Duel
  extend Actions
end

class Hero
  attr_accessor :hp, :armor, :damage, :name
end

class Warrior < Hero
  def initialize
    @hp = 100
    @armor = 25
    @damage = 25
    @name = "Genji"
  end
end

class Healer < Hero
   def initialize
    @hp = 60
    @armor = 0
    @damage = 5
    @name = "Mercy"
  end
end

class Mage < Hero
  def initialize
    @hp = 40
    @armor = 0
    @damage = 100
    @name = "Mei"
  end
end

class Tank < Hero
  def initialize
    @hp = 100
    @armor = 100
    @damage = 0.5
    @name = "Winston"
  end
end
