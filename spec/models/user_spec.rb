# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'default_username' do
    it 'returns the username' do
      user = FactoryBot.create(:user, :regular)
      expect(user.default_username).to eq(user.email.split('@').first)
    end

    it 'setting the username works' do
      user = FactoryBot.build(:user, :regular)

      expect(user.username).to eq ""

      user.set_default_username

      expect(user.username).to eq(user.email.split('@').first)
    end
  end
end
