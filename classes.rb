class Character
  attr_accessor :level, :experience, :health, :action_points, :badass_points, :evasion

  def initialize
    @level = 1
    @experience = 0
    @health = 100
    @action_points = 10
    @badass_points = 0
    @evasion = 60
  end
end

class Gunzerker < Character
  
  def initialize
    super
    @health += 20
    @evasion -= 10
  end

  def gunzerking
    puts "Look! You're holding two weapons!"
  end
end

class Assassin < Character

  def initialize
    super
    @health -= 10
    @evasion += 10
  end

  def decepti0n
    puts "Where'd ya g0?! U invisible!"
  end
end

class Siren < Character

  def initialize
    super
    @action_points += 2
  end

  def phase_lock
    puts "Shut UP!"
  end
end

class Commando < Character

  def turret
    puts "Look... I made dis"
  end

  #fighter thought process of bonus feats, gets 2 perks every other level instead of always one.

end

class Psycho < Character

  def initialize
    super
    @health += 50
    @evasion -= 25
  end

  def rampage
    puts "I'M GUNNA CUT OFF YOUR FACE AND WEAR IT AS MY NIGHTY!!!!!"
  end
end