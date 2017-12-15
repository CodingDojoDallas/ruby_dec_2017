require 'rails_helper'

RSpec.describe Message, type: :model do
  it "successfully creates a message with valid information" do
    expect(build(:message)).to be_valid
  end

  it "raises an error if message content is less than 10 characters" do
    expect(build(:message, content: "less")).to be_invalid
  end

  it "raises an error if no user is provided" do
    expect(build(:message, user: nil)).to be_invalid
  end
end
