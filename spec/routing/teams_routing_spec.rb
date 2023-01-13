require_relative "../rails_helper"

RSpec.describe TeamsController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/team/1").to route_to("team#show", id: "1")
    end
  end
end
