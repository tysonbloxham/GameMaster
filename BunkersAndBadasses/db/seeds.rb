3.times do |character|
	Character.create!(character_name: "Character #{character + 1}", level: (character + 1), experience: 40 * (character + 1), health: 100, action_points: 10, badass_points: 10, evasion: 60, character_class: "Gunzerker", current_health: 80)
end

puts "3 characters created!"