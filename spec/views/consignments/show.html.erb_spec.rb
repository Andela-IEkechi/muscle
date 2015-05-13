require 'rails_helper'

RSpec.describe "consignments/show", type: :view do
  before(:each) do
    @consignment = assign(:consignment, Consignment.create!(
      :product => nil,
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
