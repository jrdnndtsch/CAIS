require 'rails_helper'

RSpec.describe "academic_types/new", :type => :view do
  before(:each) do
    assign(:academic_type, AcademicType.new(
      :name => "MyString"
    ))
  end

  it "renders new academic_type form" do
    render

    assert_select "form[action=?][method=?]", academic_types_path, "post" do

      assert_select "input#academic_type_name[name=?]", "academic_type[name]"
    end
  end
end
