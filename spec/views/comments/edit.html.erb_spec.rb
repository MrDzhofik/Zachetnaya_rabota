require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  let(:comment) {
    Comment.create!(
      user: nil,
      title: "MyString",
      body: "MyText",
      match: nil
    )
  }

  before(:each) do
    assign(:comment, comment)
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(comment), "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[title]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[match_id]"
    end
  end
end
