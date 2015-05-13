require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :product => nil,
        :customer_name => "Customer Name",
        :customer_phone => 1,
        :invoice_number => 2,
        :customer_address => "MyText"
      ),
      Invoice.create!(
        :product => nil,
        :customer_name => "Customer Name",
        :customer_phone => 1,
        :invoice_number => 2,
        :customer_address => "MyText"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
