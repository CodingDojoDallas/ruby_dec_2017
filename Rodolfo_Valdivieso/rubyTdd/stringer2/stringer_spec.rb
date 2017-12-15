RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.minify "Hello how are you today", 5).to eq("Hello ...")
  end
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.minify "Hello", 10).to eq("Hello")
  end

  it "Iterates over a string and replaces first instance of that word with the replacement provided" do 
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it "Parameters string. Iterates over a string and adds each word into an array, then returns that array" do 
    expect(Stringer.tokenize "I love to code").to eq(["I", "love", "to", "code"])
  end


  it "Parameters string. Iterates over a string and adds each word into an array, then returns that array" do 
    expect(Stringer.removify "I'm not a developer", 'not').to eq("I'm a developer")
  end
end
