class Gun
	@@id = 0
	def initialize (level, rarity)
		@level = level
		@type ||= "Gun"

		@rarity = rarity

		@rarity_mult = {
			"common" => 1,
			"uncommon" => 1.2,
			"rare" => 1.5
		}

		@damage ||= ((rand(50..100) * @level) * @rarity_mult[@rarity] ).floor
		@pellet_count ||= 1
		@accuracy ||= rand(40..80)
		@range ||= 60
		@rate ||= 5

		# After testing is done, be sure to remove the condidtional assignment from @manufacturer
		@manufacturer ||= ["Torgue", "Vladof", "Jacobs", "Dahl", "Hyperion", "Maliwan", "Tediore"].sample
		@elemental_damage = 0
		@element = "None"

		case @manufacturer
		when "Maliwan"
			@elemental_damage = ((rand(20..50) * @level) * @rarity_mult[@rarity] ).floor
			@element = ["slag", "fire", "corrosive"].sample
		when "Torgue"
			@elemental_damage = ((rand(10..20) * @level) * @rarity_mult[@rarity] ).floor
			@element = "explosive"
			@rate -= 2
		when "Vladof"
			@rate += 2			
		when "Jacobs"
			@damage = (@damage * 1.2).floor
			@accuracy = (@accuracy * 1.1).floor
		when "Hyperion"
			@accuracy = (@accuracy / 1.4).floor
		end
		puts "I ascend!"
		@@id += 1
	end

	def stats
		puts "id: #{@@id}"
		puts "level: #{@level}"
		puts "type: #{@type}"
		puts "rarity: #{@rarity}"
		puts "rarity multiplier: #{@rarity_mult[@rarity]}"

		puts "damage: #{@damage}"
		puts "pellet count: #{@pellet_count}"
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