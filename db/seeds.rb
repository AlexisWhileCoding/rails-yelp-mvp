# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, category: "italian" }
cocina =  { name: "Cocina", address: "Flagey", stars: 5, category: "italian" }
mc_donalds =  { name: "McDonalds", address: "City 2", stars: 3, category: "belgian" }
belgica =  { name: "Belgica", address: "Sablon", stars: 4, category: "belgian" }
[ dishoom, pizza_east, cocina, mc_donalds, belgica ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"