# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CallToActions', type: :request do
  describe 'GET /welcome' do
    it 'returns http success' do
      get '/welcome'
      expect(response).to have_http_status(:success)

      expect(response.body).to include('Thank you for signing up!')
    end
  end
end
