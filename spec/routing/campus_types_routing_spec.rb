require "rails_helper"

RSpec.describe CampusTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campus_types").to route_to("campus_types#index")
    end

    it "routes to #new" do
      expect(:get => "/campus_types/new").to route_to("campus_types#new")
    end

    it "routes to #show" do
      expect(:get => "/campus_types/1").to route_to("campus_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/campus_types/1/edit").to route_to("campus_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/campus_types").to route_to("campus_types#create")
    end

    it "routes to #update" do
      expect(:put => "/campus_types/1").to route_to("campus_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campus_types/1").to route_to("campus_types#destroy", :id => "1")
    end

  end
end
