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

violin_file = URI.open("https://images.unsplash.com/photo-1631541313073-ffe99712c629?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80")

instrument1 = Instrument.new(
  name: "Violin",
  description: "Beautiful",

  price: 20,
  category: "Violins",

  user: user1
)
instrument1.photos.attach(io: violin_file, filename: "violin.png", content_type: "image/png")
instrument1.save


guitar_file = URI.open("https://plus.unsplash.com/premium_photo-1664194583959-c44d377a7835?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")

instrument2 = Instrument.new(
  name: "Electric Guitar",
  description: "Beautiful",
  price: 15,

  category: "guitars",
  user: user2
)

instrument2.photos.attach(io: guitar_file, filename: "guitar.png", content_type: "image/png")
instrument2.save
