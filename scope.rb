arr = [1, 2, 3, 4, 5]
arr.each do |x|
  # local variable only
  do_block_variable = "I am a local variable in a do block"
  puts "#{do_block_variable} #{x}"
end
global_variable = "I am a variable outside of the do block"
puts global_variable

#throws an error at this point, no access to do_block_variable outside the do block
puts do_block_variable
