require_relative "../rails_helper"

RSpec.describe MatchesController, type: :routing do
  describe "routing" do
    it "routes to matches#index" do
      expect(get: "/").to route_to("matches#index")
    end

    it "routes to matches#show" do
        expect(get: "/matches/1").to route_to("matches#show", id: '1')
    end

    it "routes to match/filters" do
        expect(get: "/match/filters").to route_to("match#filters")
    end
  end
  
end