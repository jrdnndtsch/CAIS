require 'rails_helper'

RSpec.describe "campus_types/edit", :type => :view do
  before(:each) do
    @campus_type = assign(:campus_type, CampusType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit campus_type form" do
    render

    assert_select "form[action=?][method=?]", campus_type_path(@campus_type), "post" do

      assert_select "input#campus_type_name[name=?]", "campus_type[name]"
    end
  end
end
