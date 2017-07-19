require './GunClass.rb'

class Pistol < Gun
	def initialize(level, rarity)
		super(level, rarity)
		@accuracy = rand(70..90)
		@type = "Pistol"
	end
end

class Sniper < Gun
	def initialize(level, rarity)
		super(level, rarity)
		@accuracy = rand(85..100)
		@range = 120
		@type = "Sniper"
	end
end





stuff = Sniper.new(1, "common")

stuff.stats