require "rails_helper"

RSpec.describe RecreationsTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recreations_types").to route_to("recreations_types#index")
    end

    it "routes to #new" do
      expect(:get => "/recreations_types/new").to route_to("recreations_types#new")
    end

    it "routes to #show" do
      expect(:get => "/recreations_types/1").to route_to("recreations_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recreations_types/1/edit").to route_to("recreations_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recreations_types").to route_to("recreations_types#create")
    end

    it "routes to #update" do
      expect(:put => "/recreations_types/1").to route_to("recreations_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recreations_types/1").to route_to("recreations_types#destroy", :id => "1")
    end

  end
end
