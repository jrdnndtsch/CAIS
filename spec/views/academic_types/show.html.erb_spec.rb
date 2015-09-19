require 'rails_helper'

RSpec.describe "academic_types/show", :type => :view do
  before(:each) do
    @academic_type = assign(:academic_type, AcademicType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
