require 'rails_helper'

RSpec.describe Academic, :type => :model do
  it "has a valid factory" do
  	expect(build(:academic)).to be_valid
  end
end
