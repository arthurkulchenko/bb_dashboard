# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    department { create(:department) }
  end
end
