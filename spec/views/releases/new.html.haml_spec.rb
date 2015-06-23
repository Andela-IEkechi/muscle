require 'rails_helper'

RSpec.describe "releases/new", type: :view do
  before(:each) do
    assign(:release, Release.new(
      :user => nil,
      :purchase => nil,
      :confirmation_code => "MyString"
    ))
  end

  it "renders new release form" do
    render

    assert_select "form[action=?][method=?]", releases_path, "post" do

      assert_select "input#release_user_id[name=?]", "release[user_id]"

      assert_select "input#release_purchase_id[name=?]", "release[purchase_id]"

      assert_select "input#release_confirmation_code[name=?]", "release[confirmation_code]"
    end
  end
end
