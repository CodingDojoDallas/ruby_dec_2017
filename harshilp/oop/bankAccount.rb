class BankAccount
    attr_accessor :checking_bal, :savings_bal, :account_num
    @@num_of_accounts = 0
    def initialize
        @account_num = generateAccount
        @checking_bal = 0
        @savings_bal = 0
        @@num_of_accounts+=1
        @interest_rate = 0.01
    end

    def showChecking
        puts "Checking account balance: #{@checking_bal}"
        self
    end    
    def showSavings
        puts "Savings account balance: #{@savings_bal}"
        self
    end

    def deposit amount, acc
        if acc == 'checking'
            @checking_bal += amount
        else
            @savings_bal += amount
        end
        self
    end

    def withdraw amount, acc
        if acc == 'checking' && amount <= @checking_bal
            @checking_bal -= amount
            puts "Withdrawal from checking, successful"
        elsif acc == 'savings' && amount <= @savings_bal
            @savings_bal -= amount
            puts "Withdrawal from savings, successful"            
        else
            puts "Insufficient account balance for withdrawal"
        end
        self
    end

    def showTotal
        puts "Total balance: #{@checking_bal + @savings_bal}"
        self
    end

    def account_information
        puts "Account number: #{@account_num}"
        showTotal
        showChecking
        showSavings
        puts "Interest rate: #{@interest_rate}"
        self
    end

    private
        def generateAccount
            return rand(1000000)
        end

end

ba = BankAccount.new()
ba.account_information.deposit(2000, 'checking').deposit(50, 'savings').withdraw(200, 'savings').withdraw(1000, 'checking').account_information
puts ba.interest_rate # throws error because its not accessible

