# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Deleting existing records...'

# Review.delete_all
# Booking.delete_all
Instrument.delete_all
User.delete_all


puts 'Seeding..'

user1 = User.create!(
  email: "luisa.perez@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "Aqil@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  email: "Aaron@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  email: "Zina@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

instrument1 = Instrument.create!(
  name: "Yamaha piano",
  description: "Beatiful",
  price: 20,
  category: "pianos",
  user: user1,
)

instrument2 = Instrument.create!(
  name: "Steinway Grand Piano",
  description: "Beatiful",
  price: 100,
  category: "pianos",
  user: user1,
)

instrument3 = Instrument.create!(
  name: "Electric Guitar",
  description: "Beatiful",
  price: 15,
  category: "pianos",
  user: user1,
)
