require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "successfully adds comment with valid information" do
    expect(build(:comment, user: build(:user, username: "Different"))).to be_valid
  end

  it "raises an error when content field is blank" do
    expect(build(:comment, content: '', user: build(:user, username: "Different"))).to be_invalid
  end

  it "raises an error when user field is blank" do
    expect(build(:comment)).to be_invalid
  end

  it "raises an error when message field is blank" do
    expect(build(:comment, user: build(:user), message: nil)).to be_invalid
  end
end
