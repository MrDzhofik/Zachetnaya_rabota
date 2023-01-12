require 'rails_helper'

RSpec.describe "user_abouts/edit", type: :view do
  let(:user_about) {
    UserAbout.create!(
      user_id: 1,
      fav_club: "MyString",
      comments: 1
    )
  }

  before(:each) do
    assign(:user_about, user_about)
  end

  it "renders the edit user_about form" do
    render

    assert_select "form[action=?][method=?]", user_about_path(user_about), "post" do

      assert_select "input[name=?]", "user_about[user_id]"

      assert_select "input[name=?]", "user_about[fav_club]"

      assert_select "input[name=?]", "user_about[comments]"
    end
  end
end
