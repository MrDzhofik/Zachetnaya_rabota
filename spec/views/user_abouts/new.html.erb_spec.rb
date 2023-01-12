require 'rails_helper'

RSpec.describe "user_abouts/new", type: :view do
  before(:each) do
    assign(:user_about, UserAbout.new(
      user_id: 1,
      fav_club: "MyString",
      comments: 1
    ))
  end

  it "renders new user_about form" do
    render

    assert_select "form[action=?][method=?]", user_abouts_path, "post" do

      assert_select "input[name=?]", "user_about[user_id]"

      assert_select "input[name=?]", "user_about[fav_club]"

      assert_select "input[name=?]", "user_about[comments]"
    end
  end
end
