require 'colorize'
require 'colorized_string'
require './GunClasses'

@weapon_type = ["pistol", "smg", "assault rifle", "rocket launcher", "shotgun", "sniper rifle"]



def common_items (level)
	common_guns = ["Jacobs", "Dahl"]
	puts "You found a common #{common_guns.sample} #{@weapon_type.sample}."
	thing = Gun.new(level, "common")
	puts ""
	thing.stats
end

def uncommon_items (level)
	uncommon_guns = ["Torgue", "Vladof", "Jacobs", "Dahl"]
	puts "You found an uncommon #{uncommon_guns.sample} #{@weapon_type.sample}.".green
	puts ""
	thing = Gun.new(level, "uncommon")
	thing.stats
end

def rare_items (level)
	rare_guns = ["Torgue", "Vladof", "Jacobs", "Dahl", "Maliwan", "Tediore"]
	puts "You found a rare #{rare_guns.sample} #{@weapon_type.sample}.".blue
	puts ""
	thing = Gun.new(level, "rare")
	thing.stats
end

def legendary_items (level)
		legendary_guns = ["Conference Call", "Hellfire", "Maggie"]
		puts "You found a #{legendary_guns.sample}, you lucky duck!".light_red
end


def rarity_pool (level)
	rand_num = rand(0..100)
	puts rand_num
	if rand_num <= 50
		common_items (level)
	elsif rand_num <= 80
		uncommon_items (level)
	elsif rand_num <= 95
		rare_items (level)
	elsif rand_num <= 100
		legendary_items (level)
	else
		puts "Something has gone horribly wrong...".red
	end
end

1.times { rarity_pool(1) }


