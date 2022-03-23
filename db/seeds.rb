require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "1"
Car.delete_all
puts "deleted."
3.times do
  Car.create!(brand: Faker::Lorem.word, fuel: Faker::Lorem.word, description: Faker::Lorem.sentence(word_count: 7), price: Faker::Number.decimal(l_digits: 2), user: User.last)
end
