require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        team_name: "Team Name",
        coach: "Coach",
        capitan: "Capitan"
      ),
      Team.create!(
        team_name: "Team Name",
        coach: "Coach",
        capitan: "Capitan"
      )
    ])
  end

  it "renders a list of teams" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Team Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Coach".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Capitan".to_s), count: 2
  end
end
