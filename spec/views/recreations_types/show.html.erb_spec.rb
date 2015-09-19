require 'rails_helper'

RSpec.describe "recreations_types/show", :type => :view do
  before(:each) do
    @recreations_type = assign(:recreations_type, RecreationsType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
