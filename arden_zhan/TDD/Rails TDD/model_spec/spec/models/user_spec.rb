require 'rails_helper'

RSpec.describe User, type: :model do
	# control
	context "With valid attributes" do 
		it "should save" do 
			user = User.new(
				first_name: 'Arden',
				last_name: 'Zhan',
				email: 'arden@arden.com'
			)
			expect(user).to be_valid
		end
	end

	context "with invalid attributes" do 
		it "should not save if first_name field is blank" do
			user = User.new(
				first_name: '',
				last_name: 'Zhan',
				email: 'arden@arden.com'
			)
			expect(user).to be_invalid
		end

		it "should not save if last_name field is blank" do
			user = User.new(
				first_name: 'Arden',
				last_name: '',
				email: 'arden@arden.com'
			)
			expect(user).to be_invalid
		end

		it "should not save if email already exists" do
			User.create(
				first_name: "Russ",
				last_name: "West",
				email: "russ@russ.com"
			)
			user = User.new(
				first_name: "Russ",
				last_name: "West",
				email: "russ@russ.com"
			)
			expect(user).to be_invalid
		end

		it "should contain a valid email" do
			user = User.new(
				first_name: 'Arden',
				last_name: 'Zhan',
				email: 'invalidemail'
			)
			expect(user).to be_invalid
		end
	end
end