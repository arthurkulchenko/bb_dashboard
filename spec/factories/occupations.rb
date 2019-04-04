FactoryBot.define do

  factory :occupation do
    transient do
      date { Faker::Movies::BackToTheFuture.date }
    end

    employee { create(:employee) }
    reason { ["vacation", "illness", "day_of", "assignment"][rand(3)]}
    from { date }
    to { date + rand(13).days }
  end
end
