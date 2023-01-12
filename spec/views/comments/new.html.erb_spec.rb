require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      user: nil,
      title: "MyString",
      body: "MyText",
      match: nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[title]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[match_id]"
    end
  end
end
