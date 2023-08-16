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

instrument1 = Instrument.create!(
  name: "Yamaha piano",
  price: 20,
  user: user1,
  photo_url: 'https://images.squarespace-cdn.com/content/v1/59df6a569f7456e38dea9936/1610944345170-GW0PFB7WGSKXO9IV7NJF/yamaha-min.png?format=2500w'
)

instrument2 = Instrument.create!(
  name: "Steinway Grand Piano",
  price: 100,
  user: user1,
  photo_url: 'https://www.steinway.com/.imaging/mte/steinway-us-theme/Large-Rectangle/dam/pianos/Steinway_Grands/model-b/b_room_fma.jpg/jcr:content/model_b_room_landscape.jpg'
)

instrument3 = Instrument.create!(
  name: "Electric Guitar",
  price: 15,
  user: user1,
  photo_url: 'https://lifeguitars.co.uk/cdn/shop/products/57_515f572c-3fc4-40f4-a306-47b672aef9b6_1024x1024.jpg?v=1655481395'
)
