# Names
a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

=begin
Create a ruby method that goes over each name in the names array and prints something like below.

You have 5 names in the 'names' array
The name is 'Michael Choi'
The name is 'John Doe'
The name is 'Jane Doe'
The name is 'James Smith'
The name is 'Jennifer Smith'
=end

def names(hash)
    puts "You have #{hash.length} names in the 'names' array" #figure out how to print name of variable later
    hash.each { |i| puts "The name is '#{i[:first_name]} #{i[:last_name]}'"}
end
names(names)