require 'rails_helper'

RSpec.describe ImagesController, type: :controller do
  include Devise::TestHelpers


  describe "GET index" do

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end

  end

  describe "GET search" do

    it "returns a collection of gifs found on Giphy for the given keyword" do
      allow(GiphyService).to receive(:search)
      get :search, q: "foo-image"
      expect(GiphyService).to have_received(:search).with("foo-image")
      expect(response).to be_ok
    end

  end

  describe "POST create" do
    let(:user) {User.create(name: "Another guy", email: "another@domain.com", password: Devise.friendly_token(8))}

    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in user
    end


    context "with valid arguments" do

      it "creates a new image for the given user" do
        post :create, image: { giphy_id: "any_id", tag_list: "foo, bar" }
        expect { post :create, image: { giphy_id: "any_id", user_id: user.id, tags: "foo, bar" } }.to change{ Image.count }.by(1)
        expect(response).to be_ok
        expect(@image.tags).to eq(["foo", "bar"])
        expect(flash[:notice]).to eq("")
      end
    end

    context "with a giphy_id already used by the current user" do
      it "doesn't create a duplicated image for the given user" do
        Image.create(giphy_id: "any_id")
        expect { post :create, image: { giphy_id: "any_id", user_id: user.id, tags: "foo, bar" } }.to_not change{ Image.count }.by(1)
      end
    end

  end

  describe "GET tags" do
    it "shows all the images saved with that same tag" do
      get :tags, tag: "foo"
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

end
