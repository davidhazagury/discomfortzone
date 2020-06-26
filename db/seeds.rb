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

# --------- CREATING USERS ------------------------
puts "2 - Let's create some users ... with pictures"

# User1: Elon Musk
elon_pic = URI.open ("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg")
user1 = User.new(email: "musk@gmail.com", password: "1234567", first_name: "Elon", last_name:"Musk")
user1.photo.attach(io: elon_pic, filename: 'elon.png', content_type: 'image/png')
user1.save!

# User2: Jeff Bezos
jeff_pic =  URI.open ("https://pbs.twimg.com/profile_images/669103856106668033/UF3cgUk4_400x400.jpg")
user2 = User.new(email: "jeff@gmail.com", password: "1234567", first_name: "Jeff", last_name:"Bezos")
user2.photo.attach(io: jeff_pic, filename: 'jeff.png', content_type: 'image/png')
user2.save!

# User3: Lou
lou_pic = URI.open ("https://avatars3.githubusercontent.com/u/62842976?s=460&u=c9393f510acd2f73143a520bff805a36db8037d0&v=4")
user3 = User.new(email: "louis@gmail.com", password: "1234567", first_name: "Louis", last_name:"Bemberg")
user3.photo.attach(io: lou_pic, filename: 'lou.png', content_type: 'image/png')
user3.save!


# User4: David
david_pic = URI.open ("https://avatars1.githubusercontent.com/u/57439844?s=400&u=974c959854561ec99af5e770a8455ac2134e9455&v=4")
user4 = User.new(email: "david@gmail.com", password: "1234567", first_name: "David", last_name:"Hernandez")
user4.photo.attach(io: david_pic, filename: 'david.png', content_type: 'image/png')
user4.save!

# User5: Wolfgang
wolfgang_pic = URI.open('https://avatars2.githubusercontent.com/u/55288885?s=400&u=a5ead364f1ee4761ac36793fce0ee4d5e03d238c&v=4')
user5 = User.new(email: "wolfgang@gmail.com", password: "1234567", first_name: "Wolfgang", last_name:"Alkier")
user5.photo.attach(io: wolfgang_pic, filename: 'wolfgang.png', content_type: 'image/png')
user5.save!

# User6: TheCodingJonas
jonas_pic = URI.open ("https://res.cloudinary.com/dzevgses3/image/upload/v1593172342/jonas-profile.jpg")
user6 = User.new(email: "jonas@gmail.com", password: "1234567", first_name: "Jonas", last_name:"Fuerstenberg")
user6.photo.attach(io: jonas_pic, filename: 'jonas.png', content_type: 'image/png')
user6.save!

# User7: Steve Jobs
steve_pic = URI.open ("https://www.pioneeringminds.com/wp-content/uploads/2018/10/Steve-Jobs-1440x960.jpg")
user7 = User.new(email: "steve@gmail.com", password: "1234567", first_name: "steve",last_name: 'jobs')
user7.photo.attach(io: steve_pic, filename: 'steve.png', content_type: 'image/png')
user7.save!

# User8: Darth Vader
vader_pic = URI.open ("https://avatars.alphacoders.com/avatars/view/177869")
user8 = User.new(email: "vader@gmail.com", password: "1234567", first_name: "Darth",last_name: 'Vader')
user8.photo.attach(io: vader_pic, filename: 'vader.png', content_type: 'image/png')
user8.save!

