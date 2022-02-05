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

description = "2 planches sapées par Johan ( clean cut surfboards). Modèle Phase 4 montée en futurs
vous pouvez consulter le descriptif sur le site
5''10 x 2 1/4 x 19 à 150€
5''10 x 2 5/16 x 19 à 250€
Planches performantes pour surfeurs confirmés ou allant souvent à l eau et de gabarit n excédant pas 75kg.
Maniables et stable à la rame car le maitre beau est assez haut
Visibles sur SJDL BIDART. L'état justifie le prix. N hésitez pas à appeler pour plus d infos."

puts "----CREATING ALEXIS USER"
user = User.create!(email: 'alex.cimadev@gmail.com',password: "Wagon2021", password_confirmation: "Wagon2021")
file_user = URI.open("https://res.cloudinary.com/dmnzqtckp/image/upload/v1644061809/development/6a2c895n7rml69qqw1p2ms0jqayd.jpg")
user.photo.attach(io: file_user, filename: "alexis_photo.jpg", content_type: "image/jpg")

puts "----CREATING THEO USER"
user1 = User.create!(email: 'theogalais@gmail.com',password: "theogalais@gmail.com", password_confirmation: "theogalais@gmail.com")
file_user = URI.open("https://res.cloudinary.com/dmnzqtckp/image/upload/v1644061879/development/xazul3yjj1cwye2c0hlamrngfjc1.jpg")
user1.photo.attach(io: file_user, filename: "theo_photo.jpg", content_type: "image/jpg")

puts "----CREATING DAVID USER"
user2 = User.create!(email: 'davidsantos@live.fr',password: "davidsantos@live.fr", password_confirmation: "davidsantos@live.fr")

puts "----CREATING ARON USER"
user3 = User.create!(email: 'aron@gmail.com',password: "aron@gmail.com", password_confirmation: "aron@gmail.com")

puts"----CREATING ALEXIS OFFER"

# user for Alexis
offer = Offer.create(title: "Planche Malibu 7'3", location: "Paris", description: description , state: "Never used", price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948_1280.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Oxbow 7'3", location: "Lacanau", description: description , state: "Perfect state", price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2015/11/19/14/02/tables-1051165_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche FISH dura-tac 7'0", location: "Hossegor", state: "Used in WSL once", description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2018/12/16/20/09/surfer-3879268_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Malibu 7'6", location: "La Torche",state: "Good as new", description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/08/07/02/52/people-2599016_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

puts"----CREATING THEO OFFER"

# user for David
offer = Offer.create(title: "Planche YUYO 7'6", location: "San Sebastian", state: "Very good state", description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2020/07/05/04/54/surfer-5371642_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche OLAIAN 7'9", location: "Zarautz", state: "Average state", description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/08/01/14/52/people-2566019_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offer = Offer.create(title: "Planche Quicksilver 7'9", location: "Vannes", state: "Good state", description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"
