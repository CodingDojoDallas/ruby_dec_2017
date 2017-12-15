# Hashes
# h = {:first_name => "Coding", :last_name => "Dojo"}
h = { first_name: "Coding", last_name: "Dojo" }
h.delete :last_name
puts h
puts h.empty?
puts h.has_key?(:first_name)
puts h.has_value?("Coding")

#Keyword Arguments
# basically same as regular paramenters except default vars values are defined with : instead of =
# cleaner way to use hash as argument