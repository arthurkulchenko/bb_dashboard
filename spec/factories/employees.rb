# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    full_name { Faker::Movies::LordOfTheRings.character }
  end
end
