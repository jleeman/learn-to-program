def shuffle arr
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

mp3s = shuffle(Dir['/users/joshleeman/music/itunes/iTunes\ Music/**/*.{MP3,mp3}'])

File.open 'playlist.m3u', 'w' do |f|
	mp3s.each do |mp3|
		f.write mp3+"\n"
	end
end

