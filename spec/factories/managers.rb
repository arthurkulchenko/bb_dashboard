FactoryBot.define do
  factory :manager do
    department { create(:department) }
    full_name { Faker::Movies::LordOfTheRings.character }
  end

end
