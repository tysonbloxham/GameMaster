require 'colorize'

def common_items
	puts "You found a common item."
end

def uncommon_items
	puts "You found an uncommon item. :{".green
end

def rare_items
	puts "You found a rare item. :)".blue
end

def legendary_items
		puts "You found a legendary item, you lucky duck!".cyan
end


def rarity_pool
	rand_no = rand(0..100)
	puts rand_no
	if rand_no <= 60
		common_items
	elsif rand_no <= 85
		uncommon_items
	elsif rand_no <= 95
		rare_items
	elsif rand_no <= 100
		legendary_items
	else
		puts "Something has gone horribly wrong...".red
	end
end


10.times { rarity_pool }