# User9: Gabriela Silvero
gabriela_pic = URI.open ("https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
user9 = User.new(email: "gabriela@gmail.com", password: "1234567", first_name: "Gabriela",last_name: 'Silvero')
user9.photo.attach(io: gabriela_pic, filename: 'gabriela.png', content_type: 'image/png')
user9.save!

# User10: Sarah Brown
sarah_pic = URI.open ("https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
user10 = User.new(email: "sarah@gmail.com", password: "1234567", first_name: "Sarah",last_name: 'Brown')
user10.photo.attach(io: sarah_pic, filename: 'sarah.png', content_type: 'image/png')
user10.save!

# User11 Without Picture: Boris Paillard
user11 = User.create!(email: "boris@gmail.com", password: "1234567", first_name: "Boris",last_name: 'Paillard')

# User11 Without Picture: Seb Saunier
user12 = User.create!(email: "sebjesus@gmail.com", password: "1234567", first_name: "Sebastien",last_name: 'Saunier')




puts "3 - Let's create some events..."

# HIKING TRIP THAT LASTS 2 DAYS WITH A LONG DESCRIPTION
rainbow_mountain = URI.open("https://res.cloudinary.com/dgsqurpio/image/upload/v1592991124/nqp81ovayvop227ne42g.jpg")
hiking = Event.new(title: "Special Hike", start_time: "2020-08-10 12:00", end_time: "2020-08-12 18:00", description: "Early birds catches the worm and the best light in the world !! We are gonna enjoy the most beautiful landscape that vienna has to offer. Please be advised to bring proper equipment since the trip will be the whole weekend - that includes a Hiking backpack
Weather-appropriate clothing (think moisture-wicking and layers), Hiking boots or shoes, Plenty of food, Plenty of water, sleeping bag, some toold like a knife.. As the host I will bring a First-aid kit as I'm a trained medic. THIS IS A REAL OUTDOOR ADVENTURE, whoooo !!", address: "Vienna", capacity: 5, user_id: user6.id)
hiking.photo.attach(io: rainbow_mountain, filename: 'rainbow_mountain.png', content_type: 'image/png')
hiking.save!

# Shark Cage Diving
skydiving_picture = URI.open('https://source.unsplash.com/1600x900/?adventure')
skydiving = Event.new(title: "Skydiving", start_time: "2020-07-18 17:00", end_time: "2020-07-18 20:00", description: "I'm looking for some people to join me in this crazy adventure. I've never jumped out of a plane and none of my friends want to join me... Will you?", address: "Hong Kong", capacity: 8, user_id: user4.id)
skydiving.photo.attach(io: skydiving_picture, filename: 'spain.png', content_type: 'image/png')
skydiving.save!

# Bungee Jumping
bungeejumping_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
bungeejumping = Event.new(title: "Bungee Jumping", start_time: "2020-08-06 16:00", end_time: "2020-08-06 18:00", description:"A state a complete free fall until an elastic cable saves your life. One of the greatest adrenaline rushes you'll ever experience. People with a fear of heights are recommended to join this one!", address: "Lausanne, Switzerland", capacity: 5, user_id: user6.id)
bungeejumping.photo.attach(io: bungeejumping_picture, filename: 'bungee.png', content_type: 'image/png')
bungeejumping.save!

# Travelling to a Random City
randomcity_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
randomcity = Event.new(title: "Travel to a Random City", start_time: "2020-08-28 10:00", end_time: "2020-08-30 20:00", description:"Here's the plan: we throw a dart on a map, and we all fly there as a group. Fate will decide where our next adventure will take us!", address: "Lausanne, Switzerland", capacity: 5, user_id: user4.id)
randomcity.photo.attach(io: randomcity_picture, filename: 'randomcity.png', content_type: 'image/png')
randomcity.save!

# PARAGLIDING
paragliding_pic = URI.open("https://res.cloudinary.com/dgsqurpio/image/upload/v1592991090/v4fg14hfhizujxdvucjw.jpg")
paragliding = Event.new(title: "Paragliding",start_time: "2020-08-10 14:00", end_time: "2020-08-10 17:00", description: "Exhileration experience just floating through the air and through the clouds", address: "switzerland", capacity: 4, user_id: user6.id)
paragliding.photo.attach(io: paragliding_pic, filename: 'paragliding.png', content_type: 'image/png')
paragliding.save!

# Create a Coding School
coding_pic = URI.open("https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
coding = Event.new(title: "Build a Coding School",start_time: "2021-06-15 14:00", end_time: "2021-06-15 19:00", description: "I want to change people's lives and teach them how to code. I just need a really good CTO to make it happen!", address: "Paris", capacity: 3, user_id: user11.id)
coding.photo.attach(io: coding_pic, filename: 'coding.png', content_type: 'image/png')
coding.save!

puts "4 - Let's match some users with some events (event_user)"
# People applying to Jonas's bungee Jumps
event_user1 = EventUser.create!(motivation: "I would love to do this, this is my biggest fear!", status: 1, user_id: user3.id, event_id: bungeejumping.id)
event_user2 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: bungeejumping.id)
event_user3 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user9.id, event_id: bungeejumping.id)
event_user4 = EventUser.create!(motivation: "That sound absolutely incredible. Seek discomfort!", status: 1, user_id: user10.id, event_id: bungeejumping.id)

# People applying to Jonas's special hike
event_user5 = EventUser.create!(motivation: "I would love to do this, this is my biggest fear!", status: 1, user_id: user1.id, event_id: hiking.id)
event_user6 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user3.id, event_id: hiking.id)
event_user7 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user2.id, event_id: hiking.id)
event_user8 = EventUser.create!(motivation: "That sound absolutely incredible. Seek discomfort!", status: 1, user_id: user4.id, event_id: hiking.id)
event_user9 = EventUser.create!(motivation: "I'm badass at coding, let's build this!", status: 2, user_id: user12.id, event_id: coding.id)

puts "5 - Let´s create some reviews"
review1 = Review.create!(content:"Amazing experience. We have to repeat!", rating: 5,user_id: user2.id, event_id: bungeejumping.id)
review2 = Review.create!(content:"Worst experience ever! Don´t go to any other event of this host", rating: 1, user_id:user4.id , event_id:bungeejumping.id)
review3 = Review.create!(content:"Super nice!", rating: 3, user_id: user4.id, event_id: paragliding.id)
review4 = Review.create!(content:"Pow pow pow, Discomfort zone is amaaazing", rating: 4,user_id: user5.id, event_id: hiking.id)
review5 = Review.create!(content:"Could´ve been better", rating: 2,user_id: user1.id, event_id: hiking.id)

puts "6 - FINITOOO"

