# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  before_validation :set_default_username, on: :create

  def default_username
    email.split('@').first
  end

  def set_default_username
    self.username = default_username if username.blank?
  end
end
