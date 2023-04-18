require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      brand: "MyString",
      title: "MyString",
      email: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[brand]"

      assert_select "input[name=?]", "order[title]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[phone]"
    end
  end
end
