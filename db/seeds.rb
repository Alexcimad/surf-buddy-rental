require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "---DESTROYING CURRENT DATA"
Offer.destroy_all
User.destroy_all


puts "----CREATING USER"
user = User.create!(email: 'alex.cimadev@gmail.com',password: "Wagon2021", password_confirmation: "Wagon2021")
puts"----CREATING OFFER"


10.times do
  offer = Offer.create(title: Faker::Music::RockBand.name, description: Faker::Lorem.paragraph(sentence_count: 2) , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
  file = URI.open("https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948_1280.jpg")
  offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
  puts "- #{offer.title}"
end
