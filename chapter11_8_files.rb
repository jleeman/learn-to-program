# go to directory where new files will be moved
Dir.chdir '/users/joshleeman/projects/tealeaf/learn-to-program/iceland-images/batch'
# find photos to move
pic_names = Dir['/users/joshleeman/projects/tealeaf/learn-to-program/iceland-images/*.{JPG,jpg}'] 
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
end
# check to see if file exists in batch directory, exit program if it does
if File.exist?(new_name)
  puts
  puts "Sorry, can't move files here, one already exists."
  exit
else
  # rename file with new name
  File.rename name, new_name
end
# Finally, we increment the counter.
pic_number = pic_number + 1
end
puts # extra line space after progress bar
puts 'Finished renaming batch files.'
