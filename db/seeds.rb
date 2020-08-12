# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Gonna create some restaurants hihi"

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Company.duns_number,
    phone_number: Faker::Address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
  puts "restaurant with id #{restaurant.id} was created"
end
