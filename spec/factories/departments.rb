FactoryBot.define do
  factory :department do
    city { Faker::Movies::StarWars.planet }
    seo { Faker::TvShows::Simpsons.character }
  end
end
