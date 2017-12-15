# Conditionals

# elsif for else if
# end keyword after every conditional block (like in html templates)

# if not can be replaced with keyword unless
age = 12
unless age < 21
    puts "WELCOME"
else
    puts "NOPE"
end

#unless is the negated if statement, same as if not


# NIL
# In ruby, only 2 things are false: nil and false
# which means empty string returns true

#positive energy
if ""
    puts "I am positive"
end
if 0
    puts "I am positive"
end

#negative energy
unless nil
    puts "I am negative"
end
unless false
    puts "I am negative"
end

# INLINE CONDITIONALS
# we can write if/unless statements in one line
puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false