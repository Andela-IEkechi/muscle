require 'rails_helper'

RSpec.describe "releases/index", type: :view do
  before(:each) do
    assign(:releases, [
      Release.create!(
        :user => nil,
        :purchase => nil,
        :confirmation_code => "Confirmation Code"
      ),
      Release.create!(
        :user => nil,
        :purchase => nil,
        :confirmation_code => "Confirmation Code"
      )
    ])
  end

  it "renders a list of releases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Confirmation Code".to_s, :count => 2
  end
end
