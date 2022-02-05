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

# user for Alexis
offer = Offer.create(title: "Planche Malibu 7'3", location: "Paris", description: "Bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948_1280.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Oxbow 7'3", location: "Paris", description: "Neuve" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2015/11/19/14/02/tables-1051165_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche FISH dura-tac 7'0", location: "Paris", description: "Très bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2018/12/16/20/09/surfer-3879268_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Malibu 7'6", location: "Paris", description: "Très bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/08/07/02/52/people-2599016_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"


puts "----CREATING USER"
user1 = User.create!(email: 'david.santos@gmail.com',password: "Wagon2021", password_confirmation: "Wagon2021")
puts"----CREATING OFFER"

# user for David
offer = Offer.create(title: "Planche YUYO 7'6", location: "Biarritz", description: "Bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2020/07/05/04/54/surfer-5371642_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche OLAIAN 7'9", location: "Biarritz", description: "Bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/08/01/14/52/people-2566019_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Quicksilver 7'3", location: "Biarritz", description: "Très bon état" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/05/22/19/49/surfer-2335087_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Quicksilver 7'9", location: "Biarritz", description: "Neuve" , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"
