require 'rails_helper'

RSpec.describe SchoolCampu, :type => :model do
  it "has a valid factory" do
  	expect(build(:school_campu)).to be_valid
  end
end
