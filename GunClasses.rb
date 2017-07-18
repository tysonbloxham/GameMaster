class Gun
	def initialize (level)
		@level = level
		@damage = (rand(60..100) * @level)
		@accuracy = rand (70..90)
		@range = 60
		@rate = 5

		@manufacturer = ["Torgue", "Vladof", "Jacobs", "Dahl", "Maliwan", "Tediore"].sample
		@elemental_damage = 0
		@element = "None"

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

	def shooting
		puts "damage: #{@damage}"
		puts "accuracy: #{@accuracy}"
		puts "range: #{@range}"
		puts "rate: #{@rate}"
	end

	def elemental_effect
		puts "manufacturer: #{@manufacturer}"
		puts "elemental damage: #{@elemental_damage}"
		puts "element: #{@element}"
	end
end

thing = Gun.new(1)

thing.shooting
puts ""
thing.elemental_effect