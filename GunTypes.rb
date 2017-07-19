require './GunClass.rb'

class Pistol < Gun
	def initialize(level, rarity)
		super(level, rarity)
		@accuracy = rand(70..90)
	end
end

stuff = Pistol.new(1, "common")

stuff.stats