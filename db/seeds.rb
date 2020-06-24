# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


puts "1 - Cleaning the database"

EventUser.destroy_all
Event.destroy_all
User.destroy_all

puts "CREATING USERS AND EVENTS + EVENT USERS"

user1 = User.create(email: "musk@gmail.com", password: "1234567", first_name: "elon", last_name: 'musk')
user2 = User.create(email: "elon@gmail.com", password: "1234567", first_name: "AXW43",last_name: 'gates')
user3 = User.create(email: "steve@gmail.com", password: "1234567", first_name: "steve",last_name: 'jobs')
user4 = User.create(email: "vader@gmail.com", password: "1234567", first_name: "darth",last_name: 'vader')
user5 = User.create(email: "jonas@gmail.com", password: "1234567", first_name: "jonas",last_name: 'fürstenberg')

event1 = Event.create(title: "skydiving", description: "fun", address: "hongkong", capacity: 5, user_id: user1.id)
event2 = Event.create(title: "paragliding", description: "Exhileration experience just floating through the air and through the clouds", address: "switzerland", capacity: 4, user_id: user5.id)
event3 = Event.create(title: "special-hike", description: "Early birds catches the worm and the best light in the world ", address: "vienna", capacity: 5, user_id: user3.id)

event_user1 = EventUser.create(motivation: "fun", status: 1, user_id: user2.id, event_id: event1.id)
event_user2 = EventUser.create(motivation: "clouds", status: 1, user_id: user4.id, event_id: event2.id)


puts "FINITOOO"
