# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."
Restaurant.destroy_all


puts "Creating restaurants"

rest_1 = {name: "McChicken", address: "Calle Locura 15", category: "french" }
rest_2 = {name: "Colombia Sabor", address: "Calle Reina 21", category: "chinese" }
rest_3 = {name: "Durum Rice", address: "Calle Lopez de Vega 61", category: "french" }
rest_4 = {name: "Pizzano", address: "Calle Roma 115", category: "italian" }
rest_5 = {name: "Chinese Room", address: "Calle Pekin 64", category: "chinese" }

[ rest_1, rest_2, rest_3, rest_4, rest_5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
