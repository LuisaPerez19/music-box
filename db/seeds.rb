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
  description: "Beautiful",
  price: 20,
  category: "pianos",
  user: user1,
  # photo_url: "/app/assets/images/P.jpeg"
)

instrument2 = Instrument.create!(
  name: "Steinway Grand Piano",
  description: "Beautiful",
  price: 100,
  category: "pianos",
  user: user1,
  photo_url: "https://upload.wikimedia.org/wikipedia/commons/0/01/Steinway_Vienna_002.JPG"
)

instrument3 = Instrument.create!(
  name: "Electric Guitar",
  description: "Beautiful",
  price: 15,
  category: "pianos",
  user: user1,
)
