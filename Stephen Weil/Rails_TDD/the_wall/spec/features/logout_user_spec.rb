require 'rails_helper'
feature "user logs out" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "Stephen"
        click_button "Sign In"
    end
    scenario "will be redirected to login page" do
        click_on "Log Out"
        expect(page).to have_current_path(new_user_path)
    end
    scenario "will then have session cleared" do
        click_on "Log Out"
        visit wall_path
        expect(page).to have_current_path(new_user_path)
    end
end