# Iterators

# .any
# .any? { |obj| block } => true or false
a = ["ant", "bear", "cat"]
puts a.any? { |word| word.length >= 3}

# .each
# calls block once for each element in ruby self, passing that element as a block parameter.
a.each { |word| print word, "--"}
# => ant--bear--cat--

# .collect { |obj| block }
# returns a new array with the results of running block once for every element in enum
(1..4).collect { |i| i*i }
# => [1, 4, 9, 16]
(1..4).collect { "cat" }
# => ["cat", "cat", "cat", "cat"]

# .detect/.find
# returns the first for which block is not false.
(1..10).detect { |i| i % 5 == 0 and i % 7 == 0 }
# => nil
(1..100).detect { |i| i % 5 == 0 and i % 7 == 0 }
# => 35

# .find_all { |obj| block } or .select { |obj| block }
# returns an array containing all elements of enum for which block is not false
(1..10).find_all { |i| i % 3 == 0 }
# => [3, 6, 9]

# .reject { |obj| block }
# opposite of find_all
(1..10).reject { |i| i % 3 == 0 }
# => [1, 2, 4, 5, 7, 8, 10]

# .upto(limit)
# iterates block up to the int number
5.upto(10) { |i| print i, " " }
# => 5 6 7 8 9 10