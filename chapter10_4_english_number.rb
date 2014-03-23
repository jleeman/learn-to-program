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

puts english_number(18)
puts english_number(88)
puts english_number(583)
puts english_number(1500)
 