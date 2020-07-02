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
Goal.destroy_all
Event.destroy_all
User.destroy_all

# --------- CREATING USERS ------------------------
puts "2 - Let's create some users ... with pictures"

# User1: Elon Musk
elon_pic = URI.open ("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg")
user1 = User.new(email: "musk@gmail.com", password: "1234567", first_name: "Elon", last_name:"Musk", biography:"Entrepreneur, Billionaire, Genius, Philanthropist, you name it. I'm very smart. I never understood the expression 'it's not rocket science'.")
user1.photo.attach(io: elon_pic, filename: 'elon.png', content_type: 'image/png')
user1.save!

# User2: Jeff Bezos
jeff_pic =  URI.open ("https://pbs.twimg.com/profile_images/669103856106668033/UF3cgUk4_400x400.jpg")
user2 = User.new(email: "jeff@gmail.com", password: "1234567", first_name: "Jeff", last_name:"Bezos", biography:"I own a small online store that sells things. In my free time, I like to read, play sports, and meditate.")
user2.photo.attach(io: jeff_pic, filename: 'jeff.png', content_type: 'image/png')
user2.save!

# User3: Lou
lou_pic = URI.open ("https://avatars3.githubusercontent.com/u/62842976?s=460&u=c9393f510acd2f73143a520bff805a36db8037d0&v=4")
user3 = User.new(email: "louis@gmail.com", password: "1234567", first_name: "Louis", last_name:"Bemberg", biography:"Currently doing a coding bootcamp at Le Wagon. I love travelling, nature, and sports. My favourite hobbies include coding, editing videos, playing golf, and most importantly, venturing out of my comfort zone.")
user3.photo.attach(io: lou_pic, filename: 'lou.png', content_type: 'image/png')
user3.save!


