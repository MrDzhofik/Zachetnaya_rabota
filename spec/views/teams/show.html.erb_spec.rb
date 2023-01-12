require 'rails_helper'

RSpec.describe "teams/show", type: :view do
  before(:each) do
    assign(:team, Team.create!(
      team_name: "Team Name",
      coach: "Coach",
      capitan: "Capitan"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Team Name/)
    expect(rendered).to match(/Coach/)
    expect(rendered).to match(/Capitan/)
  end
end
