require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.delete_all

Car.create!(brand: "Tesla", fuel: "Electrique", description: "Kilometrage illimité. Age minimum 19 ans. Boite automatique. 4 Portes. Consomation 18.1 kWh/100 km", price: 850, user: User.last)

Car.create!(brand: "Toyota", fuel: "Hybrid", description: "Kilometrage illimité. Age minimum 19 ans. Boite automatique. 4 Portes. Émission de CO2: 95g/km", price: 670, user: User.last)

Car.create!(brand: "Porshe", fuel: "Diesel", description: "Kilometrage illimité. Age minimum 19 ans. Boite automatique. 4 Portes. Émission de CO2: 165g/km ", price: 920, user: User.last)
