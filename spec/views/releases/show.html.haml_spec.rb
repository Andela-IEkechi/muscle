require 'rails_helper'

RSpec.describe "releases/show", type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
      :user => nil,
      :purchase => nil,
      :confirmation_code => "Confirmation Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Confirmation Code/)
  end
end
