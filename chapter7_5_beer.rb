num_beers = 99

while num_beers > 0
	puts "#{num_beers} bottles of beer on the wall, #{num_beers} bottles of beer..."
	puts "Take one down, pass it around..."
	num_beers = num_beers - 1
	if num_beers == 0	
		puts "No more bottles of beer on the wall!"
	else
		puts "#{num_beers} bottles of beer on the wall..."
	end
end
