require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      team_name: "MyString",
      coach: "MyString",
      capitan: "MyString"
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input[name=?]", "team[team_name]"

      assert_select "input[name=?]", "team[coach]"

      assert_select "input[name=?]", "team[capitan]"
    end
  end
end
