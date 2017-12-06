require "stringer"
RSpec.describe Stringer do
	it "concatenates undefined number of strings with a space" do 
    	expect(Stringer.spacify("Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza")).to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  	end

  	it "has a method minify that will shorten a string if it exceeds the max value" do
  		expect(Stringer.minify("JasonBourne", 6)).to eq ("JasonB...")
  		expect(Stringer.minify("Jason", 6)).to eq ("Jason")
  	end

  	it "has a method replacify to replace a word in a string with a word given to us" do
  		expect(Stringer.replacify("This is my test", "test", "gem.")).to eq("This is my gem.")
  	end

  	it "has a method tokenize that will take a string and put each word into an array" do
  		expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  	end

  	it "has a method removify that will take a string and remove the word given to us" do
  		expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  	end  	
end