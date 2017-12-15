=begin
Anything in single quotes or double quotes is an instance of the class String

Using quotes is just syntax sugar, could also use class.new method
String.new("I am a string")

STRING INTERPOLATION
- cannot perform string interpolation on single quotes
- string interpolation is easier way to concat 2 objects to product string
    - even if one of objects is not a string
Examples:
"24 plus 8 is #{24 + 8}"         # => "24 plus 8 is 32"
'24 plus 8 is #{24 + 8}'         # => "24 plus 8 is #{24 + 8}"
"24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"
^ had to convert (24+8) into string if not using string interpolation
"24 plus 8 is " + (24 + 8) # => TypeError: no implicit conversion of Fixnum into String

USEFUL METHODS
some methods, can append method call with exclamation point (!)
- used when want to have method make permanent change to that instance of String

methods ending with ? mark return a Boolean value.

Exclamation point is called bang
- need to attach bang to end of method call to make change permanent, otherwise will just be copy of string


Strings are mutable in Ruby