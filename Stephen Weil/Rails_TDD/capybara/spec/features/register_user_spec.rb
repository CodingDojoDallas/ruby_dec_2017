require 'rails_helper'
feature 'guest user creates an account' do
    before(:each) do
        visit new_user_path
    end
    scenario 'successfully creates a new user account' do
        fill_in 'user_first_name', with: 'Stephen'
        fill_in 'user_last_name', with: 'Weil'
        fill_in 'user_email', with: 'stephen@weil.com'
        click_button 'Create User'
        expect(page).to have_content 'Welcome, Stephen'
        expect(page).to have_current_path(user_path(User.last))
    end

    scenario 'unsuccessfully creates a new user account' do
        click_button 'Create User'
        expect(current_path).to eq(new_user_path)
    end

    scenario 'doesnt fill out first name field' do
        fill_in 'user_last_name', with: 'Weil'
        fill_in 'user_email', with: 'stephen@weil.com'
        click_button 'Create User'
        expect(page).to have_content "First name can't be blank"
    end

    scenario 'doesnt fill out last name field' do
        fill_in 'user_first_name', with: 'Stephen'
        fill_in 'user_email', with: 'stephen@weil.com'
        click_button 'Create User'
        expect(page).to have_content "Last name can't be blank"
    end

    scenario 'doesnt fill out email field' do
        fill_in 'user_first_name', with: 'Stephen'
        fill_in 'user_last_name', with: 'Weil'
        click_button 'Create User'
        expect(page).to have_content "Email is invalid"
    end
end