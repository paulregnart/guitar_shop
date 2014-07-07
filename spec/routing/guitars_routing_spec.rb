require "rails_helper"

RSpec.describe GuitarsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guitars").to route_to("guitars#index")
    end

    it "routes to #new" do
      expect(:get => "/guitars/new").to route_to("guitars#new")
    end

    it "routes to #show" do
      expect(:get => "/guitars/1").to route_to("guitars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guitars/1/edit").to route_to("guitars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guitars").to route_to("guitars#create")
    end

    it "routes to #update" do
      expect(:put => "/guitars/1").to route_to("guitars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guitars/1").to route_to("guitars#destroy", :id => "1")
    end

  end
end
