class Gun
		@@id = 0
	def initialize (level, rarity)
		@level = level

		@rarity = rarity
		# Possibly implement a rarity hash which takes rarity names and maps them out to a multiplier which will be applied on top of the level multiplier

		@damage = (rand(50..100) * @level)
		@accuracy = rand (50..90)
		@range = 60
		@rate = 5

		@manufacturer = ["Torgue", "Vladof", "Jacobs", "Dahl", "Hyperion", "Maliwan", "Tediore"].sample
		@elemental_damage = 0
		@element = "None"
		@@id += 1

		case @manufacturer
		when "Maliwan"
			@elemental_damage = (rand(100..200) * @level)
			@element = ["slag", "fire", "corrosive"].sample
		when "Torgue"
			@elemental_damage = (rand(10..20) * @level)
			@element = "explosive"
			@rate = 3
		when "Vladof"
			@rate = 7			
		when "Jacobs"
			@damage = (rand(80..120) * @level)
			@accuracy = rand(80..100)
		end
		puts "I ascend!"
	end

	def stats
		puts "id: #{@@id}"
		puts "level: #{@level}"
		puts "rarity: #{@rarity}"

		puts "damage: #{@damage}"
		puts "accuracy: #{@accuracy}"
		puts "range: #{@range}"
		puts "rate: #{@rate}"

		puts "manufacturer: #{@manufacturer}"
		puts "elemental damage: #{@elemental_damage}"
		puts "element: #{@element}"
	end
end

# thing = Gu n.new(1, "uncommon")

# thing.shooting
# puts ""
# thing.elemental_effect