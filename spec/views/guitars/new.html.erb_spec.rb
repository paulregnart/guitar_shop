require 'rails_helper'

RSpec.describe "guitars/new", :type => :view do
  before(:each) do
    assign(:guitar, Guitar.new(
      :model => "MyString",
      :make => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new guitar form" do
    render

    assert_select "form[action=?][method=?]", guitars_path, "post" do

      assert_select "input#guitar_model[name=?]", "guitar[model]"

      assert_select "input#guitar_make[name=?]", "guitar[make]"

      assert_select "input#guitar_price[name=?]", "guitar[price]"
    end
  end
end
