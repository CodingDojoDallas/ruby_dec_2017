require 'rails_helper'
feature "User creates an account" do
  before(:each) do 
    visit new_user_path
  end
  scenario "1successfully creates a new user account" do
    fill_in "user_first_name", with: "shane"
    fill_in "user_last_name", with: "chang"
    fill_in "user_email", with: "schang@codingdojo.com"
    click_button "Create User"
    #expect(page).to have_content "Welcome, shane"
    expect(page).to have_content "Welcome, shane"
    # We'll be redirecting to the user show page is user succesfully created
    expect(page).to have_current_path(user_path(User.last))    
  end
  scenario "2unsuccessfully creates a new user account" do 
    click_button "Create User"
    expect(current_path).to eq(new_user_path)
  end
  scenario "3doesn't fill out first name field" do 
    fill_in "user_last_name", with: "shane"
    fill_in "user_email", with: "schang@codingdojo.com"
    click_button "Create User"
    expect(page).to have_content "First name can't be blank"
  end
  scenario "4doesn't fill out last name field" do 
  	fill_in "user_first_name", with: "shane"
    fill_in "user_email", with: "schang@codingdojo.com"
    click_button "Create User"
    expect(page).to have_content "Last name can't be blank"
  end
  scenario "5doesn't fill out email field" do 
  	fill_in "user_first_name", with: "shane"
  	fill_in "user_last_name", with: "shane"
    #fill_in "user_email", with: "schang@codingdojo.com"
    click_button "Create User"
    expect(page).to have_content "Email can't be blank"
  end
end