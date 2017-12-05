class BankAccount

	@@total_accounts = 0

	private
		@interest
		attr_writer :number, :checking_balance, :savings_balance, :total
		
	public
		attr_reader :number, :checking_balance, :savings_balance, :total

	def total_accounts
		return @@total_accounts
	end

	def initialize(checking_balance, savings_balance)
		create_account()
		@checking_balance = checking_balance
		@savings_balance = savings_balance
		@total = savings_balance + checking_balance
		@@total_accounts += 1
		@interest = 0.01
		return self
	end

	def check_balance
		puts "Your Checking Acct Balance is: " + self.checking_balance.to_s
		return self
	end

	def save_balance
		puts "Your Savings Acct Balance is: " + self.savings_balance.to_s
		return self
	end

	def deposit_checking(amount)
		self.checking_balance += amount
		return self
	end

	def deposit_saving(amount)
		self.savings_balance += amount
		return self
	end

	def withdraw_checking(amount)
		if amount > self.checking_balance
			raise "Insufficient Funds!!!! SORRY, Go Back to WORK"
		else
			self.checking_balance -= amount
			puts "Succesfully Withdraw from Savings"
		end
		return self
	end

	def withdraw_saving(amount)
		if amount > self.savings_balance
			raise "Insufficient Funds!!!! SORRY, Go Back to WORK"
		else
			self.savings_balance -= amount
			puts "Succesfully Withdraw from Savings"
		end
		return self
	end

	def check_total
		puts "Your total Balance is: " + (savings_balance+checking_balance).to_s
		return self
	end

	def account_information
		puts "Your acct# is: " + self.number.to_s
		puts "Your Check bal is: " + self.checking_balance.to_s
		puts "Your Savin bal is: " + self.savings_balance.to_s
		puts "Your Total  is: " + (self.savings_balance + self.checking_balance).to_s
		puts "Your Interest Rate is: " + getInterest().to_s
	end

	private
		def getInterest
			return @interest
		end

		def create_account
			@number = Random.rand(10000...90000)
			return self
		end
	
end

# acc1 = BankAccount.new(70000, 50000)
# acc1.check_balance.save_balance
# acc1.deposit_checking(35454).check_balance
# acc1.withdraw_saving(55555555555)
# acc1.check_total
# p acc1.total_accounts
# acc1.account_information
# p acc1.number