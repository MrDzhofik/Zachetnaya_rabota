require_relative '../rails_helper'

RSpec.describe "Matches", type: :request do
    describe "GET / without login" do
      it "returns unauthorized" do
        get "/"
        expect(response).to have_http_status(302)
      end
    end

    describe "GET matches/filters without login" do
      it "returns unauthorized" do
        get "/matches/filters"
        expect(response).to have_http_status(302)
      end
    end

    describe "GET matches/show without login" do
      it "returns unauthorized" do
        get "/matches"
        expect(response).to have_http_status(302)
      end
    end
  
  end