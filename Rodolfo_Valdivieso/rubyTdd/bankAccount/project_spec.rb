require_relative 'bankAccount'
RSpec.describe BankAccount do
  before(:each) do
    # updated this block to create two accts
    @acct1 = BankAccount.new(10000,80000)

  end
  
  it 'Tests1' do
   # @acct1.savings_balance = 80000 # this line would fail if our class did not have a setter method
    expect(@acct1.savings_balance).to eq(80000) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'Test2' do
    expect(@acct1.total).to eq(90000) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'Checking if Can access Interest' do
    expect{@acct1.interest}.to raise_error(NoMethodError) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'raises an error if user tries to withdraw more money than the have in checkings' do
    expect{ @acct1.withdraw_checking(1000000000)}.to raise_error("Insufficient Funds!!!! SORRY, Go Back to WORK")
  end


end