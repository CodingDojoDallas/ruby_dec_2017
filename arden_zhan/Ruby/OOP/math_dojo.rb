# MathDojo
# create MathDojo class that allows adding/subtracting of numbers

class MathDojo
    attr_reader :result

    def initialize
        @result = 0
    end

    def add(*args)
        @result += args.flatten.reduce(:+)
        self
    end
    def subtract(*args)
        @result -= args.flatten.reduce(:+)
        self
    end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1, challenge2