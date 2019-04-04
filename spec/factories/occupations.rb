FactoryBot.define do

  factory :occupation do
    transient do
      date { Faker::Movies::BackToTheFuture.date }
    end

    employee { create(:employee) }
    reason { "MyString" }
    from { date }
    to { date + rund(4).weeks }
  end
end
