require 'rails_helper'

RSpec.describe "recreations_types/index", :type => :view do
  before(:each) do
    assign(:recreations_types, [
      RecreationsType.create!(
        :name => "Name"
      ),
      RecreationsType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of recreations_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
