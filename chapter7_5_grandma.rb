bye_count = 0

puts "HI SONNY!"

while true
	answer = gets.chomp
	
	if answer == 'BYE'
		bye_count += 1
	else 
		bye_count = 0
	end
	
	if bye_count == 3
		break
	end
	
	if answer == answer.upcase
		puts "NO, NOT SINCE #{rand(1930..1950)}!"
	else
		puts 'HUH? SPEAK UP SONNY!'
	end
end
