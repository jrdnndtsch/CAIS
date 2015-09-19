require 'rails_helper'

RSpec.describe "academic_types/index", :type => :view do
  before(:each) do
    assign(:academic_types, [
      AcademicType.create!(
        :name => "Name"
      ),
      AcademicType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of academic_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
