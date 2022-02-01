# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Offer.destroy_all
User.destroy_all

user = User.create!(email: 'alex.cimadev@gmail.com',password: "Wagon2021", password_confirmation: "Wagon2021")
10.times do
  Offer.create!(title: Faker::Music::RockBand.name, description: Faker::Lorem.paragraph(sentence_count: 2) , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
end
