
class Ninja < Human
	def initialize
		super
		@stealth = 175
	end
	def steal(object)
		attack(object)
		@health += 10
	end
	def get_away
		@health -= 15
	end
end

