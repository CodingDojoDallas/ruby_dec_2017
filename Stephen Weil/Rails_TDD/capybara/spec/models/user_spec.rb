require 'rails_helper'

RSpec.describe User, type: :model do
  context "with valid attributes" do
    it "should save" do
      expect(build(:user)).to be_valid
    end
  end

  context "with invalid attributes" do
    it "should not save if first_name is blank" do
      expect(build(:user, first_name: "")).to be_invalid
    end

    it "should not save if last_name is blank" do
      expect(build(:user, last_name: "")).to be_invalid
    end

    it "should not save if email already exists" do
      create(:user)
      expect(build(:user)).to be_invalid
    end

    it "should not save if email format is invalid" do
      expect(build(:user, email:"invalid@email")).to be_invalid
    end
  end

end
