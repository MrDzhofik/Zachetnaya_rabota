require 'rails_helper'

RSpec.describe "user_abouts/show", type: :view do
  before(:each) do
    assign(:user_about, UserAbout.create!(
      user_id: 2,
      fav_club: "Fav Club",
      comments: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Fav Club/)
    expect(rendered).to match(/3/)
  end
end
