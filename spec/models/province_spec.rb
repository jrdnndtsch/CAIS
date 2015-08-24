require 'rails_helper'

RSpec.describe Province, :type => :model do
  
  it "has a valid factory" do 
  	expect(build(:province)).to be_valid
  end
end
