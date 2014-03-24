a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# output array
a.each {|x| puts x}
# output only if greater than 5
a.each {|x| puts x if x > 5}
# odd numbers only
a.each {|x| puts x if x % 2 != 0}
# append 11 to end of array
a.push 11 ## or can use a << 11
# prepend 0 to beginning of array
a.unshift 0
# remove 11 and append 3 
a.pop
a << 3
# only unique elements of array but without modifying no bash
puts a.uniq
# hash in newer syntax
h = {a:1, b:2, c:3, d:4}
# hash in 1.8 syntax
h_1_8 = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# get value of b key, newer syntax creates key as symbol, need to use colon to reference
puts h.select {|k,v| k == :b}
# add e/5 key value to hash
h.store(:e, 5) # with this syntax, apparently can't use e:5, colon before e to designate key as symbol
h.delete_if {|k,v| v < 3.5}
puts h
# add an array to a hash
h.store(:f, ['one', 'two', 'three']) 
# vice versa, add a hash to an array - this actually contains an array within a hash within an array
string_arr = ['one', 'two', 'three']
string_arr << h
puts string_arr

