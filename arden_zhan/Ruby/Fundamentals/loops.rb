# While Loop

i = 0
num = 5
while i < num do
    puts "Inside the loop i = #{i}"
    i += 1
    break if i == 2
end

# For Loop
for i in 0..5
    puts "Value of local variable is #{i}"
    break if i == 2
end
# .. to make range


# next is also a useful method
# like continue. instead of terminating loop like break, can use next to skip to next index
for i in 0..5
    next if i == 2
    puts "Value of local variable is #{i}"
end