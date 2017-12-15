require_relative 'apple_tree'
RSpec.describe AppleTree do
    before(:each) do
        @tree = AppleTree.new
    end
    it 'has an age attribute with getter and setters' do
        @tree.age = 5
        expect(@tree.age).to eq(5)
    end
    it 'has a height attribute with only a getter' do
        expect(@tree.height).to eq(5)
        expect{@tree.height = 6}.to raise_error(NoMethodError)
    end
    it 'has an apple_count attribute with only a getter' do
        expect(@tree.apple_count).to eq(0)
        expect{@tree.apple_count = 1}.to raise_error(NoMethodError)
    end

    context 'first three years' do
        it 'has a year_gone_by method that will not add apples' do
            @tree.year_gone_by
            expect(@tree.age).to eq(1)
            expect(@tree.apple_count).to eq(0)
            expect(@tree.height).to eq(5.5)
        end
    end

    context 'middle of life' do
        before(:each) do
            3.times { @tree.year_gone_by }
        end

        it 'has a year_gone_by method that will now add apples' do
            expect(@tree.age).to eq(3)
            expect(@tree.apple_count).to eq(2)
            expect((@tree.height * 10000).floor / 10000.0).to eq(6.655)
        end

        it 'has a pick_apples method that removes all apples' do
            @tree.pick_apples
            expect(@tree.apple_count).to eq(0)
        end
    end

    context 'end of life' do
        before(:each) do
            @tree.age = 11
        end

        it 'has a year_gone_by method that will no longer add apples' do
            @tree.year_gone_by
            expect(@tree.apple_count).to eq(0)
        end
    end
end