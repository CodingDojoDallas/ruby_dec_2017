require 'rails_helper'

RSpec.describe Message, type: :model do
	context "with valid input of content" do 
		it "should save" do 
			expect(build(:message, content: "This is the content of my message", user_id: 1)).to be_valid
		end
	end

	context "With invalid input of content" do
		it "should not save if content field is blank" do
			expect(build(:message, content: "")).to be_invalid
		end
	end
end
