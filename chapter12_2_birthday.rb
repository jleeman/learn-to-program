require 'pry'

puts "What year were you born?"
y = gets.chomp
puts "What month were you born?"
m = gets.chomp
puts "What day were you born?"
d = gets.chomp
birthday = Time.local(y, m, d, 11, 00)
puts "Thanks! You were born on #{birthday}. Spanking now for each birthday:"
now = Time.new
num_years =  now.year.to_i - y.to_i
while num_years != 0 
  puts "Spank #{num_years}!!!"
  num_years -= 1
end

