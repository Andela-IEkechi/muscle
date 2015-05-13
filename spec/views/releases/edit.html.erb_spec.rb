require 'rails_helper'

RSpec.describe "releases/edit", type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
      :product => nil,
      :quantity => 1,
      :user => nil,
      :invoice_number => 1,
      :customer_number => 1
    ))
  end

  it "renders the edit release form" do
    render

    assert_select "form[action=?][method=?]", release_path(@release), "post" do

      assert_select "input#release_product_id[name=?]", "release[product_id]"

      assert_select "input#release_quantity[name=?]", "release[quantity]"

      assert_select "input#release_user_id[name=?]", "release[user_id]"

      assert_select "input#release_invoice_number[name=?]", "release[invoice_number]"

      assert_select "input#release_customer_number[name=?]", "release[customer_number]"
    end
  end
end
