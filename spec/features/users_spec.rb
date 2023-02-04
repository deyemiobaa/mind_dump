# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  describe 'Get /users/sign_up' do
    it 'returns valid response' do
      visit new_user_registration_path

      fill_in 'Email', with: 'email@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'

      expect(page).to have_content('Thank you for signing up!')
    end
  end
end
