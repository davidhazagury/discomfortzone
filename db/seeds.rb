# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


puts "1 - Cleaning the database...."
EventUser.destroy_all
Event.destroy_all
User.destroy_all

puts "2 - Let's create some users..."
user1 = User.create!(email: "musk@gmail.com", password: "1234567", first_name: "elon", last_name:"musk")
user2 = User.create!(email: "elon@gmail.com", password: "1234567", first_name: "CEO", last_name:"SPACEX")
user3 = User.create!(email: "louis@gmail.com", password: "1234567", first_name: "Louis", last_name:"Bemberg")
user4 = User.create!(email: "david@gmail.com", password: "1234567", first_name: "David", last_name:"Hernandez")
user5 = User.create!(email: "jonas@gmail.com", password: "1234567", first_name: "Wolfgang", last_name:"Alkier")
user6 = User.create!(email: "wolfgang@gmail.com", password: "1234567", first_name: "Jonas", last_name:"Fuerstenberg")



puts "3 - Let's create some events..."

# Shark Cage Diving
skydiving_picture = URI.open('https://source.unsplash.com/1600x900/?adventure')
skydiving = Event.new(title: "skydiving", description: "Let's jump out of a plane!", address: "Hong Kong", capacity: 5, user_id: user1.id)
skydiving.photo.attach(io: skydiving_picture, filename: 'spain.png', content_type: 'image/png')
skydiving.save!

# Bungee Jumping
bungeejumping_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
bungeejumping = Event.new(title: "Bungee Jumping", description: "Let's jump off a bridge!", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id)
bungeejumping.photo.attach(io: bungeejumping_picture, filename: 'bungee.png', content_type: 'image/png')
bungeejumping.save!

# Travelling to a Random City
randomcity_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
randomcity = Event.new(title: "Travel to a Random City", description: "Let's jump off a bridge!", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id)
randomcity.photo.attach(io: randomcity_picture, filename: 'randomcity.png', content_type: 'image/png')
randomcity.save!

puts "4 - Let's match some users with some events (event_user)"
# Jonas, David and Wolfgang applying to Lou's bungee jumping
event_user1 = EventUser.create!(motivation: "Please let me in!", status: 1, user_id: user4.id, event_id: bungeejumping.id)
event_user2 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: bungeejumping.id)
event_user3 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user6.id, event_id: bungeejumping.id)

puts "5 - Finished!!"
