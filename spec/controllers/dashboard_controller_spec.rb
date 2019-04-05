require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #index" do
    before { get :index }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "assigns all employees" do
      expect(assigns(:employees)).to eq Employee.all
    end
  end

end
