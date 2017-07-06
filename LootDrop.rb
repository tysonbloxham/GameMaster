require 'colorize'

@weapon_type = ["pistol", "smg", "assault rifle", "rocket launcher", "shotgun", "sniper rifle"]



def common_items
	common_guns = ["Jacobs", "Dahl"]
	puts "You found a common #{common_guns.sample} #{@weapon_type.sample}."
end

def uncommon_items
	uncommon_guns = ["Torgue", "Vladof", "Jacobs", "Dahl"]
	puts "You found an uncommon #{uncommon_guns.sample} #{@weapon_type.sample}.".green
end

def rare_items
	rare_guns = ["Torgue", "Vladof", "Jacobs", "Dahl", "Maliwan", "Tediore"]
	puts "You found a rare #{rare_guns.sample} #{@weapon_type.sample}.".blue
end

def legendary_items
		legendary_guns = ["Conference Call", "Hellfire", "Maggie"]
		puts "You found a #{legendary_guns.sample}, you lucky duck!".cyan
end


def rarity_pool
	rand_num = rand(0..100)
	puts rand_num
	if rand_num <= 50
		common_items
	elsif rand_num <= 80
		uncommon_items
	elsif rand_num <= 95
		rare_items
	elsif rand_num <= 100
		legendary_items
	else
		puts "Something has gone horribly wrong...".red
	end
end


10.times { rarity_pool }
