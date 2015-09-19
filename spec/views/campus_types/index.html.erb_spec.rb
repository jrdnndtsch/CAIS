require 'rails_helper'

RSpec.describe "campus_types/index", :type => :view do
  before(:each) do
    assign(:campus_types, [
      CampusType.create!(
        :name => "Name"
      ),
      CampusType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of campus_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
