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
user5 = User.create!(email: "wolfgang@gmail.com", password: "1234567", first_name: "Wolfgang", last_name:"Alkier")
user6 = User.create!(email: "jonas@gmail.com", password: "1234567", first_name: "Jonas", last_name:"Fuerstenberg")
user7 = User.create(email: "steve@gmail.com", password: "1234567", first_name: "steve",last_name: 'jobs')
user8 = User.create(email: "vader@gmail.com", password: "1234567", first_name: "darth",last_name: 'vader')


puts "3 - Let's create some events..."

# Shark Cage Diving
skydiving_picture = URI.open('https://source.unsplash.com/1600x900/?adventure')
skydiving = Event.new(title: "skydiving", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.

Quisque massa nulla, pretium eget varius et, ultrices quis ante. Curabitur fringilla sit amet lectus eu fringilla. Praesent consectetur nisi ligula, et venenatis tortor porttitor nec. Donec nec vulputate lacus. Vestibulum tristique condimentum metus. Sed blandit, odio nec commodo elementum, odio lacus commodo sapien, varius commodo purus sapien id tellus. Phasellus ullamcorper pulvinar enim, vel condimentum eros luctus in. Nam mollis libero quis tortor ultrices hendrerit. Praesent aliquet eleifend augue, a feugiat purus porta sit amet. Vestibulum quis orci urna. Mauris quis ante a velit posuere laoreet sed at mauris. Etiam id nulla vitae risus pharetra pharetra vel nec mauris. Nunc lobortis ac libero pretium gravida. Phasellus sodales sed odio sit amet dictum.

Suspendisse ligula ipsum, eleifend in mollis ac, viverra et arcu. Vivamus sit amet neque ac risus ultrices fringilla et ac sapien. Aenean blandit nibh vitae ligula pharetra, non porta tellus vulputate. Donec pretium risus nulla, at auctor mauris placerat id. Fusce tincidunt magna nec gravida posuere. Vivamus iaculis pellentesque sem a finibus. Aliquam at velit ac urna blandit euismod. Donec sed lectus orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam porta nisl in sem egestas fringilla. Sed tempor, ante eget venenatis gravida, purus justo gravida nisi, vitae convallis nisl lorem ac nulla. Praesent hendrerit diam massa, ut tincidunt eros fermentum et. Quisque at molestie ante.", address: "Hong Kong", capacity: 5, user_id: user1.id,start_time:"2020-03-23", end_time:"2020-03-30")
skydiving.photo.attach(io: skydiving_picture, filename: 'spain.png', content_type: 'image/png')
skydiving.save!

# Bungee Jumping
bungeejumping_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
bungeejumping = Event.new(title: "Bungee Jumping", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.

Quisque massa nulla, pretium eget varius et, ultrices quis ante. Curabitur fringilla sit amet lectus eu fringilla. Praesent consectetur nisi ligula, et venenatis tortor porttitor nec. Donec nec vulputate lacus. Vestibulum tristique condimentum metus. Sed blandit, odio nec commodo elementum, odio lacus commodo sapien, varius commodo purus sapien id tellus. Phasellus ullamcorper pulvinar enim, vel condimentum eros luctus in. Nam mollis libero quis tortor ultrices hendrerit. Praesent aliquet eleifend augue, a feugiat purus porta sit amet. Vestibulum quis orci urna. Mauris quis ante a velit posuere laoreet sed at mauris. Etiam id nulla vitae risus pharetra pharetra vel nec mauris. Nunc lobortis ac libero pretium gravida. Phasellus sodales sed odio sit amet dictum.

Suspendisse ligula ipsum, eleifend in mollis ac, viverra et arcu. Vivamus sit amet neque ac risus ultrices fringilla et ac sapien. Aenean blandit nibh vitae ligula pharetra, non porta tellus vulputate. Donec pretium risus nulla, at auctor mauris placerat id. Fusce tincidunt magna nec gravida posuere. Vivamus iaculis pellentesque sem a finibus. Aliquam at velit ac urna blandit euismod. Donec sed lectus orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam porta nisl in sem egestas fringilla. Sed tempor, ante eget venenatis gravida, purus justo gravida nisi, vitae convallis nisl lorem ac nulla. Praesent hendrerit diam massa, ut tincidunt eros fermentum et. Quisque at molestie ante.", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id,start_time:"2020-03-23", end_time:"2020-03-30")
bungeejumping.photo.attach(io: bungeejumping_picture, filename: 'bungee.png', content_type: 'image/png')
bungeejumping.save!

# Travelling to a Random City
randomcity_picture = URI.open('https://source.unsplash.com/1600x900/?adventure,travel')
randomcity = Event.new(title: "Travel to a Random City", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non cursus metus, nec vehicula diam. Fusce id metus finibus, hendrerit tortor ac, efficitur tortor. Etiam sodales feugiat nibh lacinia pulvinar. Donec eget ullamcorper nulla, eu tristique magna. Nunc felis orci, euismod eget ligula nec, pretium cursus lectus. Duis ex dolor, interdum vitae leo quis, pulvinar congue nulla. Cras sem enim, facilisis quis dui sit amet, imperdiet rutrum metus. Praesent gravida mattis elit eleifend pulvinar. Curabitur ac diam lorem. Etiam sed venenatis lacus, non blandit ex. Donec finibus est arcu, vel lobortis ex lacinia vel. Aliquam tristique placerat purus, ac hendrerit magna facilisis quis. Donec iaculis a nisi in malesuada. Nam feugiat imperdiet magna, ut ultrices nibh hendrerit vel. Donec sollicitudin luctus mauris vel aliquet. Curabitur vulputate nisl neque, vitae feugiat ipsum cursus vel.

Quisque massa nulla, pretium eget varius et, ultrices quis ante. Curabitur fringilla sit amet lectus eu fringilla. Praesent consectetur nisi ligula, et venenatis tortor porttitor nec. Donec nec vulputate lacus. Vestibulum tristique condimentum metus. Sed blandit, odio nec commodo elementum, odio lacus commodo sapien, varius commodo purus sapien id tellus. Phasellus ullamcorper pulvinar enim, vel condimentum eros luctus in. Nam mollis libero quis tortor ultrices hendrerit. Praesent aliquet eleifend augue, a feugiat purus porta sit amet. Vestibulum quis orci urna. Mauris quis ante a velit posuere laoreet sed at mauris. Etiam id nulla vitae risus pharetra pharetra vel nec mauris. Nunc lobortis ac libero pretium gravida. Phasellus sodales sed odio sit amet dictum.

Suspendisse ligula ipsum, eleifend in mollis ac, viverra et arcu. Vivamus sit amet neque ac risus ultrices fringilla et ac sapien. Aenean blandit nibh vitae ligula pharetra, non porta tellus vulputate. Donec pretium risus nulla, at auctor mauris placerat id. Fusce tincidunt magna nec gravida posuere. Vivamus iaculis pellentesque sem a finibus. Aliquam at velit ac urna blandit euismod. Donec sed lectus orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam porta nisl in sem egestas fringilla. Sed tempor, ante eget venenatis gravida, purus justo gravida nisi, vitae convallis nisl lorem ac nulla. Praesent hendrerit diam massa, ut tincidunt eros fermentum et. Quisque at molestie ante.", address: "Lausanne, Switzerland", capacity: 5, user_id: user3.id,start_time:"2020-03-23", end_time:"2020-03-30")
randomcity.photo.attach(io: randomcity_picture, filename: 'randomcity.png', content_type: 'image/png')
randomcity.save!

puts "4 - Let's match some users with some events (event_user)"
# Jonas, David and Wolfgang applying to Lou's bungee jumping
event_user1 = EventUser.create!(motivation: "Please let me in!", status: 1, user_id: user4.id, event_id: bungeejumping.id)
event_user2 = EventUser.create!(motivation: "Let's do this:)", status: 1, user_id: user5.id, event_id: bungeejumping.id)
event_user3 = EventUser.create!(motivation: "I'd love to jump off a bridge with you mate.", status: 1, user_id: user6.id, event_id: bungeejumping.id)

puts "5 - FINITOOO"

