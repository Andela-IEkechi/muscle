require 'rails_helper'

RSpec.describe "releases/new", type: :view do
  before(:each) do
    assign(:release, Release.new(
      :product => nil,
      :quantity => 1,
      :user => nil,
      :invoice_number => 1,
      :customer_number => 1
    ))
  end

  it "renders new release form" do
    render

    assert_select "form[action=?][method=?]", releases_path, "post" do

      assert_select "input#release_product_id[name=?]", "release[product_id]"

      assert_select "input#release_quantity[name=?]", "release[quantity]"

      assert_select "input#release_user_id[name=?]", "release[user_id]"

      assert_select "input#release_invoice_number[name=?]", "release[invoice_number]"

      assert_select "input#release_customer_number[name=?]", "release[customer_number]"
    end
  end
end
