require 'rails_helper'
feature "post message" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "Stephen"
        click_button "Sign In"
    end

    scenario "will post message if data is valid" do
        fill_in "message_content", with: "This is a test message"
        click_button "Post Message"
        expect(page).to have_content("This is a test message")
    end

    scenario "will display errors if message is too short" do
        fill_in "message_content", with: "a"
        click_button "Post Message"
        expect(page).to have_content("Message must be between 10 and 280 characters.")
    end

    scenario "will display errors if message is too long" do
        fill_in "message_content", with: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
        click_button "Post Message"
        expect(page).to have_content("Message must be between 10 and 280 characters.")
    end
end