require 'rails_helper'

RSpec.describe "CampusTypes", :type => :request do
  describe "GET /campus_types" do
    it "works! (now write some real specs)" do
      get campus_types_path
      expect(response).to have_http_status(200)
    end
  end
end
