# How to print using puts
=begin
variables, and how to print

new line assumes new statement
or you can use semicolons to separate statements in same line

=end

x = 5
y = 10
z = x + y
puts z
x = 5; y = 10; z = x + y; puts z

first_name = "Arden"
last_name = "Zhan"

# new line before each
puts "My Name is ", first_name, last_name

# can put + between each to concatenate onto same line
puts "My Name is " + first_name + " " + last_name

# #{var} to insert var into string
# % and array
puts "First Name is #{first_name} and last name is %s" % [last_name]

z = 50
puts "Value of z is %d" % [z]
puts "Value of z is %d" % z
# %f for float

# \ used for escaping quotes \"
# \t adds a tab

# Important Note
# puts method always returns nil, it just outputs the string to the console
x = puts "hello world"
puts x