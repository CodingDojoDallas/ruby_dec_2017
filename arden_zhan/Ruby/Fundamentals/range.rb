# Range
=begin

.include?(value) => true or false
.last => returns last object in range
.max => returns maximum value in range
.min => returns minimum value in range

=end

a = (1..10)
puts a.include?(15)
puts a.include?(10)

puts "last number in range is " + a.last.to_s
puts a.max
puts a.min

alphabet = ('a'..'z')
puts alphabet.to_a.shuffle.to_s