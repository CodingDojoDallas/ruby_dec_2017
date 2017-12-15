# puts echoes onto console
puts "hello"
puts "Coding"
puts "Dojo"


# print does not use new line automatically; puts does
print "hello"
print "coding"


# comment
=begin
    long comment
    another comment
    =begin and =end for comment block
=end

BEGIN {
    puts "this is the begin block"
}
#puts at the beginning, implemented before all the other code

END {
    puts "this is the end block"
}
#puts at the end, code implemented last