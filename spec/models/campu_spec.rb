require 'rails_helper'

RSpec.describe Campu, :type => :model do
  
  it "has a valid factory" do
  	expect(build(:campu)).to be_valid
  end
end
