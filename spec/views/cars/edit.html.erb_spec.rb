require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  let(:car) {
    Car.create!(
      brand: "MyString",
      title: "MyString",
      img: "MyString",
      description: "MyText",
      price: 1.5,
      quantity: 1
    )
  }

  before(:each) do
    assign(:car, car)
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(car), "post" do

      assert_select "input[name=?]", "car[brand]"

      assert_select "input[name=?]", "car[title]"

      assert_select "input[name=?]", "car[img]"

      assert_select "textarea[name=?]", "car[description]"

      assert_select "input[name=?]", "car[price]"

      assert_select "input[name=?]", "car[quantity]"
    end
  end
end
