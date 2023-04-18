require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        brand: "Brand",
        title: "Title",
        email: "Email",
        phone: "Phone"
      ),
      Order.create!(
        brand: "Brand",
        title: "Title",
        email: "Email",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of orders" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Brand".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
  end
end
