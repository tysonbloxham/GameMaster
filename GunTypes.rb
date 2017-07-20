require './GunClass.rb'

class Pistol < Gun
	def initialize(level, rarity)
		@accuracy = rand(70..90)
		@type = "Pistol"
		super(level, rarity)
	end
end

class Sniper < Gun
	def initialize(level, rarity)
		@accuracy = rand(80..90)
		@range = 120
		@type = "Sniper"
		@rate = 3
		super(level, rarity)
	end
end

class Shotgun < Gun
	def initialize(level, rarity)
		@pellet_count = rand(4..14)
		@accuracy = rand(40..70)
		@range = 30
		@rate = 3
		super(level, rarity)
		@damage = ((rand(1..20) * @level) * @rarity_mult[@rarity] ).floor
	end
end

class Smg < Gun
	def initialize(level, rarity)
		@rate = 5

		super(level, rarity)		
	end
end



class Testing < Gun
	def initialize(level, rarity)
		@accuracy = 25
		@manufacturer = "Torgue"
		super(level, rarity)
	end
end


stuff = Testing.new(1, "rare")

stuff.stats