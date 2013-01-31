require "spec_helper"

describe ViewSessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/view_sessions").should route_to("view_sessions#index")
    end

    it "routes to #new" do
      get("/view_sessions/new").should route_to("view_sessions#new")
    end

    it "routes to #show" do
      get("/view_sessions/1").should route_to("view_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/view_sessions/1/edit").should route_to("view_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/view_sessions").should route_to("view_sessions#create")
    end

    it "routes to #update" do
      put("/view_sessions/1").should route_to("view_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/view_sessions/1").should route_to("view_sessions#destroy", :id => "1")
    end

  end
end
