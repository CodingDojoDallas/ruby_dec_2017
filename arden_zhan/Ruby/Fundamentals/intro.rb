# JavaScript
# var arr = ["Ruby", "Is", "Life"];
# for(var i = 0; i < arr.length; i++) {
#     console.log(arr[i]);
# }

#Ruby
arr = ["I", "code", "therefore", "I", "am"]
for i in 0...arr.count
    puts arr[i]
end


#irb is used for Ruby feedback

# Welcome to the World of Objects
# everything is an object, even primitive datatypes like numbers, strings are all instances of an object

# 24 + 8 is sugar syntax for sending the :+ (8) message to our instance of the Fixnum class

# All methods work this way:
#     - when call method, send message to object
#     - when object receives message, interprets message and returns appropriate response

24.send(:+, 8)
24.+ (8)
24 + 8
# all => 32
# send method, . notation, and sugar

# Ruby syntax is meant to be very readable. Every change of Ruby makes sure to be backwards compatible with older versions, which also allows many different versions of ruby code

# The Evolution of Ruby 'tabs'
# will explain these changes, and show examples