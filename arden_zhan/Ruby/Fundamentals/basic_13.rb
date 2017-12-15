# Basic 13

# Print 1 - 255
# (1..255).each { |i| puts i }

# Print odd numbers between 1 - 255
# (1..255).each { |i| puts i if i.odd? }

# Print Sum
# sum = 0
# (0..255).each { |i| puts "New number: #{i} Sum: #{sum += i}" }

# Iterating through an array
# [1,3,5,7,9,13].each { |i| puts i }

# Find Max
# def findMax arr
#     puts arr.max
# end
# findMax [-3, -5, -7]

# Get Average
# def getAvg arr
#     puts "Average: " + (arr.reduce(:+) / arr.length.to_f).to_s
# end
# getAvg [2, 11, 3]

# Array with Odd Numbers
# y = []
# (1..255).each { |i| y << i if i.odd? }
# puts y.to_s

# Greater Than Y
# arr = [1,3,5,7]
# y = 3
# def greaterY(arr, y)
#     return arr.count { |i| i > y }
# end
# puts greaterY(arr, y)

# Square the values
# x = [1, 5, 10, -2]
# x.collect! { |i| i*i }
# puts x

# Eliminate Negative Numbers
# x = [1, 5, 10, -2]
# puts x.each_index { |i| x[i] = 0 if x[i] < 0 }

# Max, Min, and Average
# x = [1, 5, 10, -2]
# hash = { max: x.max, min: x.min, avg: x.reduce(:+) / x.length.to_f }
# puts hash

# Shifting the Values in the Array
# x = [1, 5, 10, 7, -2]
# x.rotate!(1)[x.length-1] = 0
# puts x

# Number to String
x = [-1, -3, 2]
puts x.each_index { |i| x[i] = "Dojo" if x[i] < 0 }