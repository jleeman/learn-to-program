def roman_numeral num
	numeral = []
	numeral.push 'M' * (num / 1000)
	numeral.push 'D' * (num % 1000 / 500)
	numeral.push 'C' * (num % 500 / 100)
	numeral.push 'L' * (num % 100 / 50)
	numeral.push 'X' * (num % 50 / 10)
	numeral.push 'V' * (num % 10 / 5)
	numeral.push 'I' * (num % 5 / 1)
	puts "Your converted roman numeral is:"
	numeral.join
end

puts "Enter a year:"
year = gets.chomp.to_i
puts (roman_numeral(year))