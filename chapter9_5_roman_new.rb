def roman_numeral num
	thousands = (num / 1000)
	hundreds = (num % 1000 / 100)
	tens = (num % 100 / 10)
	ones = (num % 10)
	numeral = []
	numeral.push 'M' * thousands

	if hundreds == 9
		numeral.push 'CM'
	elsif hundreds == 4
		numeral.push 'CD'
	else
		numeral.push 'D' * (num % 1000 / 500)
		numeral.push 'C' * (num % 500 / 100)
	end

	if tens == 9
		numeral.push 'XC'
	elsif tens == 4
		numeral.push 'XL'
	else
		numeral.push 'L' * (num % 100 / 50)
		numeral.push 'X' * (num % 50 / 10)
	end

	if ones == 9
		numeral.push 'IX'
	elsif ones == 4
		numeral.push 'IV'
	else
		numeral.push 'V' * (num % 10 / 5)
		numeral.push 'I' * (num % 5 / 1)
	end

	puts "Your converted new style roman numeral is:"
	numeral.join
end


puts "Enter a year:"
year = gets.chomp.to_i
puts (roman_numeral(year))