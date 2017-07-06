require 'colorize'

def common_weapons
	puts "You get a common weapon."
end

def uncommon_weapons
	puts "You get an uncommon weapon. :{".green
end

def rare_weapons
	puts "You get a rare weapon. :)".blue
end

def legendary_weapons
		puts "You get a legendary weapon, you lucky duck!".cyan
end



# rarity_pool = [common_weapons, uncommon_weapons, rare_weapons, legendary_weapons]


def rarity_pool
	rand_no = rand(0..100)
	puts rand_no
	if rand_no <= 60
		common_weapons
	elsif rand_no <= 85
		uncommon_weapons
	elsif rand_no <= 95
		rare_weapons
	elsif rand_no <= 100
		legendary_weapons
	else
		puts "Something has gone horribly wrong...".red
	end
end


10.times { rarity_pool }
