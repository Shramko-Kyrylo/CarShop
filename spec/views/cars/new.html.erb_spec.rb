require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      brand: "MyString",
      title: "MyString",
      img: "MyString",
      description: "MyText",
      price: 1.5,
      quantity: 1
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[brand]"

      assert_select "input[name=?]", "car[title]"

      assert_select "input[name=?]", "car[img]"

      assert_select "textarea[name=?]", "car[description]"

      assert_select "input[name=?]", "car[price]"

      assert_select "input[name=?]", "car[quantity]"
    end
  end
end
