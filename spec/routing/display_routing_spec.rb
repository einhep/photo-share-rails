require "spec_helper"

describe DisplaysController do
  describe "routing" do

    it "routes to #index" do
      get("/displays").should route_to("displays#index")
    end

    it "routes to #new" do
      get("/displays/new").should route_to("displays#new")
    end

    it "routes to #show" do
      get("/displays/1").should route_to("displays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/displays/1/edit").should route_to("displays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/displays").should route_to("displays#create")
    end

    it "routes to #update" do
      put("/displays/1").should route_to("displays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/displays/1").should route_to("displays#destroy", :id => "1")
    end

  end
end
