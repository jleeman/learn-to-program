def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if reply == 'yes'
			return true
		end 
		if reply == 'no'
			return false
		end
		puts 'Please answer yes or no.'
	end
end

tacos_answer = ask 'Do you like eating tacos?'
burritos_answer = ask 'Do you like eating burritos?'
bed_answer = ask 'Do you wet the bed?'

puts tacos_answer
puts burritos_answer
puts bed_answer