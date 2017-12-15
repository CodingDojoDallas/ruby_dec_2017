require "spec_helper"
RSpec.describe Stringer do
  it "concatenates an undefined number of strings with a space" do
    expect(Stringer.spacify("Stephen", "Joseph", "Weil")).to eq("Stephen Joseph Weil")
  end

  it "cuts off a string at a max length and adds an ellipsis" do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end

  it "replaces all instances of one string with another inside of a given string" do
    expect(Stringer.replace("I can't do this", "can't", "can")).to eq("I can do this")
    expect(Stringer.replace("I can do this, yes I can!", "can", "will")).to eq("I will do this, yes I will!")
  end

  it "returns an array with each word in the given string" do
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end

  it "removes each instance of given word from original string" do
    expect(Stringer.remove("I'm not a developer", "not")).to eq("I'm a developer")
  end

end