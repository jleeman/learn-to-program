puts 'Enter items for shopping list, when done hit enter on blank line:'
shopping_list = []

while true
	item = gets.chomp.to_s
	if item == ''
		break
	end
	shopping_list.push item
end

puts shopping_list.sort.join (', ')

