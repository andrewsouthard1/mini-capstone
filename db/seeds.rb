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
product = Product.find_by(id: 57)
product.update(image: "https://d1466nnw0ex81e.cloudfront.net/n_iv/600/858907.jpg")

product = Product.find_by(id: 39)
product.update(image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/b/b3/Amazing_Spider-Man_Renew_Your_Vows_Vol_1_4.jpg/revision/latest?cb=20150813224914")

product = Product.find_by(id: 6)
product.update(image: "https://images-na.ssl-images-amazon.com/images/I/91hsjgUvI6L.jpg")

product = Product.find_by(id: 3)
product.update(image: "https://images-na.ssl-images-amazon.com/images/I/71v7dphlO6L.jpg")

product = Product.find_by(id: 2)
product.update(image: "https://images-na.ssl-images-amazon.com/images/I/51sWFEf9CGL._SX323_BO1,204,203,200_.jpg")

product = Product.find_by(id: 44)
product.update(image: "https://static1.comicvine.com/uploads/original/0/6063/5110492-bm_cv50_ds.jpg")

product = Product.find_by(id: 41)
product.update(image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/3/33/X-Men_Vol_2_1_Magneto_Variant.jpg/revision/latest?cb=20091219024654")


product = Product.find_by(id: 47)
product.update(image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Watchmen-cover.svg/2000px-Watchmen-cover.svg.png")

product = Product.find_by(id: 43)
product.update(image: "http://2.bp.blogspot.com/_fZ37jdy-g4M/S8uvIgViTBI/AAAAAAAAA5A/je4ZB02X8R4/s1600/Ssjd-03.jpg")

product = Product.find_by(id: 4)
product.update(image: "https://upload.wikimedia.org/wikipedia/en/d/dd/Supermanredson.jpg")