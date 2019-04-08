# frozen_string_literal: true

FactoryBot.define do
  factory :occupation do
    transient do
      date { Faker::Time.between(DateTime.now.in_time_zone - 21, DateTime.now.in_time_zone + 22) }
    end

    employee { create(:employee) }
    reason { %w[vacation illness day_off assignment][rand(3)] }
    from { date }
    to { date + rand(13).days }
  end
end
