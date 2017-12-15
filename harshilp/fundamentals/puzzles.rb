x = [3,5,1,2,7,9,8,13,25,32]
sum = 0
for i in x
    sum = sum + i
end
puts sum
p x.select{|i| i > 10}

y = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
y.shuffle.each{|name| puts name}
p y.select{|name| name.length > 5}

abc = ("a".."z").to_a
abc.shuffle!
puts "Last #{abc.last}"
puts "First #{abc.first}"
if abc.first =~ /[aeiou]/
    puts "You found a vowel \\_(o.o)_/"
end

r = []
10.times {r.push(rand(45) + 55)}
p r
p "Sorted #{r.sort}"

s = ""
5.times {s << (65+rand(26)).chr}
p s

ss = []
10.times do
    sss = ''
    5.times {sss << (65+rand(26)).chr}
    ss.push(sss)
end
p ss

