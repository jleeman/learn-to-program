puts 'What\'s your first name?'
first_name = gets.chomp.length.to_i
puts 'What\'s your middle name?'
middle_name = gets.chomp.length.to_i
puts 'What\'s your last name?'
last_name = gets.chomp.length.to_i
char_total = first_name + middle_name + last_name
puts "Your name has #{char_total} letters!"