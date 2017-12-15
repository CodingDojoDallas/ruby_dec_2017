require 'rails_helper'
feature "user logs in" do
    scenario "will be redirected if visiting wall before login" do
        visit wall_path
        expect(page).to have_current_path(new_user_path)
    end

    before(:each) do
        visit new_user_path
    end

    scenario "will receive errors if username is less than 6 characters" do
        fill_in "username", with: "Bob"
        click_button "Sign In"
        expect(page).to have_content "Username must be between 6 and 25 characters."
    end

    scenario "will create user with valid information" do
        fill_in "username", with: "Stephen"
        click_button "Sign In"
        expect(page).to have_content "Welcome, Stephen!"
    end

    scenario "will log in if user information exists" do
        fill_in "username", with: "Stephen"
        click_button "Sign In"
        visit logout_path
        fill_in "username", with: "Stephen"
        click_button "Sign In"
        expect(page).to have_content "Welcome, Stephen!"
    end

end