require 'rails_helper'

RSpec.describe User, type: :model do
  context "with valid attributes" do
    it "should save" do
      user = User.new(
        first_name: "Stephen",
        last_name: "Weil",
        email: "stephen@weil.com"
      )
      expect(user).to be_valid
    end
  end

  context "with invalid attributes" do
    it "should not save if first_name is blank" do
      user = User.new(
        first_name: "",
        last_name: "Weil",
        email: "stephen@weil.com"
      )
      expect(user).to be_invalid
    end

    it "should not save if last_name is blank" do
      user = User.new(
        first_name: "Stephen",
        last_name: "",
        email: "stephen@weil.com"
      )
      expect(user).to be_invalid
    end

    it "should not save if email already exists" do
      user = User.create(
        first_name: "Stephen",
        last_name: "Weil",
        email: "stephen@weil.com"
      )
      user2 = User.new(
        first_name: "Other",
        last_name: "Name",
        email: "stephen@weil.com"
      )
      expect(user2).to be_invalid
    end

    it "should not save if email has invalid format" do
      user = User.new(
        first_name: "Stephen",
        last_name: "Weil",
        email: "stephen@weil"
      )
      expect(user).to be_invalid
    end
  end

end
