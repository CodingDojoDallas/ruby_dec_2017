require 'rails_helper'
feature "post comment" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "Stephen"
        click_button "Sign In"
        fill_in "message_content", with: "This is a test message"
        click_button "Post Message"
    end

    scenario "will add comment if data is valid" do
        fill_in "comment_content", with: "Hey there"
        click_button "Post Comment"
        expect(page).to have_content("Hey there")
    end

    scenario "will display errors if content field is empty" do
        click_button "Post Comment"
        expect(page).to have_content("Content must be between 1 and 100 characters.")
    end

    scenario "will display errors if content field is too long" do
        fill_in "comment_content", with: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
        click_button "Post Comment"
        expect(page).to have_content("Content must be between 1 and 100 characters.")
    end
end