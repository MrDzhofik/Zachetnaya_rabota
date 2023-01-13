require_relative '../rails_helper'

RSpec.describe Team, type: :model do
  describe "adding" do
    it 'without arguments' do
        expect{Match.create!}.to raise_error(ActiveRecord::NotNullViolation)
    end

    it 'with arguments' do
      expect((Match.create!(sop1_id:1, sop2_id:2))[:id]).to eq(1)
    end
  end
end