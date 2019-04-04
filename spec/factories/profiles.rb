FactoryBot.define do
  factory :profile do
    employee { create(:employee) }
    position { Faker::Company.profession }
    birthday { Faker::Movies::BackToTheFuture.date }
    full_name { Faker::TvShows::AquaTeenHungerForce.character }
    contacts do
      %w(google facebook twitter github).map{|provider|
        "#{provider}@#{Faker::Omniauth.send(provider.to_sym)[:uid]}"
      }.join("; ")
    end
  end
end
