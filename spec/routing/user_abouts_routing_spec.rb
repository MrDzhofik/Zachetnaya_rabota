require "rails_helper"

RSpec.describe UserAboutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_abouts").to route_to("user_abouts#index")
    end

    it "routes to #new" do
      expect(get: "/user_abouts/new").to route_to("user_abouts#new")
    end

    it "routes to #show" do
      expect(get: "/user_abouts/1").to route_to("user_abouts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_abouts/1/edit").to route_to("user_abouts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_abouts").to route_to("user_abouts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_abouts/1").to route_to("user_abouts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_abouts/1").to route_to("user_abouts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_abouts/1").to route_to("user_abouts#destroy", id: "1")
    end
  end
end
