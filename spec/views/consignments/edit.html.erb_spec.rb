require 'rails_helper'

RSpec.describe "consignments/edit", type: :view do
  before(:each) do
    @consignment = assign(:consignment, Consignment.create!(
      :product => nil,
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders the edit consignment form" do
    render

    assert_select "form[action=?][method=?]", consignment_path(@consignment), "post" do

      assert_select "input#consignment_product_id[name=?]", "consignment[product_id]"

      assert_select "input#consignment_quantity[name=?]", "consignment[quantity]"

      assert_select "input#consignment_user_id[name=?]", "consignment[user_id]"
    end
  end
end
