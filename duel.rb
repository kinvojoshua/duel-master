class Duel
  
  def duel(hero1, hero2)
    number = rand(1..2)
    if number == 1 then
       attacker = hero1
       defender = hero2
    else
       attacker = hero2
       defender = hero1
    end
    puts "attacker: #{attacker}"
    puts "defender: #{defender}"
    
    puts "#{attacker.name} attacked #{defender.name}"
    damage_dealt = compute(attacker.damage, defender.hp+defender.armor)
    defender.hp = damage_dealt
    puts "#{attacker.name} dealt #{attacker.damage} to #{defender.name}"
    puts "--------Attacker--------"
    puts "#{attacker.name}"
    puts "total hp + armor: #{attacker.hp+attacker.armor}"
    puts "--------Defender--------"
    puts "#{defender.name}"
    puts "total hp + armor: #{defender.hp}"
  end
  
  private
  def compute(attacker_damage, defender_hp)
    defender_hp-attacker_damage
  end

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
