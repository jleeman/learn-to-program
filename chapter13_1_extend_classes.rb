fruit = ['blueberries', 'apples', 'peaches', 'pineapples', 'raspberries']

class Array
	def shuffle
		arr = self
		shuffled = []
		while arr.length > 0
			rand_index = rand(arr.length)
			current_index = 0
			still_to_be_shuffled = []
			arr.each do |item|
				if current_index == rand_index
					shuffled.push item
				else
					still_to_be_shuffled.push item 
				end	
				current_index += 1
			end
			arr = still_to_be_shuffled
		end
	shuffled
	end
end

shuffled = fruit.shuffle
puts shuffled