# frozen_string_literal: true
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
25.times do
  e = Employee.create(full_name: Faker::TvShows::StarTrek.character)
  e.create_profile(
    position: Faker::Company.profession,
    birthday: Faker::Movies::BackToTheFuture.date,
    contacts: Faker::Omniauth.github[:uid]
  )
end

25.times do
  e = Employee.create(full_name: Faker::TvShows::StarTrek.character)
  e.create_profile(
    position: Faker::Company.profession,
    birthday: Faker::Movies::BackToTheFuture.date,
    contacts: Faker::Omniauth.github[:uid]
  )
  @from = Faker::Time.between(DateTime.now - 21, DateTime.now + 22)
  @to = @from + rand(13).days
  e.occupations.create!(
    reason: %w[vacation illness day_off assignment][rand(3)],
    from: @from,
    to: @to
  )
end
