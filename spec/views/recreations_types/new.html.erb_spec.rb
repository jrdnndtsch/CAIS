require 'rails_helper'

RSpec.describe "recreations_types/new", :type => :view do
  before(:each) do
    assign(:recreations_type, RecreationsType.new(
      :name => "MyString"
    ))
  end

  it "renders new recreations_type form" do
    render

    assert_select "form[action=?][method=?]", recreations_types_path, "post" do

      assert_select "input#recreations_type_name[name=?]", "recreations_type[name]"
    end
  end
end
