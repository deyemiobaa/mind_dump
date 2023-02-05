# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    trait :regular do
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
      confirmed_at { Time.zone.now }
    end

    trait :confirmed do 
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
      confirmed_at { Time.zone.now }
    end
  end
end
