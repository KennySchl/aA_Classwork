require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "Get#new" do 
    it "renders new template" do 
      get :new 
      expect(response).to render_template(:new)
    end
  end

  describe "Post#create" do 
    let(:valid_params) {{user: {username: "Harry Potter", password: "password"}}}
    let(:invalid_params) {{user: {username: "Joe", password: ""}}}
    let(:user) {User.find_by(username: "Harry Potter")}

    context "with valid params" do 
      before :each do 
        post :create, params: valid_params
      end

      it "create the user" do 
        expect(User.last.username).to eq("Harry Potter")
      end

      it "user should be logged in" do 
        expect(session[:session_token]).to eq(user.session_token)
      end

      it "should redirect to the show page" do 
        expect(response).to redirect_to(user_url(user))
      end
    end

    context "with invalid params" do 
      before :each do 
        post :create, params: invalid_params
      end

      it "error message" do 
        expect(flash[:errors]).to be_present 
      end

      it "render new template" do 
        expect(response).to render_template(:new)
      end

    end

  end
end
