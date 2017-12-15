require_relative 'bankAccount'
RSpec.describe BankAccount do
    before(:each) do
        @account1 = BankAccount.new
    end
    it 'has a getter and setter for checking balance' do
        expect(@account1.checking_bal).to eq(0)
    end
    it 'has a getter and setter for savings balance' do
        expect(@account1.savings_bal).to eq(0)
    end
    it 'successfully runs withdraw method' do
        @account1.deposit(101, 'checking')
        @account1.deposit(101, 'savings')
        expect{ @account1.withdraw(100, 'checking') }.to output("Withdrawal from checking, successful\n").to_stdout
        expect{ @account1.withdraw(100, 'savings') }.to output("Withdrawal from savings, successful\n").to_stdout
    end
    it 'successfully runs withdraw method with insufficient balance' do
        expect{ @account1.withdraw(100, 'savings') }.to output("Insufficient account balance for withdrawal\n").to_stdout
    end
    it "can't access total number of accounts" do
        expect{@account1.num_of_accounts}.to raise_error(NoMethodError)
    end
    it "can't alter interest rate" do
        expect{@account1.interest_rate = 0.02}.to raise_error(NoMethodError)
    end
end

