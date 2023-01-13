require_relative "../rails_helper"

RSpec.describe UserAboutsController, type: :routing do
  describe "routing" do
    it "routes to #edit" do
      expect(get: "/user_abouts/1/edit").to route_to("user_abouts#edit", id: "1")
    end
  end
end
