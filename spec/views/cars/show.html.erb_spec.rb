require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    assign(:car, Car.create!(
      brand: "Brand",
      title: "Title",
      img: "Img",
      description: "MyText",
      price: 2.5,
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
