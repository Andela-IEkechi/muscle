require 'rails_helper'

RSpec.describe "consignments/index", type: :view do
  before(:each) do
    assign(:consignments, [
      Consignment.create!(
        :product => nil,
        :quantity => 1,
        :user => nil
      ),
      Consignment.create!(
        :product => nil,
        :quantity => 1,
        :user => nil
      )
    ])
  end

  it "renders a list of consignments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
