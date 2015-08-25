require 'rails_helper'

RSpec.describe Recreation, :type => :model do
  it "has a valid factory" do
  	expect(build(:recreation)).to be_valid
  end
end
