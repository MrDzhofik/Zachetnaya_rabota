require_relative '../rails_helper'

RSpec.describe "User", type: :request do
  describe "GET /profile" do
    it "returns unauthorized" do
      get "/user/profile"
      expect(response).to have_http_status(302)
    end
  end

end