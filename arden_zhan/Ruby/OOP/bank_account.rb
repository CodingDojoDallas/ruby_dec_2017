class BankAccount
    @@numAccounts = 0

    def initialize
        @accNum = generateAccNum
        @checking = 0
        @savings = 0

        @interest_rate = 0.01
        @@numAccounts += 1
    end

    attr_reader :checking, :savings, :accNum

    def deposit(amount, accType)
        if accType.downcase == "checking"
            @checking += amount
        elsif accType.downcase == "savings"
            @savings += amount
        end
    end

    def withdraw(amount, accType)
        
        if accType.downcase == "checking"
            if @checking - amount >= 0
                @checking -= amount
            else
                raise "Insufficient Funds, #{@checking} available"
        
            end
        elsif accType.downcase == "savings"
            if (@savings - amount ) >= 0
                @savings -= amount
            else
                raise "Insufficient Funds, #{@savings} available"
            end
        end
    end

    def viewMoney
        puts "Checking Balance: #{@checking}"
        puts "Savings Balance: #{@savings}"
        puts "Total: #{@checking + @savings}"
    end

    def account_information
        puts "Account Number: #{@accNum}"
        self.viewMoney
        puts "Interest rate: #{@interest_rate}"
    end

    def self.numAccounts
        @@numAccounts
    end

    private
        def generateAccNum
            rand(1..100)
        end
end

# b = BankAccount.new
# puts b.accNum