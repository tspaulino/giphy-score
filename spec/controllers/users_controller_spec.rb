require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    before do
      @user = User.create(name: "Foo", email: "user@domain.com", password: Devise.friendly_token(8))
    end

    it "returns http success" do
      get :show, id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

end
