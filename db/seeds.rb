# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

goldmarie = { name: "goldmarie", address: "hildesheim", category: "belgian", phone_number: "05121262626" }
heidekrug = { name: "heidekrug", address: "ochtersum", category: "french", phone_number: "05121262625" }
eleon = { name: "eleon", address: "hildesheim", category: "japanese", phone_number: "05121262627" }
kupferschmiede = { name: "goldmarie", address: "hildesheim", category: "chinese", phone_number: "05121262628" }
joeys = { name: "joeys", address: "hildesheim", category: "italian", phone_number: "05121262629" }

[ goldmarie, heidekrug, eleon, kupferschmiede, joeys ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
