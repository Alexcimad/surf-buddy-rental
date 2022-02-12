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

offers=[]

description = "2 s sapées par Johan ( clean cut surfboards). Modèle Phase 4 montée en futurs
vous pouvez consulter le descriptif sur le site
5''10 x 2 1/4 x 19 à 150€
5''10 x 2 5/16 x 19 à 250€
s performantes pour surfeurs confirmés ou allant souvent à l eau et de gabarit n excédant pas 75kg.
Maniables et stable à la rame car le maitre beau est assez haut
Visibles sur SJDL BIDART. L'état justifie le prix. N hésitez pas à appeler pour plus d infos."

CONST_STATE = ["Perfect state", "Good state", "Average state", "Bad state but functional"]

puts "----CREATING ALEXIS USER"
user = User.create!(email: 'alex.cimadev@gmail.com', password: "Wagon2021", password_confirmation: "Wagon2021", pseudo: "Alexis")
file_user = URI.open("alexis.jpg")
user.photo.attach(io: file_user, filename: "alexis_photo.jpg", content_type: "image/jpg")

puts "----CREATING THEO USER"
user1 = User.create!(email: 'theogalais@gmail.com',password: "theogalais@gmail.com", password_confirmation: "theogalais@gmail.com", pseudo: "Theo")
file_user1 = URI.open("theo.jpg")
user1.photo.attach(io: file_user1, filename: "theo_photo.jpg", content_type: "image/jpg")

puts "----CREATING DAVID USER"
user2 = User.create!(email: 'davidsantos@live.fr',password: "davidsantos@live.fr", password_confirmation: "davidsantos@live.fr", pseudo: "David")
file_user2 = URI.open("david.jpg")
user2.photo.attach(io: file_user2, filename: "david_photo.jpg", content_type: "image/jpg")

puts "----CREATING ARON USER"
user3 = User.create!(email: 'aron@gmail.com',password: "aron@gmail.com", password_confirmation: "aron@gmail.com", pseudo: "Aron")
file_user3 = URI.open("aron.png")
user3.photo.attach(io: file_user3, filename: "aron_photo.jpg", content_type: "image/jpg")

puts "----CREATING KELLY S. USER"
kellyS = User.create!(email: 'kellyS@gmail.com',password: "WSL2021", password_confirmation: "WSL2021", pseudo: "Kelly")
file_user4 = URI.open("https://res.cloudinary.com/dmnzqtckp/image/upload/v1644534494/pzrxzpomr8mup05gnztk.jpg")
kellyS.photo.attach(io: file_user4, filename: "flores_photo.jpg", content_type: "image/jpg")

puts "----CREATING JEREMY F. USER"
jeremyF = User.create!(email: 'jeremyF@gmail.com',password: "WSL2021", password_confirmation: "WSL2021", pseudo:"Jeremy")
file_user5 = URI.open("https://res.cloudinary.com/dmnzqtckp/image/upload/v1644534528/ke6ltckdh4ii7rcdvkhf.jpg")
jeremyF.photo.attach(io: file_user5, filename: "flores_photo.jpg", content_type: "image/jpg")
puts"----CREATING ALEXIS OFFER"

