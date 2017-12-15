name = {:first_name => "harshil", :last_name => "patel"}
name.delete(:last_name)
p name
p name.empty?
p name.has_key?(:last_name)
p name.has_key?(:first_name)
p name.has_value?('patel')
p name.has_value?('harshil')
