require 'rails_helper'
feature "post message" do
	before(:each) do 
		visit new_user_path
		fill_in "user_form[username]", with: "jquiros"
		click_button "Sign In"
    	visit messages_path
	end

	scenario "successfully post a message" do
		fill_in "content", with: "This is the content of my message."
		click_button "Post a Message"
		expect(page).to have_content "This is the content of my message"
		expect(current_path).to eq(messages_path)
	end
	scenario "unsuccessfully post a message" do
		fill_in "content", with: ""
		click_button "Post a Message"
		expect(page).to have_content "Content can't be blank"
		expect(current_path).to eq(messages_path)
	end

	scenario "messages page should have a log out button" do
		click_link "logout"
		expect(current_path).to eq(new_user_path)
	end
end
