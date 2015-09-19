require 'rails_helper'

RSpec.describe "academic_types/edit", :type => :view do
  before(:each) do
    @academic_type = assign(:academic_type, AcademicType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit academic_type form" do
    render

    assert_select "form[action=?][method=?]", academic_type_path(@academic_type), "post" do

      assert_select "input#academic_type_name[name=?]", "academic_type[name]"
    end
  end
end
