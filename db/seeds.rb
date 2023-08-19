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
  price: 40,
  photo_url: "piano1.jpeg",
  category: "pianos",
  user: user1
)

instrument2 = Instrument.create!(
  name: "Steinway Grand Piano",
  description: "Beautiful",
  price: 100,
  category: "pianos",
  photo_url: "piano2.jpeg",
  user: user1
)ç

instrument3 = Instrument.create!(
  name: "Electric Piano",
  description: "Beautiful",
  price: 15,
  category: "pianos",
  photo_url: "electricpiano.png",
  user: user1
)

instrument4 = Instrument.create!(
  name: "Electric Guitar",
  description: "Beautiful",
  price: 50,
  category: "guitars",
  photo_url: "guitar.jpg",
  user: user1
)

instrument4 = Instrument.create!(
  name: "Violin",
  description: "Beautiful",
  price: 30,
  category: "guitars",
  photo_url: "Violin.jpg",
  user: user1
)

instrument5 = Instrument.create!(
  name: "Cello",
  description: "Beautiful",
  price: 40,
  category: "cello",
  photo_url: "cello2.jpg",
  user: user1
)

instrument6 = Instrument.create!(
  name: "Drum",
  description: "Beautiful",
  price: 100,
  category: "cello",
  photo_url: "drum.jpeg",
  user: user1
)

  instrument7 = Instrument.create!(
    name: "Banjo",
    description: "Beautiful",
    price: 20,
    category: "cello",
    photo_url: "banjo.jpeg",
    user: user1
  )

  instrument8 = Instrument.create!(
    name: "Saxophone",
    description: "Beautiful",
    price: 40,
    category: "Sa",
    photo_url: "sax.jpeg",
    user: user1
  )

  instrument9 = Instrument.create!(
    name: "Xylophone",
    description: "Beautiful",
    price: 70,
    category: "Xylophone",
    photo_url: "xa.jpeg",
    user: user1
  )
