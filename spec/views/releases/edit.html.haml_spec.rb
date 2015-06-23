require 'rails_helper'

RSpec.describe "releases/edit", type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
      :user => nil,
      :purchase => nil,
      :confirmation_code => "MyString"
    ))
  end

  it "renders the edit release form" do
    render

    assert_select "form[action=?][method=?]", release_path(@release), "post" do

      assert_select "input#release_user_id[name=?]", "release[user_id]"

      assert_select "input#release_purchase_id[name=?]", "release[purchase_id]"

      assert_select "input#release_confirmation_code[name=?]", "release[confirmation_code]"
    end
  end
end
