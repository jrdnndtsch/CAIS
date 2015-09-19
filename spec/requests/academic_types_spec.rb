require 'rails_helper'

RSpec.describe "AcademicTypes", :type => :request do
  describe "GET /academic_types" do
    it "works! (now write some real specs)" do
      get academic_types_path
      expect(response).to have_http_status(200)
    end
  end
end
