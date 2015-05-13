require 'rails_helper'

RSpec.describe "consignments/new", type: :view do
  before(:each) do
    assign(:consignment, Consignment.new(
      :product => nil,
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders new consignment form" do
    render

    assert_select "form[action=?][method=?]", consignments_path, "post" do

      assert_select "input#consignment_product_id[name=?]", "consignment[product_id]"

      assert_select "input#consignment_quantity[name=?]", "consignment[quantity]"

      assert_select "input#consignment_user_id[name=?]", "consignment[user_id]"
    end
  end
end
