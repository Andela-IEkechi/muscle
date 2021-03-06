require 'rails_helper'

RSpec.describe "releases/index", type: :view do
  before(:each) do
    assign(:releases, [
      Release.create!(
        :product => nil,
        :quantity => 1,
        :user => nil,
        :invoice_number => 2,
        :customer_number => 3
      ),
      Release.create!(
        :product => nil,
        :quantity => 1,
        :user => nil,
        :invoice_number => 2,
        :customer_number => 3
      )
    ])
  end

  it "renders a list of releases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
