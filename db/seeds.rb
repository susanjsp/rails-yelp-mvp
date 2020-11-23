# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding"
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Hipster.word,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
    )

  5.times do
    Review.create!(
      restaurant_id: restaurant.id,
      content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
      rating: rand(0..5)
      )
  end
end

puts "done boooi"
