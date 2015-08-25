require 'rails_helper'

RSpec.describe SchoolAcademic, :type => :model do
  it "has a valid factory" do
  	expect(build(:school_academic)).to be_valid
  end
end
