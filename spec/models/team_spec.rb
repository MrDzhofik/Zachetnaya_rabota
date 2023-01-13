require_relative '../rails_helper'

RSpec.describe Team, type: :model do
  describe "adding" do
    it 'without team_name' do
      expect{Team.create!}.to raise_error(ActiveRecord::NotNullViolation)
    end
  end
end
