require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    # updated this block to create two projects
    @user3 = BankAccount.new()
  end

  it 'has a getter check bal attribute' do
    @user3.check_bal = 0
    expect(@user3.check_bal).to eq(0)
  end

  it 'has a method to retrieve account balance' do
    expect(@user3.account_total).to eq("Your total balance is 0")
  end

  context "withdrawing money" do
    it "raises an error if user tries to withdraw more money than the have in checkings" do
      expect{ @user3.withdrawl(100, "checkings") }.to raise_error("Sorry, this account has insufficient funds.")
    end

    it "raises an error if user tries to withdraw more money than the have in checkings" do
      expect{ @user3.withdrawl(100, "savings") }.to raise_error("Sorry, this account has insufficient funds.")
    end

    it 'raises an error if user tries to retrieve the total number of bank accounts' do
      expect{ @user3.no_of_accounts}.to raise_error(NoMethodError)
    end

    it 'raises an error if user tries to set the interest rate' do
      expect{ @user3.show_interest}.to raise_error(NoMethodError)
    end
  end
end