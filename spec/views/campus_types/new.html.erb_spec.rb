require 'rails_helper'

RSpec.describe "campus_types/new", :type => :view do
  before(:each) do
    assign(:campus_type, CampusType.new(
      :name => "MyString"
    ))
  end

  it "renders new campus_type form" do
    render

    assert_select "form[action=?][method=?]", campus_types_path, "post" do

      assert_select "input#campus_type_name[name=?]", "campus_type[name]"
    end
  end
end
