# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
categories = %w[chinese italian japanese french belgian]

100.times do
  restaurant = Restaurant.create(name: "#{Faker::ElectricalComponents.active} #{Faker::Food.ingredient }", address: "#{Faker::Address.street_address} #{Faker::Address.city}", phone_number: "#{Faker::PhoneNumber.cell_phone_in_e164}", category: categories.sample, description: Faker::Restaurant.description
  )

  7.times do
    Review.create(rating: rand(1..5), content: Faker::Restaurant.review, restaurant: restaurant)
  end
end
