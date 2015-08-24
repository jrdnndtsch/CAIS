require 'rails_helper'

RSpec.describe School, :type => :model do
  it "has a valid factory" do
  	expect(build(:school)).to be_valid
  end

  it "calculates the correct number of day students" do 
  	school = build(:school)
  	expect(school.total_day).to eq(90)
  end

  it "calculates the correct number of boarding students" do 
  	school = build(:school)
  	expect(school.total_boarding).to eq(67)
  end

  it "calculates the correct number of girl students" do 
  	school = build(:school)
  	expect(school.total_girls).to eq(77)
  end

  it "calculates the correct number of boy students" do 
  	school = build(:school)
  	expect(school.total_boys).to eq(80)
  end

end
