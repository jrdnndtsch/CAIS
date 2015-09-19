require "rails_helper"

RSpec.describe AcademicTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/academic_types").to route_to("academic_types#index")
    end

    it "routes to #new" do
      expect(:get => "/academic_types/new").to route_to("academic_types#new")
    end

    it "routes to #show" do
      expect(:get => "/academic_types/1").to route_to("academic_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/academic_types/1/edit").to route_to("academic_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/academic_types").to route_to("academic_types#create")
    end

    it "routes to #update" do
      expect(:put => "/academic_types/1").to route_to("academic_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/academic_types/1").to route_to("academic_types#destroy", :id => "1")
    end

  end
end
