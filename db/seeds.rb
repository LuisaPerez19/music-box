# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

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

piano_file = URI.open("https://images.unsplash.com/photo-1603584915335-d612257071b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

instrument1 = Instrument.new(
  name: "Yamaha piano",
  description: "Beautiful",
  price: 20,
  category: "pianos",
  user: user1
)
instrument1.photos.attach(io: piano_file, filename: "piano.png", content_type: "image/png")
instrument1.save

# instrument2 = Instrument.create!(
#   name: "Steinway Grand Piano",
#   description: "Beautiful",
#   price: 100,
#   category: "pianos",
#   photo_url: "piano2.jpeg",
#   user: user1
# )

# instrument3 = Instrument.create!(
#   name: "Electric Piano",
#   description: "Beautiful",
#   price: 15,
#   category: "pianos",
#   photo_url: "P.jpeg",
#   user: user1
# )

# instrument4 = Instrument.create!(
#   name: "Electric Guitar",
#   description: "Beautiful",
#   price: 10,
#   category: "guitars",
#   photo_url: "guitar.jpg",
#   user: user1
# )

# instrument4 = Instrument.create!(
#   name: "Violin",
#   description: "Beautiful",
#   price: 10,
#   category: "guitars",
#   photo_url: "Violin.jpg",
#   user: user1
# )
