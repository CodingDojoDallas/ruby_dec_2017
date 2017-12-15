#Print 1-255
(1..255).each{|num| print num, ' '}

#Print Odd 1-255
(1..255).reject{|num| num%2==0}.each{|num| print num, ' '}

#Print sum
sum = 0
for i in 0..255
    sum = sum + i
    puts "New number #{i}, Sum #{sum}"
end

#Iter array
x = [1,2,3,4,5,6,7,12,-2,-1]
x.each{|i| puts i}

#Find max
def find_max arr
    max = arr[0]
    for i in arr[1..-1]
        if i > max
            max = i
        end
    end
    puts "Maximum value is #{max}"
    return max
end
find_max x

#Find min
def find_min arr
    min = arr[0]
    for i in arr[1..-1]
        if i < min
            min = i
        end
    end
    puts "Minimum value is #{min}"
    return min
end
find_min x

#Average
def avg arr 
    sum = 0
    count = 0
    for i in arr
        sum = sum + i
        count+=1
    end
    avg = sum/count.to_f
    puts "Average is #{avg}"
    return avg
end
avg x

#Odd array
p (1..255).select{|num| num%2!=0}
p Array.new(128){|num| num*2+1}

#Greater than
def greater arr, num
    p arr.select{|i| i > num}
end

greater x, 6

#Square
def square arr
    arr.each_with_index{|val,idx| arr[idx] = val*val}
    p arr
end
square x

#Eliminate negatives
def no_neg arr
    arr.each_with_index{|val, idx| arr[idx] = 0 if val < 0}
    p arr
end
y = [-1,2,-3,4]
no_neg y

#Max, min, avg
def evaluate arr
    ret =  {"max" => find_max(arr), "min" => find_min(arr), "avg" => avg(arr)}
    p ret
end
evaluate y

#Shift values
def shift arr
    arr.each_with_index{|val, idx| arr[idx] = arr[idx+1]}
    arr[-1] = 0
    p arr
end
shift y # [2,0,4,0]

#Num to string
def numtostring arr
    arr.each_with_index{|val, idx| arr[idx] = 'dojo' if val < 0}
    p arr
end
z = [-1,2,-3,4]
numtostring z
