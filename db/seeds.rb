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
Message.destroy_all
Review.destroy_all
Favourite.destroy_all
Event.destroy_all
User.destroy_all

puts "2 - Let's create some users ... with pictures"
user2 = User.create!(email: "elon@gmail.com", password: "1234567", first_name: "CEO", last_name:"SPACEX")
user3 = User.create!(email: "louis@gmail.com", password: "1234567", first_name: "Louis", last_name:"Bemberg")
user4 = User.create!(email: "david@gmail.com", password: "1234567", first_name: "David", last_name:"Hernandez")
user5 = User.create!(email: "wolfgang@gmail.com", password: "1234567", first_name: "Wolfgang", last_name:"Alkier")


elon_pic = URI.open ("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg")
user1 = User.new(email: "musk@gmail.com", password: "1234567", first_name: "elon", last_name:"musk")
user1.photo.attach(io: elon_pic, filename: 'elon.png', content_type: 'image/png')
user1.save!


vader_pic = URI.open ("https://avatars.alphacoders.com/avatars/view/177869")
user8 = User.new(email: "vader@gmail.com", password: "1234567", first_name: "darth",last_name: 'vader')
user8.photo.attach(io: vader_pic, filename: 'vader.png', content_type: 'image/png')
user8.save!

steve_pic = URI.open ("https://www.pioneeringminds.com/wp-content/uploads/2018/10/Steve-Jobs-1440x960.jpg")
user7 = User.new(email: "steve@gmail.com", password: "1234567", first_name: "steve",last_name: 'jobs')
user7.photo.attach(io: steve_pic, filename: 'steve.png', content_type: 'image/png')
user7.save!

jonas_pic = URI.open ("http://res.cloudinary.com/dgsqurpio/image/upload/v1593009378/jauae2tbjyzjuhccirbg.jpg")
user6 = User.new(email: "jonas@gmail.com", password: "1234567", first_name: "Jonas", last_name:"Fuerstenberg")
user6.photo.attach(io: jonas_pic, filename: 'jonas.png', content_type: 'jonas/png')
user6.save!

puts "3 - Let's create some events..."

# HIKING TRIP THAT LASTS 2 DAYS WITH A LONG DESCRIPTION
rainbow_mountain = URI.open("https://res.cloudinary.com/dgsqurpio/image/upload/v1592991124/nqp81ovayvop227ne42g.jpg")
hiking = Event.new(title: "special-hike", start_time: "2020-08-10 12:00", end_time: "2020-08-12 18:00", description: "Early birds catches the worm and the best light in the world !! We are gonna enjoy the most beautiful landscape that vienna has to offer. Please be advised to bring proper equipment since the trip will be the whole weekend - that includes a Hiking backpack
Weather-appropriate clothing (think moisture-wicking and layers), Hiking boots or shoes, Plenty of food, Plenty of water, sleeping bag, some toold like a knife.. As the host I will bring a First-aid kit as I'm a trained medic. THIS IS A REAL OUTDOOR ADVENTURE, whoooo !!", address: "vienna", capacity: 5, user_id: user3.id)
hiking.photo.attach(io: rainbow_mountain, filename: 'rainbow_mountain.png', content_type: 'image/png')
hiking.save!

# Shark Cage Diving
skydiving_picture = URI.open('https://source.unsplash.com/1600x900/?adventure')
skydiving = Event.new(title: "skydiving", start_time: "2020-07-18 17:00", end_time: "2020-07-18 20:00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.", address: "Hong Kong", capacity: 5, user_id: user1.id)
skydiving.photo.attach(io: skydiving_picture, filename: 'spain.png', content_type: 'image/png')
skydiving.save!

# Bungee Jumping
bungeejumping_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
bungeejumping = Event.new(title: "Bungee Jumping", start_time: "2020-08-06 16:00", end_time: "2020-08-06 18:00", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id)
bungeejumping.photo.attach(io: bungeejumping_picture, filename: 'bungee.png', content_type: 'image/png')
bungeejumping.save!

# Travelling to a Random City
randomcity_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
randomcity = Event.new(title: "Travel to a Random City", start_time: "2020-08-28 10:00", end_time: "2020-08-30 20:00", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.

Quisque massa nulla, pretium eget varius et, ultrices quis ante. Curabitur fringilla sit amet lectus eu fringilla.", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id)
randomcity.photo.attach(io: randomcity_picture, filename: 'randomcity.png', content_type: 'image/png')
randomcity.save!

# PARAGLIDING
paragliding_pic = URI.open("https://res.cloudinary.com/dgsqurpio/image/upload/v1592991090/v4fg14hfhizujxdvucjw.jpg")
paragliding = Event.new(title: "paragliding",start_time: "2020-08-10 14:00", end_time: "2020-08-10 17:00", description: "Exhileration experience just floating through the air and through the clouds", address: "switzerland", capacity: 4, user_id: user5.id)
paragliding.photo.attach(io: paragliding_pic, filename: 'paragliding.png', content_type: 'image/png')
paragliding.save!

puts "4 - Let's match some users with some events (event_user)"
# Jonas, David and Wolfgang applying to Lou's bungee jumping
event_user1 = EventUser.create!(motivation: "Please let me in!", status: 1, user_id: user4.id, event_id: bungeejumping.id)
event_user2 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: bungeejumping.id)
event_user3 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user6.id, event_id: bungeejumping.id)

puts "5 - Let´s create some reviews"
review1 = Review.create!(content:"Amazing experience. We have to repeat!", rating: 5,user_id: user1.id, event_id: bungeejumping.id)
review2 = Review.create!(content:"Worst experience ever! Don´t go to any other event of this host", rating: 1, user_id:user4.id , event_id:bungeejumping.id)
review3 = Review.create!(content:"Super nice!", rating: 3, user_id: user6.id, event_id: paragliding.id)
review4 = Review.create!(content:"Pow pow pow, Discomfort zone is amaaazing", rating: 4,user_id: user5.id, event_id: hiking.id)
review5 = Review.create!(content:"Could´ve been better", rating: 2,user_id: user1.id, event_id: hiking.id)

puts "6 - FINITOOO"

