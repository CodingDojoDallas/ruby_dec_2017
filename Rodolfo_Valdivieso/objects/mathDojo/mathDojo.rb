#Assignment Ruby OOP. MathDojo

class MathDojo
  # your code here
  attr_accessor :number
  def initialize
  	@number = 0
  end

  def add(*args)
  	for i in args
  		if i.class.to_s == "Array"
  			for x in i
  				@number += x
  			end
  		else
  			@number += i
  		end
  	end
  	return self
  end

  def subtract(*args)
  	for i in args
  		if i.class.to_s == "Array"
  			for x in i
  				@number -= x
  			end
  		else
  			@number -= i
  		end
  	end
  	return self
  end

  def result
  	puts @number
  	return self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15