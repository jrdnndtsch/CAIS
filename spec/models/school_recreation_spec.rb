require 'rails_helper'

RSpec.describe SchoolRecreation, :type => :model do
  it "has a valid factory" do
  	expect(build(:school_recreation)).to be_valid
  end
end
