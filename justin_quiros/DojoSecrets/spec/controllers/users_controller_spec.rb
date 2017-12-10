require 'rails_helper'
RSpec.describe UsersController, type: :controller do
  before do
    @user = create(:user)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access show" do 
      get :show, id: @user
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access edit" do
      get :edit, id: @user
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access update" do
      get :update, id: @user
      expect(response).to redirect_to("/sessions/new")
      end
    it "cannot access destroy" do
      get :delete, id: @user
      expect(response).to redirect_to("/sessions/new")
    end
  end
  context "when signed in as the wrong user" do
    before do
      @invalid_user = create(:user, name: 'invalid', email: 'invalid@user.com')
      session[:user_id] = @invalid_user.id
    end
    it "cannot access profile page another user" do
      get :show, id: @user
      expect(response).to redirect_to("/users/#{session[:user_id]}")
    end
    it "cannot access the edit page of another user" do
      get :edit, id: @user
      expect(response).to redirect_to("/users/#{session[:user_id]}")
    end    
    it "cannot update another user" do
      patch :update, id: @user
      expect(response).to redirect_to("/users/#{session[:user_id]}")
    end
    it "cannot destroy another user" do
      delete :delete, id: @user
      expect(response).to redirect_to("/users/new")
    end
  end  
end