# User4: David
david_pic = URI.open ("https://avatars1.githubusercontent.com/u/57439844?s=400&u=974c959854561ec99af5e770a8455ac2134e9455&v=4")
user4 = User.new(email: "david@gmail.com", password: "1234567", first_name: "David", last_name:"Hernandez", biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")
user4.photo.attach(io: david_pic, filename: 'david.png', content_type: 'image/png')
user4.save!

# User5: Wolfgang
wolfgang_pic = URI.open('https://res.cloudinary.com/dr9jueds0/image/upload/v1593699840/26167890_10214660379000690_5028012495675837573_n.jpg_xvvs8t.jpg')
user5 = User.new(email: "wolfgang@gmail.com", password: "1234567", first_name: "Wolfgang", last_name:"Alkier", biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")
user5.photo.attach(io: wolfgang_pic, filename: 'wolfgang.png', content_type: 'image/png')
user5.save!

# User6: TheCodingJonas
jonas_pic = URI.open ("https://res.cloudinary.com/dzevgses3/image/upload/v1593172342/jonas-profile.jpg")
user6 = User.new(email: "jonas@gmail.com", password: "1234567", first_name: "Jonas", last_name:"Fuerstenberg", biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")
user6.photo.attach(io: jonas_pic, filename: 'jonas.png', content_type: 'image/png')
user6.save!

# User7: Barbara (random unsplash user)
barbara_pic = URI.open ("https://images.unsplash.com/photo-1546422401-ae86d9d58b0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
user7 = User.new(email: "barbara@gmail.com", password: "1234567", first_name: "Barbara",last_name: 'Polednova', biography:"Foodie, animal lover, fan of live concerts and beautufil weather.")
user7.photo.attach(io: barbara_pic, filename: 'barbara.png', content_type: 'image/png')
user7.save!

# User8: Paulo (random unsplash user)
paulo_pic = URI.open ("https://images.unsplash.com/photo-1539605480396-a61f99da1041?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
user8 = User.new(email: "paulo@gmail.com", password: "1234567", first_name: "Paulo",last_name: 'Corro', biography:"Love music, art, and being outside.")
user8.photo.attach(io: paulo_pic, filename: 'paulo.png', content_type: 'image/png')
user8.save!

# User9: Gabriela Silvero
gabriela_pic = URI.open ("https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
user9 = User.new(email: "gabriela@gmail.com", password: "1234567", first_name: "Gabriela",last_name: 'Silvero', biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")
user9.photo.attach(io: gabriela_pic, filename: 'gabriela.png', content_type: 'image/png')
user9.save!

# User10: Sarah Brown
sarah_pic = URI.open ("https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
user10 = User.new(email: "sarah@gmail.com", password: "1234567", first_name: "Sarah",last_name: 'Brown', biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")
user10.photo.attach(io: sarah_pic, filename: 'sarah.png', content_type: 'image/png')
user10.save!

# User11 Without Picture: Boris Paillard
user11 = User.create!(email: "boris@gmail.com", password: "1234567", first_name: "Boris",last_name: 'Paillard', biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")

# User12 Without Picture: Seb Saunier
user12 = User.create!(email: "sebjesus@gmail.com", password: "1234567", first_name: "Sebastien",last_name: 'Saunier', biography:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mattis lobortis neque at varius. Aenean dictum ligula eu sodales pulvinar. Aliquam interdum lacus nec velit eleifend, in finibus nulla tempus.")


# User 13 (Picture needs to be updated) - Ana Moreno
ana_pic = URI.open ("https://images.unsplash.com/photo-1532306201592-901907906c23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
user13 = User.new(email: "ana@gmail.com", password: "1234567", first_name: "Ana",last_name: 'Moreno', biography:"My name is Ana, I'm from Colombia, studied in Texas, and I'm an ex-soccer player. I absolutely love travelling, meeting new people, and trying things I've never done before.")
user13.photo.attach(io: ana_pic, filename: 'ana.png', content_type: 'image/png')
user13.save!

# User 14 (Picture needs to be updated) - Mans Berglund
mans_pic = URI.open ("https://lamarcardinals.com/images/2016/10/24/Berglund_Mans.jpg?width=300")
user14 = User.new(email: "mans@gmail.com", password: "1234567", first_name: "Mans",last_name: 'Berglund', biography:"Huge fan of sports, particularly football, golf, and ice hockey. I'm an ex-professional golfer and hockey player myself. I'm always down for an adventure, especially if it involves nature!")
user14.photo.attach(io: mans_pic, filename: 'mans.png', content_type: 'image/png')
user14.save!

# User 15 (Picture needs to be updated) - Sasha Wortelboer
sasha_pic = URI.open ("https://images.squarespace-cdn.com/content/v1/560083d2e4b0ef8db7867140/1553911785413-6UKGGH1K52L1SQP4C26Z/ke17ZwdGBToddI8pDm48kHJjM-Evnp5g-1kf5Yv15cUUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcpWKe3KzaCrFDKPR1a1Ob8xobjReaxMuaKtrvUDoDmPO9EsdBHei1w8jR6w0UZiby/IMG_1155.jpg?format=1500w")
user15 = User.new(email: "sasha@gmail.com", password: "1234567", first_name: "Sasha",last_name: 'Wortelboer', biography:"Professional golfer in love with sports and nature. When I'm not playing golf I'm usually hiking in the swiss mountains. Would love to explore the most beautiful landscapes of the world.")
user15.photo.attach(io: sasha_pic, filename: 'sasha.png', content_type: 'image/png')
user15.save!

# User 16 (Picture needs to be updated) - Paula Leiva
paula_pic = URI.open ("https://images.unsplash.com/photo-1546052646-a88eafec0399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=935&q=80")
user16 = User.new(email: "paula@gmail.com", password: "1234567", first_name: "Paula",last_name: 'Leiva', biography:"Specialized in production and graphic design, but what I'm really passionate about is filmography and animals. I love nature, both experiencing it and capturing it through a lense. Anything travel, animal, or nature related, count me in! :)")
user16.photo.attach(io: paula_pic, filename: 'paula.png', content_type: 'image/png')
user16.save!

# User 17 (Picture needs to be updated) - Zander Gous
zander_pic = URI.open ("https://lamarcardinals.com/images/2016/10/24/Gous_Zander.jpg?width=300")
user17 = User.new(email: "zander@gmail.com", password: "1234567", first_name: "Zander",last_name: 'Gous', biography:"Addicted to exercise. I love sports, especially golf and rugby, as well as cooking a nice BBQ for my friends. I would love to travel more and discover more countries.")
user17.photo.attach(io: zander_pic, filename: 'zander.png', content_type: 'image/png')
user17.save!



puts "3 - Let's create some events..."

# HIKING TRIP THAT LASTS 2 DAYS WITH A LONG DESCRIPTION
rainbow_mountain = URI.open("https://images.unsplash.com/photo-1492133969098-09ba49699f47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80")
hiking = Event.new(title: "Special Hike", start_time: "2020-08-10 12:00", end_time: "2020-08-12 18:00", description: "Early birds catches the worm and the best light in the world !! We are gonna enjoy the most beautiful landscape that vienna has to offer. Please be advised to bring proper equipment since the trip will be the whole weekend - that includes a Hiking backpack
Weather-appropriate clothing (think moisture-wicking and layers), Hiking boots or shoes, Plenty of food, Plenty of water, sleeping bag, some toold like a knife.. As the host I will bring a First-aid kit as I'm a trained medic. THIS IS A REAL OUTDOOR ADVENTURE, whoooo !!", address: "Vienna", capacity: 5, user_id: user6.id)
hiking.photo.attach(io: rainbow_mountain, filename: 'rainbow_mountain.png', content_type: 'image/png')
hiking.save!

# Bungee Jumping
bungeejumping_picture = URI.open('https://checkyeti.imgix.net/images/optimized/bungy-stockhorn_002_web-min1.jpg')
bungeejumping = Event.new(title: "Bungee Jumping", start_time: "2020-08-06 16:00", end_time: "2020-08-06 18:00", description:"A state a complete free fall until an elastic cable saves your life. One of the greatest adrenaline rushes you'll ever experience. People with a fear of heights are recommended to join this one!", address: "Lausanne, Switzerland", capacity: 5, user_id: user6.id)
bungeejumping.photo.attach(io: bungeejumping_picture, filename: 'bungee.png', content_type: 'image/png')
bungeejumping.save!

# Travelling to a Random City
randomcity_picture = URI.open('https://images.unsplash.com/photo-1499591934245-40b55745b905?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2104&q=80')
randomcity = Event.new(title: "Travel to a Random City", start_time: "2020-08-28 10:00", end_time: "2020-08-30 20:00", description:"Here's the plan: we throw a dart on a map, and we all fly there as a group. Fate will decide where our next adventure will take us!", address: "Lausanne, Switzerland", capacity: 5, user_id: user4.id)
randomcity.photo.attach(io: randomcity_picture, filename: 'randomcity.png', content_type: 'image/png')
randomcity.save!

# OLD Event - Hosted by Lou
oldevent_picture = URI.open('https://images.unsplash.com/photo-1552072804-d78dd1cb516f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80')
oldevent = Event.new(title: "Hike in Zermatt", start_time: "2016-03-25 08:00", end_time: "2016-03-25 20:30", description:"Let's go walk in the beautfiul Swiss Mountains and take pictures in front of the Mattherhorn!", address: "Vancouver, Canada", capacity: 4, user_id: user3.id)
oldevent.photo.attach(io: oldevent_picture, filename: 'oldevent.png', content_type: 'image/png')
oldevent.save!

# OLD Event - Hosted by David
oldeventdavid_picture = URI.open('https://images.unsplash.com/photo-1439761414027-4f4ebeeda3a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
oldeventdavid = Event.new(title: "Canadian Waterfall Visits", start_time: "2017-04-19 08:00", end_time: "2017-04-19 20:30", description:"Canada is such a beautiful place, and I'm looking for a bunch of people to join me discover some of its wonderful nature - especially its incredible waterfalls!", address: "Zermatt, Switzerland", capacity: 4, user_id: user3.id)
oldeventdavid.photo.attach(io: oldeventdavid_picture, filename: 'oldeventdavid.png', content_type: 'image/png')
oldeventdavid.save!

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

# Dive with the sharks - Hosted by Lou
shark_picture = URI.open('https://images.unsplash.com/photo-1475372674317-8003c861cb6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
shark = Event.new(title: "Dive with the sharks", start_time: "2020-11-28 10:00", end_time: "2020-11-28 20:00", description:"Let's embrace our biggest fears and go swim with these indimidating creatures. Adrenaline guaranteed!", address: "Bali, Indonesia", capacity: 10, user_id: user3.id)
shark.photo.attach(io: shark_picture, filename: 'shark.png', content_type: 'image/png')
shark.save!

# First time Wake Surfing - Hosted by Sasha
firstwakeboard_picture = URI.open('https://images.unsplash.com/photo-1468850726958-63df2c33e0ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80')
firstwakeboard = Event.new(title: "Let's learn how to Wakesurf!", start_time: "2020-08-12 10:00", end_time: "2020-08-12 12:30", description: "Wakesurfing looks incredibly fun and I'd love to learn it. Unfortunately, we need to be at least 4 on a boat to do it. Who wants to join me and try wakesurfing for the first time?!", address: "Lutry, Switzerland", capacity: 6, user_id: user16.id)
firstwakeboard.photo.attach(io: firstwakeboard_picture, filename: 'firstwakeboard.png', content_type: 'image/png')
firstwakeboard.save!

# skydiving
skydiving_picture = URI.open('https://images.unsplash.com/photo-1483301563007-8d0161daa1d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
skydiving = Event.new(title: "Skydiving", start_time: "2020-07-18 17:00", end_time: "2020-07-18 20:00", description: "I'm looking for some people to join me in this crazy adventure. I've never jumped out of a plane and none of my friends want to join me... Will you?", address: "Hong Kong", capacity: 8, user_id: user4.id)
skydiving.photo.attach(io: skydiving_picture, filename: 'spain.png', content_type: 'image/png')
skydiving.save!

# Dinner with strangers - Hosted by Wolfgang
dinnerstranger_picture = URI.open('https://images.unsplash.com/photo-1547573854-74d2a71d0826?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
dinnerstranger = Event.new(title: "Dinner with Strangers", start_time: "2020-09-15 19:00", end_time: "2020-09-15 20:30", description:"What better way to get to know people than to go in a massive blind date?! Let's meet up with complete strangers for dinner and meet fellow discomfort-zoners", address: "Pully, Switzerland", capacity: 10, user_id: user5.id)
dinnerstranger.photo.attach(io: dinnerstranger_picture, filename: 'dinnerstranger.png', content_type: 'image/png')
dinnerstranger.save!

# Hike on the Mont Blanc - Hosted by Lou
montblanc_picture = URI.open('https://images.unsplash.com/photo-1521490188859-2bf9a6660b63?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2110&q=80')
montblanc = Event.new(title: "Hike to the Mont Blanc", start_time: "2020-07-25 08:00", end_time: "2020-07-25 20:30", description:"Don't get intimidated by the name, it's a very simple, yet beautiful hike that anyone can do. Just make sure to bring the appropriate equipment and you'll be just fine!", address: "Chamonix, France", capacity: 12, user_id: user3.id)
montblanc.photo.attach(io: montblanc_picture, filename: 'montblanc.png', content_type: 'image/png')
montblanc.save!


puts "4 - Let's match some users with some events (event_user)"
# People applying to Jonas's bungee Jumps
event_user1 = EventUser.create!(motivation: "I would love to do this, this is my biggest fear!", status: 2, user_id: user3.id, event_id: bungeejumping.id)
event_user2 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: bungeejumping.id)
event_user3 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user9.id, event_id: bungeejumping.id)
event_user4 = EventUser.create!(motivation: "That sound absolutely incredible. Seek discomfort!", status: 1, user_id: user10.id, event_id: bungeejumping.id)

# People applying to Jonas's special hike
event_user5 = EventUser.create!(motivation: "I would love to do this, this is my biggest fear!", status: 1, user_id: user1.id, event_id: hiking.id)
event_user6 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user3.id, event_id: hiking.id)
event_user7 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user2.id, event_id: hiking.id)
event_user8 = EventUser.create!(motivation: "That sound absolutely incredible. Seek discomfort!", status: 1, user_id: user4.id, event_id: hiking.id)

# Sebjesus applying to coding school
event_user9 = EventUser.create!(motivation: "I'm badass at coding, let's build this!", status: 1, user_id: user12.id, event_id: coding.id)

# People applying to Lou's Shark event
event_user10 = EventUser.create!(motivation: "I'm terrified of sharks, but this sounds like so much fun. This has been on my bucket list for a while, would love to join!", status: 1, user_id: user4.id, event_id: shark.id)
event_user11 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: shark.id)
event_user12 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user6.id, event_id: shark.id)
event_user13 = EventUser.create!(motivation: "That sound absolutely incredible. Seek discomfort!", status: 1, user_id: user7.id, event_id: shark.id)

# People applying to Lou's montblanc hike
event_user15 = EventUser.create!(motivation: "Let's get to the top of the world!! I love hiking, this would be so much fun.", status: 0, user_id: user4.id, event_id: montblanc.id)
event_user16 = EventUser.create!(motivation: "Hey there! I'm a huge fan of hiking and going up to the Mont Blanc is a great dream of mine", status: 0, user_id: user5.id, event_id: montblanc.id)
event_user17 = EventUser.create!(motivation: "I would love to join there, this seems like so much fun.", status: 0, user_id: user6.id, event_id: montblanc.id)
event_user18 = EventUser.create!(motivation: "I am literally the best hiker you'll ever meet. I'm better, faster, stronger than any other person on this app!", status: 0, user_id: user15.id, event_id: montblanc.id)

# People applied(and accepted) to Lou's old event
event_user19 = EventUser.create!(motivation: "Let's do this!", status: 1, user_id: user4.id, event_id: oldevent.id)
event_user20 = EventUser.create!(motivation: "Hey that sounds awesome!", status: 1, user_id: user5.id, event_id: oldevent.id)
event_user21 = EventUser.create!(motivation: "Please let me join!!", status: 1, user_id: user6.id, event_id: oldevent.id)

puts "David's old event"
# People applied(and accepted) to David's old event
event_user22 = EventUser.create!(motivation: "Woohoo!", status: 1, user_id: user10.id, event_id: oldeventdavid.id)
event_user23 = EventUser.create!(motivation: "Let's do this, i love Canada!", status: 1, user_id: user13.id, event_id: oldeventdavid.id)
event_user24 = EventUser.create!(motivation: "I would love that so much!!", status: 1, user_id: user14.id, event_id: oldeventdavid.id)
event_user25 = EventUser.create!(motivation: "I love waterfalls, please let me join this!", status: 1, user_id: user16.id, event_id: oldeventdavid.id)


puts "5 - Let's create some reviews"

# Reviews for David
davidreview1 = Review.create!(content:"Going to Waterfalls with david was absolutely amazing. We are still in touch all the time and have become great friends!", rating: 5,user_id: user10.id, event_id: oldeventdavid.id)
davidreview2 = Review.create!(content:"My first event on discomfort zone was with David, and it made me fall in love with Canada and with the app!", rating: 5, user_id:user13.id , event_id:oldeventdavid.id)
davidreview3 = Review.create!(content:"Honestly one of the coolest experience of my life. Definitely going to say YES more often!", rating: 5, user_id: user14.id, event_id: oldeventdavid.id)
davidreview4 = Review.create!(content:"David was a fantastic organizer but I thought the watefalls were a little bit underwhelming.", rating: 4, user_id: user16.id, event_id: oldeventdavid.id)

# Reviews for Lou
louisreview1 = Review.create!(content:"Amazing experience. That was so much fun!", rating: 5,user_id: user4.id, event_id: oldevent.id)
louisreview2 = Review.create!(content:"It was fun, but I wish the host warned us it would be so cold.", rating: 4, user_id:user5.id , event_id:oldevent.id)
louisreview3 = Review.create!(content:"Absolutely stunning!", rating: 5, user_id: user6.id, event_id: oldevent.id)


puts "6 - Let's create some goals"
# Goals for David (user4)
goaldavid1 = Goal.create!(name: "Jump off a plane", description: "I'm terrified of heights and this feels like the perfect thing to get out of my comfort zone", user_id: user4.id)
goaldavid2 = Goal.create!(name: "Go to Paris", description: "This city feels so magical to me, and I've always dreamed to go there.", user_id: user4.id, completed: true)
goaldavid3 = Goal.create!(name: "Present Discomfort Zone to the world", description: "Together with my Le Wagon team, I want to build an app and present it on demo day!", user_id: user4.id, completed: false)

# Goals for Louis (user3)
goallouis1 = Goal.create!(name: "Learn to do a backflip", description: "I've always been terrified of doing a backflip. I know I have the physical abilities, I just need to overcome the mental barrier!", user_id: user3.id, completed: false)
goallouis2 = Goal.create!(name: "Go to Egypt", description: "I'm very curious about mythology, so visiting the ancient sites of Egypt must be amazing.", user_id: user3.id, completed: false)
goallouis3 = Goal.create!(name: "Learn to Surf in Bali", description: "I really want to learn how to surf, and what better place to do it than Bali?", user_id: user3.id, completed: true)
goallouis4 = Goal.create!(name: "Quit my Job and Learn how to Code", description: "I'm sick and tired of the same old repeating thing. I'm in dire need of a change of life. I'm thinking of quitting my job and enrolling into a bootcamp!", user_id: user3.id, completed: true)
goallouis5 = Goal.create!(name: "Build Discomfort Zone and Present it", description: "Together with my Le Wagon team, I want to build an app and present it on demo day!", user_id: user3.id, completed: false)

# Goals for Wolfgang (user5)
goalwolfgang1 = Goal.create!(name: "Build and Present Discomfort Zone", description: "Together with my Le Wagon team, I want to build an app and present it on demo day!", user_id: user5.id, completed: false)

# Goals for Jonas (user 6)
goaljonas1 = Goal.create!(name: "Present Discomfort Zone and celebrate", description: "Together with my Le Wagon team, I want to build an app and present it on demo day!", user_id: user6.id, completed: false)

puts "7 - FINITOOO"

