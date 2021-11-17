# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "creating flats"
5.times do
  flat = Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_night: rand(50..500),
    number_of_guests: rand(2..20)
  )
end

puts "done"
