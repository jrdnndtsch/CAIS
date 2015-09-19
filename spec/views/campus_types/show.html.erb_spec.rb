require 'rails_helper'

RSpec.describe "campus_types/show", :type => :view do
  before(:each) do
    @campus_type = assign(:campus_type, CampusType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
