require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    assign(:order, Order.create!(
      brand: "Brand",
      title: "Title",
      email: "Email",
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
