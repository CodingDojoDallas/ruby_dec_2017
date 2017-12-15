require_relative 'appleTree'
RSpec.describe AppleTree do
    before(:each) do
        @apple = AppleTree.new
    end
    it 'has getter and setter for age attr' do
        @apple.age = 1000
        expect(@apple.age).to eq(1000)
    end
    it 'has getter only for height attr' do
        expect{ @apple.height = 200 }.to raise_error(NoMethodError)
    end
    it 'has getter only for appleCount attr' do
        expect{ @apple.appleCount = 20 }.to raise_error(NoMethodError)
    end
    it 'successfully runs year_gone_by method' do
        @apple.year_gone_by
        @apple.year_gone_by
        expect(@apple.age).to eq(2)
        expect(@apple.height.round(2)).to eq(1.21)
        expect(@apple.appleCount).to eq(0)
    end
    it 'successfully runs year_gone_by method for apple count' do
        4.times {@apple.year_gone_by}
        expect(@apple.age).to eq(4)
        expect(@apple.appleCount).to eq(2)
        7.times {@apple.year_gone_by}        
        expect(@apple.age).to eq(11)
        expect(@apple.appleCount).to eq(14)
    end
    it 'successfully runs pick_apples method' do
        4.times {@apple.year_gone_by}       
        @apple.pick_apples
        expect(@apple.appleCount).to eq(0)
    end

end