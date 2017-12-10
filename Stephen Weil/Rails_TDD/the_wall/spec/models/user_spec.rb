require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates new user when username is valid" do
    expect(build(:user)).to be_valid
  end

  it "raises an error when username is less than 5 characters" do
    expect(build(:user, username: "ay")).to be_invalid
  end

  it "raises an error when trying to create a username that already exists" do
    create(:user)
    expect(build(:user)).to be_invalid
  end
end
