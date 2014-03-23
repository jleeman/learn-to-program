fruit = ['Blueberries', 'apples', 'Peaches', 'pineapples', 'Raspberries']

def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |x|
		if x.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = x
		else
			still_unsorted.push x
		end
	end

	sorted.push smallest
	recursive_sort still_unsorted, sorted
end

puts (sort fruit)