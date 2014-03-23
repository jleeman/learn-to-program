def english_number number
	if number < 0
		return 'Please enter that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''
	ones_place = 	['one', 			'two', 			'three', 
								 'four', 			'five', 		'six', 
								 'seven', 		'eight', 		'nine']
	tens_place = 	['ten', 			'twenty', 	'thirty', 
								 'fourty', 		'fifty', 		'sixty', 
								 'seventy',		'eighty', 	'ninety']
	teenagers = 	['eleven', 		'twelve', 	'thirteen', 
								 'fourteen',	'fifteeen', 'sixteen', 
								 'seventeen',	'eighteen', 'nineteen']
	left = number
	
	write = left / 1000000 # how many millions in the number?
	left = left - (write * 1000000) # subtract the millions

	if write > 0
		millions = english_number write # use recursion to return millions as word
		num_string = num_string + millions + ' million' # write how many millions to string
		if left > 0 
			num_string = num_string + ' ' # space between millions and thousands
		end 
	end

	write = left / 1000 # how many thousands in the number?
	left = left - (write * 1000) # subtract the thousands

	if write > 0
		thousands = english_number write # use recursion to return thousands as word
		num_string = num_string + thousands + ' thousand' # write how many thousands to string
		if left > 0 
			num_string = num_string + ' ' # space between thousands and hundreds
		end 
	end

	write = left / 100 # how many hundreds in the number?
	left = left - (write * 100) # subtract the hundreds
	
	if write > 0
		hundreds = english_number write # recursion happens here, since it's a single digit at this point, will return one through nine
		num_string = num_string + hundreds + ' hundred' # writes how many hundreds to string
		if left > 0
			num_string = num_string + ' ' # space between hundreds and tens
		end
	end

	write = left / 10 # how many tens?
	left = left - (write * 10) # subtract the tens
	if write > 0
		if ((write == 1) && (left > 0)) # have to make exception for teenagers
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1] # writing tens place twenty thirty etc
		end
		if left > 0
			num_string = num_string + ' ' # space between tens and ones
		end
	end

	write  = left # how many ones?
	left = 0 # subtract the ones

	if write > 0
		num_string = num_string + ones_place[write-1]
	end
	num_string # return the english number string
end

def sing_beers number
	while number > 0
		num_beers_english = english_number number
		puts "#{num_beers_english} bottles of beer on the wall, #{num_beers_english} bottles of beer..."
		puts "Take one down, pass it around..."
		number -= 1
		one_less_beer = english_number number
		puts "#{one_less_beer} bottles of beer on the wall!"
		if number == 0	
			puts "No more bottles of beer on the wall!"
		end
	end
end

sing_beers(9999)

 