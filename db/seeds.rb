# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EventUser.destroy_all
Event.destroy_all
User.destroy_all


user1 = User.create(email: "musk@gmail.com", password: "1234567", first_name: "elon", last_name:"musk")

user2 = User.create(email: "elon@gmail.com", password: "1234567", first_name: "AXW43", last_name:"33dd")

event1 = Event.new(title: "skydiving", description: "fun", address: "hongkong", capacity: 5)

event1.user = user1

event1.save!

event2 = Event.create(title: "bungee", description: "fun", address: "hongkong", capacity: 5, user_id: user2.id)

event_user1 = EventUser.create(motivation: "fun", status: 1, user_id: user2.id, event_id: event1.id)
