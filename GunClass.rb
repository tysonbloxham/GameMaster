class Gun
	@@id = 0
	def initialize (level, rarity)
		@level = level

		@rarity = rarity

		@rarity_mult = {
			"common" => 1,
			"uncommon" => 1.2,
			"rare" => 1.5
		}

		@damage = ((rand(50..100) * @level) * @rarity_mult[@rarity] )
		@accuracy = rand(40..90)
		@range = 60
		@rate = 5

		@manufacturer = ["Torgue", "Vladof", "Jacobs", "Dahl", "Hyperion", "Maliwan", "Tediore"].sample
		@elemental_damage = 0
		@element = "None"

		case @manufacturer
		when "Maliwan"
			@elemental_damage = ((rand(100..200) * @level) * @rarity_mult[@rarity] )
			@element = ["slag", "fire", "corrosive"].sample
		when "Torgue"
			@elemental_damage = ((rand(10..20) * @level) * @rarity_mult[@rarity] )
			@element = "explosive"
			@rate = 3
		when "Vladof"
			@rate = 7			
		when "Jacobs"
			@damage = ((rand(80..120) * @level) * @rarity_mult[@rarity] )
			@accuracy = rand(80..100)
		end
		puts "I ascend!"
		@@id += 1
	end

	def stats
		puts "id: #{@@id}"
		puts "level: #{@level}"
		puts "rarity: #{@rarity}"
		puts "rarity multiplier: #{@rarity_mult[@rarity]}"

		puts "damage: #{@damage}"
		puts "accuracy: #{@accuracy}"
		puts "range: #{@range}"
		puts "rate of fire: #{@rate}"

		puts "manufacturer: #{@manufacturer}"
		puts "elemental damage: #{@elemental_damage}"
		puts "element: #{@element}"
	end
end


# thing = Gun.new(1, "common")
# thing.stats

# thing = Gun.new(1, "uncommon")
# thing.stats

# thing = Gun.new(1, "rare")
# thing.stats