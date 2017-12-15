# 1 sum, reject array
# arr1 = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
# def one(arr)
#     puts "sum: " + arr.reduce(:+).to_s
#     return arr.find_all { |i| i > 10 }
# end
# puts one(arr1).to_s

# # 2 names array
# arr2 = ["John", "KB", "Oliver", "Corey", "Matthew", "Christopher"]
# def two(arr)
#     puts arr.shuffle
#     return arr.find_all { |i| i.length > 5 }
# end
# puts two(arr2).to_s

# 3 alphabet array
# arr3 = ('a'..'z').to_a
# def three(arr)
#     shuffled = arr.shuffle
#     puts "last: " + shuffled.last.to_s
#     puts "first: " + shuffled.first.to_s
#     puts "#{shuffled.first} is a vowel" if ['a','e','i','o','u'].include? shuffled.first
# end
# puts three(arr3)

# 4 array with 10 different numbers between 55-100
# arr4 = []
# 10.times { arr4 << rand(55..100) }
# puts arr4.to_s

# 5 expanding on 4
# arr5 = []
# 10.times { arr5 << rand(55..100) }
# puts arr5.sort!.to_s
# puts "min: " + arr5.min.to_s
# puts "max: " + arr5.max.to_s

# 6 random 5 char string
# str6 = ""
# 5.times { str6 << (65 + rand(26)).chr }
# puts str6

# 7 array with 10 random strings that are 5 chars long
arr7 = []
10.times do
    str = ""
    5.times { str << (65 + rand(26)).chr }
    arr7 << str
end
puts arr7.to_s