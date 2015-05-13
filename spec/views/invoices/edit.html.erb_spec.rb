require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :product => nil,
      :customer_name => "MyString",
      :customer_phone => 1,
      :invoice_number => 1,
      :customer_address => "MyText"
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input#invoice_product_id[name=?]", "invoice[product_id]"

      assert_select "input#invoice_customer_name[name=?]", "invoice[customer_name]"

      assert_select "input#invoice_customer_phone[name=?]", "invoice[customer_phone]"

      assert_select "input#invoice_invoice_number[name=?]", "invoice[invoice_number]"

      assert_select "textarea#invoice_customer_address[name=?]", "invoice[customer_address]"
    end
  end
end
