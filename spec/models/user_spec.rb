require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'default_username' do
    it 'returns the username' do
      user = FactoryBot.build(:user)
      expect(user.default_username).to eq(user.email.split('@').first)
    end
  end
end
