require 'rails_helper'

RSpec.describe "guitars/index", :type => :view do
  before(:each) do
    assign(:guitars, [
      Guitar.create!(
        :model => "Model",
        :make => "Make",
        :price => "9.99"
      ),
      Guitar.create!(
        :model => "Model",
        :make => "Make",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of guitars" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
