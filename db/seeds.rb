# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Flat.create!(
    name: "#{Faker::Address.community} #{Faker::Address.city}",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(50..200),
    number_of_guests: rand(1..5)
  )
end