# user for Alexis
offer = Offer.create(title: " Malibu 7'3", location: "Paris", description: description , state: CONST_STATE.sample, price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file = URI.open("https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948_1280.jpg")
offer.photos.attach(io: file, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer.title}"

offers << offer

offer2 = Offer.create(title: " Oxbow 7'3", location: "Lacanau", description: description , state: CONST_STATE.sample, price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file2 = URI.open("https://cdn.pixabay.com/photo/2015/11/19/14/02/tables-1051165_960_720.jpg")
offer2.photos.attach(io: file2, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer2.title}"

offers << offer2

offer3 = Offer.create(title: " FISH dura-tac 7'0", location: "Hossegor", state: CONST_STATE.sample, description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file3 = URI.open("https://cdn.pixabay.com/photo/2018/12/16/20/09/surfer-3879268_960_720.jpg")
offer3.photos.attach(io: file3, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer3.title}"

offers << offer3

offer4 = Offer.create(title: " Malibu 7'6", location: "La Torche",state: CONST_STATE.sample, description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user.id )
file4 = URI.open("https://cdn.pixabay.com/photo/2017/08/07/02/52/people-2599016_960_720.jpg")
offer4.photos.attach(io: file4, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer4.title}"

offers << offer4

puts"----CREATING THEO OFFER"

# user for David
offer5 = Offer.create(title: " YUYO 7'6", location: "San Sebastian", state: CONST_STATE.sample, description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file5 = URI.open("https://cdn.pixabay.com/photo/2020/07/05/04/54/surfer-5371642_960_720.jpg")
offer5.photos.attach(io: file5, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer5.title}"

offers << offer5


offer6 = Offer.create(title: " OLAIAN 7'9", location: "Zarautz", state: CONST_STATE.sample, description: description , price_per_date: (1..100).to_a.sample , start_available_date: Faker::Date.in_date_period, end_available_date: Faker::Date.in_date_period, user_id: user1.id )
file6 = URI.open("https://cdn.pixabay.com/photo/2017/08/01/14/52/people-2566019_960_720.jpg")
offer6.photos.attach(io: file6, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer6.title}"

offers << offer6

offer_demo_vannes = Offer.create(title: " Quicksilver 7'9", location: "Vannes", state: "Average state", description: "I used this board a lot during my studies but now I
want to get rid of it to pass it to someone who wants to learn surfing" , price_per_date: 70 , start_available_date: Date.today, end_available_date: Faker::Date.between(from: '2022-08-30', to: '2022-09-30'), user_id: user1.id )
file7 = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
file_add_photo = URI.open("https://cdn.pixabay.com/photo/2017/08/07/02/52/people-2599016_960_720.jpg")
offer_demo_vannes.photos.attach(io: file_add_photo, filename: "offer-pic.jpg", content_type: "image/jpg")
offer_demo_vannes.photos.attach(io: file7, filename: "offer-pic.jpg", content_type: "image/jpg")

puts "- #{offer_demo_vannes.title}"

offers << offer_demo_vannes

offer_demo_auray = Offer.create(title: " Slater Design 7'9", location: "Auray", state: "Good state", description: "I used this board a lot during my vacation and competition but it 
is still in a very good state. You can use it both for competition or fun", price_per_date: 30 , start_available_date: Date.today, end_available_date: Faker::Date.between(from: '2022-08-30', to: '2022-09-30'), user_id: user3.id )
file8 = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
offer_demo_auray.photos.attach(io: file8, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer_demo_auray.title}"

offers << offer_demo_auray

offer_demo_Quiberon = Offer.create(title: " Bic 6'3 ", location: "Quiberon", state: "Good state", description: "I
used a lot this board during my vacation in Brittany. It was perfect to begin surfing.", price_per_date: 20 , start_available_date: Date.today, end_available_date: Faker::Date.between(from: '2022-08-30', to: '2022-09-30'), user_id: user3.id )
file9 = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
offer_demo_Quiberon.photos.attach(io: file9, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer_demo_Quiberon.title}"

offers << offer_demo_Quiberon

offer_demo_Carnac = Offer.create(title: " Minvielle 8'", location: "Carnac", state: "Average state", description: "I
used a lot this board during my vacation in Brittany. It was perfect to begin surfing.", price_per_date: 20 , start_available_date: Date.today, end_available_date: Faker::Date.between(from: '2022-08-30', to: '2022-09-30'), user_id: user.id )
file9 = URI.open("https://cdn.pixabay.com/photo/2016/08/16/23/22/beach-1599234_960_720.jpg")
offer_demo_Carnac.photos.attach(io: file9, filename: "offer-pic.jpg", content_type: "image/jpg")
puts "- #{offer_demo_Carnac.title}"

offers << offer_demo_Carnac

offers[0..5].each do |offer|
  reviews = []
  reviewKS = Review.create!(title: "Best board I've Ever had!", comment: "This is the best surfboard to use on pipeline spot", rating: (1..5).to_a.sample, user_id:kellyS.id, offer_id: offer.id )
  reviewJF = Review.create!(title: "I love this board for Hossegor!",comment: "I loved to use this board in the cul nu beach of Hossegor. I higly recommend it",rating: (1..5).to_a.sample, user_id:jeremyF.id, offer_id: offer.id )
  reviewAron = Review.create!(title: "Good board to play in Britanny!", comment: "For funny spots in Carnac, it is really usefull", rating: (1..5).to_a.sample, user_id:user3.id, offer_id: offer.id )
  reviews = [reviewKS, reviewJF, reviewAron]
  offer.reviews = reviews
end

offers[7..9].each do |offer|
  reviews = []
  reviewKS = Review.create!(title: "Best board I've Ever had!", comment: "This is the best surfboard to use on pipeline spot", rating: (1..5).to_a.sample, user_id:kellyS.id, offer_id: offer.id )
  reviewJF = Review.create!(title: "I love this board for Hossegor!",comment: "I loved to use this board in the cul nu beach of Hossegor. I higly recommend it",rating: (1..5).to_a.sample, user_id:jeremyF.id, offer_id: offer.id )
  reviewAron = Review.create!(title: "Good board to play in Britanny!", comment: "For funny spots in Carnac, it is really usefull", rating: (1..5).to_a.sample, user_id:user3.id, offer_id: offer.id )
  reviews = [reviewKS, reviewJF, reviewAron]
  offer.reviews = reviews
end


reviews = []
reviewKS = Review.create!(title: "Best board I've Ever had!", comment: "This is the best surfboard to use on pipeline spot", rating: 4, user_id:kellyS.id, offer_id: offer.id )
reviewJF = Review.create!(title: "I love this board for Hossegor!",comment: "I loved to use this board in the cul nu beach of Hossegor. I higly recommend it",rating: 5, user_id:jeremyF.id, offer_id: offer.id )
reviewAron = Review.create!(title: "Good board to play in Britanny!", comment: "For funny spots in Carnac, it is really usefull", rating: 4, user_id:user3.id, offer_id: offer.id )
reviews = [reviewKS, reviewJF, reviewAron]
offers[6].reviews = reviews

#Create booking for David
booking1 = Booking.create!(total_price: 200, start_rental_date: Faker::Date.backward(days: 30),end_rental_date: Faker::Date.backward(days: 15),user_id: user2.id, offer_id: offer4.id)
booking2 = Booking.create!(total_price: 240, start_rental_date: Faker::Date.backward(days: 50),end_rental_date: Faker::Date.backward(days: 22),user_id: user2.id, offer_id: offer3.id)