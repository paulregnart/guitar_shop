require 'rails_helper'

RSpec.describe "guitars/edit", :type => :view do
  before(:each) do
    @guitar = assign(:guitar, Guitar.create!(
      :model => "MyString",
      :make => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit guitar form" do
    render

    assert_select "form[action=?][method=?]", guitar_path(@guitar), "post" do

      assert_select "input#guitar_model[name=?]", "guitar[model]"

      assert_select "input#guitar_make[name=?]", "guitar[make]"

      assert_select "input#guitar_price[name=?]", "guitar[price]"
    end
  end
end
