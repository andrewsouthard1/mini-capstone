# make 27 fake comics
# comic1 = 0
# 27.times do 
#   comic1 = Product.new({name: Faker::Superhero.name, price: Faker::Commerce.price, description: "#{Faker::Name.last_name} - #{Faker::Name.last_name}"})
#   comic1.save
# end

# comic_number = 22
# while comic_number < 24
#   comic1 = Product.find_by(id: comic_number)
#   comic1.destroy
#   comic_number += 1
# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
