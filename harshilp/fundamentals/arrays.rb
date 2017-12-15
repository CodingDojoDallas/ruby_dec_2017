test = [1,2,3,4,5,6]
test2 = ['yo', 'hi', 'sup']

puts test.at(0)
puts test2.fetch(0)
test.delete(5)
puts test
test2.reverse!
puts test2
puts test.length
puts test2.sort!
puts test.slice(2,4)
puts test.shuffle
puts test2.join(' ')
test.insert(6,10)
puts test
puts test.values_at(2,3)
