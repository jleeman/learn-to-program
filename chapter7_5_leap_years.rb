puts 'Start year?'
start_year = gets.chomp.to_i 
puts 'End year?'
end_year = gets.chomp.to_i
count_year = start_year

while count_year <= end_year
	if count_year%4 == 0
		if (count_year%100 != 0) || (count_year%400 == 0)
			puts count_year
		end
	end
	count_year += 1 
end