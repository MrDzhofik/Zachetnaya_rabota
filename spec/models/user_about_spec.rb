require_relative '../rails_helper'

RSpec.describe UserAbout, type: :model do
  describe 'adding user_about' do
    it 'without arguments' do
      expect{UserAbout.create!}.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'without user' do
      expect{UserAbout.create!(user_id:100)}.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'with user' do
      User.create!(email: 'a@d.com', password: '1234567')
      expect((UserAbout.create!(user_id:1))[:user_id]).to eq(1)
    end
  end
end
