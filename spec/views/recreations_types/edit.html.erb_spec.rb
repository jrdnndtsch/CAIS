require 'rails_helper'

RSpec.describe "recreations_types/edit", :type => :view do
  before(:each) do
    @recreations_type = assign(:recreations_type, RecreationsType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit recreations_type form" do
    render

    assert_select "form[action=?][method=?]", recreations_type_path(@recreations_type), "post" do

      assert_select "input#recreations_type_name[name=?]", "recreations_type[name]"
    end
  end
end
