# Symbols

=begin
symbols often defined as lightweight strings. 
Every string created is an instance of the String class
When creating symbol, also instantiating from the Symbol class

Unlike strings, there can only be one UNIQUE symbol in ruby program

Symbols are immutable, so are great identifiers
Good as being used for keys in a hash

Symbol also used as keyword arguments

Symbols are faster than strings when app needs to retrieve and compare values
Symbol comparisons only need to check memory address, strings need to check if sequence of characters is same

Try to use symbols as needed instead of using strings for every occasion