require 'rails_helper'

RSpec.describe "guitars/show", :type => :view do
  before(:each) do
    @guitar = assign(:guitar, Guitar.create!(
      :model => "Model",
      :make => "Make",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/9.99/)
  end
end
