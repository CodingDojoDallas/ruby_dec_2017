require_relative 'appleTree'
RSpec.describe AppleTree do
  before(:each) do
    @tree1 = AppleTree.new(5)
  end
  
  it 'Tests1' do
    expect{@tree1.height=10}.to raise_error(NoMethodError) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'Tests2' do
    expect{@tree1.appleCount=10}.to raise_error(NoMethodError) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it 'Tests2' do
    expect(@tree1.year_gone_by.year_gone_by.pick_apples.appleCount).to eq(0)
  end

  context 'Young Tree' do
    it 'Test3' do
      @tree2 = AppleTree.new(1)
      expect(@tree2.year_gone_by.appleCount).to eq(0)
    end
  end

  context 'Adult Tree' do
    it 'Test3' do
      @tree2 = AppleTree.new(5)
      expect(@tree2.year_gone_by.appleCount).to eq(2)
    end
  end

  context 'Old Tree' do
    it 'Test3' do
      @tree2 = AppleTree.new(20)
      expect(@tree2.year_gone_by.appleCount).to eq(0)
    end
  end
end