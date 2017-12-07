require 'rails_helper'
feature 'authentication' do
  before do
    @user = create(:user)
  end

  feature "user sign-in" do
    scenario 'visits sign-in page' do
      visit '/sessions/new'
      expect(page).to have_field('email')
      expect(page).to have_field('password')
    end
    scenario 'logs in user if email/password combination is valid' do
      log_in
      expect(page).to have_text(@user.name)
    end
    scenario 'does not sign in user if email is not found' do
      log_in email: 'wrong email'
      expect(current_path).to eq("/sessions/new")
      expect(page).to have_text('Incorrect username/password')
    end    
    scenario 'does not sign in user if email/password combination is invalid' do
      log_in password: 'wrong password'
      expect(current_path).to eq("/sessions/new")      
      expect(page).to have_text('Incorrect username/password')
    end
  end
  
  feature "user to log out" do
    before do 
      log_in 
    end
    scenario 'displays "Log Out" button when user is logged on' do
      expect(page).to have_button("Log Out")
    end
    scenario 'logs out user and redirects to login page' do
      click_button 'Log Out'
      expect(current_path).to eq('/sessions/new')
    end
  end
end
































# require 'rails_helper'
# feature "logs on" do
#   before(:each) do 
#       visit new_session_path
#     end
# feature 'authentication feature' do
#   feature "user attempts to sign-in" do
#     scenario 'visits sign-in page, prompted with email and password fields' do
#       expect(page).to have_field("email")
#       expect(page).to have_field("password")
#     end
#   end
#     scenario 'logs in user if email/password combination is valid' do
#       log_in    
#       expect(page).to have_content "Welcome, Justin"
#     end


#     scenario 'does not sign in user if email is not found' do
#       fill_in "email", with: "jq@yahoo.com"
#       fill_in "password", with: "password"
#       click_button "Login"
#       expect(page).to have_content "Incorrect username/password"
#     end
      
#     scenario 'does not sign in user if email/password combination is invalid' do
#       fill_in "email", with: "jq@asdf.com"
#       fill_in "password", with: "password"
#       click_button "Login"
#       expect(page).to have_content "Incorrect username/password"
#     end
# end
#   # feature "user attempts to log out"
#   # before do
#   #   log_in
#   # end
#     # scenario 'displays "Log Out" button when user is logged on' do
#     #   expect(page).to have_button('Log Out')
#     # end
#     # scenario 'logs out user and redirects to login page' do
#     #   click_button 'Log Out'
#     #   expect(current_path).to eq('/sessions/new')
#     # end
#   # end
# end