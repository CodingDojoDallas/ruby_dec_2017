require 'rails_helper'
feature "logs on" do
	before(:each) do 
    	visit new_user_path
	end
	scenario "successfully login to account" do
		fill_in "user_form[username]", with: "jquiros"
		click_button "Sign In"
		expect(page).to have_content "Welcome jquiros"
		expect(current_path).to eq(messages_path)
	end
	scenario "successfully login to account" do
		fill_in "user_form[username]", with: "jquiros"
		click_button "Sign In"
		expect(page).to have_content "Welcome jquiros"
		expect(current_path).to eq(messages_path)
	end
		scenario "do not fill in username field" do
		fill_in "user_form[username]", with: ""
		click_button "Sign In"
		expect(page).to have_content "Username can't be blank"
		expect(current_path).to eq(new_user_path)
	end
end