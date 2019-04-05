# frozen_string_literal: true

FactoryBot.define do
  factory :profile do
    employee { create(:employee) }
    position { Faker::Company.profession }
    birthday { Faker::Movies::BackToTheFuture.date }
    contacts do
      %w[google facebook twitter github].map do |provider|
        "#{provider}@#{Faker::Omniauth.send(provider.to_sym)[:uid]}"
      end.join('; ')
    end
  end
end
