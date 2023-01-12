require 'rails_helper'

RSpec.describe "user_abouts/index", type: :view do
  before(:each) do
    assign(:user_abouts, [
      UserAbout.create!(
        user_id: 2,
        fav_club: "Fav Club",
        comments: 3
      ),
      UserAbout.create!(
        user_id: 2,
        fav_club: "Fav Club",
        comments: 3
      )
    ])
  end

  it "renders a list of user_abouts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Fav Club".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
