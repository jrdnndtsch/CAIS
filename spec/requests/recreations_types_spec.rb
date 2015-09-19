require 'rails_helper'

RSpec.describe "RecreationsTypes", :type => :request do
  describe "GET /recreations_types" do
    it "works! (now write some real specs)" do
      get recreations_types_path
      expect(response).to have_http_status(200)
    end
  end
end
