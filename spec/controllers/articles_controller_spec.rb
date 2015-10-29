require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #up_vote" do
    it "returns http success" do
      get :up_vote
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #down_vote" do
    it "returns http success" do
      get :down_vote
      expect(response).to have_http_status(:success)
    end
  end

end
