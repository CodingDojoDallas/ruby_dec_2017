class BankAccount
    @@num_of_accts = 0
    @@interest_rate = 0.01
    def initialize
        @acct_num = generate_acct_num
        @checking = 0
        @savings = 0
        @@num_of_accts += 1
    end

    attr_reader :acct_num
    attr_reader :checking
    attr_reader :savings

    def deposit acct, amt
        @checking += amt if acct == 'checking'
        @savings += amt if acct == 'savings'
        p "You deposited #{amt} into #{acct}." unless (acct != 'checking' and acct != 'savings')
    end

    def withdraw acct, amt
        if (acct == 'checking' and amt > @checking) or (acct == 'savings' and amt > @savings)
            print "You have insufficient funds to withdraw from " + acct
        else
            @checking -= amt if acct == 'checking'
            @savings -= amt if acct == 'savings'
            p "You withdrew #{amt} from #{acct}" unless (acct != 'checking' and acct != 'savings')
        end
    end

    def total_holdings
        p "You have $#{@checking} in checking and $#{@savings} in savings, for a total of $#{@checking + @savings}."
    end

    def account_information
        p "Account #: #{@acct_num}"
        p "Total Balance: $#{@savings + @checking}"
        p "Checking Balance: $#{@checking}"
        p "Savings Balance: $#{@savings}"
        p "Interest Rate: #{@@interest_rate}"
    end

    def self.total_accts
        p "The bank currently has #{@@num_of_accts} accounts."
    end

    private
        def generate_acct_num
            return rand(1000000)
        end
end

/
acct1 = BankAccount.new
acct2 = BankAccount.new

p acct1.acct_num
acct2.deposit('checking', 100)
acct1.deposit('savings', 150)
acct2.withdraw('savings', 100)
acct2.withdraw('checking', 150)
acct2.withdraw('checking', 50)

acct2.total_holdings
acct1.account_information

BankAccount.total_accts
/