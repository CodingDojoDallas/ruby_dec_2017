require_relative 'bankaccount'
RSpec.describe BankAccount do
    before(:each) do
        @account1 = BankAccount.new
    end

    it 'has a getter method for retrieving the checking balance' do
        expect(@account1.checking).to eq(0)
    end

    it 'has a getter method that retrieves the total balance' do
        expect(@account1.checking + @account1.savings).to eq(0)
    end

    it 'has a function that allows the user to withdraw cash' do
        @account1.deposit('checking', 100)
        @account1.withdraw('checking', 50)
        expect(@account1.checking).to eq(50)
    end

    it 'will raise an error if the user tries to withdraw more money than they have' do
        expect { @account1.withdraw('checking', 50) }.to output('You have insufficient funds to withdraw from checking').to_stdout
    end

    it 'will raise an error if a user attempts to retrieve total number of bank accounts' do
        expect { @account1.num_of_accts }.to raise_error(NoMethodError)
    end

    it 'will raise an error if a user attempts to set the interest rate' do
        expect { @account1.interest_rate = 0 }.to raise_error(NoMethodError)
    end

end