class AppleTree
	attr_accessor :age
	attr_reader :height, :appleCount

	def initialize(age)
		@age        = age
		@height     = 1
		@appleCount = 0
	end
	
	def year_gone_by
		@age += 1
		@height *= 1.10
		if (@age >= 3) and (@age < 10)
			@appleCount += 2
		end
		return self
	end

	def pick_apples
		@appleCount = 0
		return self
	end

end