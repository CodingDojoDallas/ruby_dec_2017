require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it 'minifies a string to a given max length' do
    expect(Stringer.minify "Hello, I'm learning how to create a gem", 10).to eq("Hello, I'm...")
  end
  it 'minify returns string if len less than given max length' do
    expect(Stringer.minify "Hello", 10).to eq("Hello")
  end
  it 'replacify returns a string where a target word is replaced' do
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end
  it 'tokenize returns an array of all the words in a string' do
    expect(Stringer.tokenize "This is stupid af").to eq(['This', 'is', 'stupid', 'af'])
  end
  it 'removify removes a target substring from a string' do
    expect(Stringer.removify "I'm not a developer", "not").to eq ("I'm a developer")
  end
end