puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", rating: 5}
lucali =  {name: "Lucali's", address: "575 Henry St, Brooklyn, NY 11231, United States", category: "italian", rating: 3}
kingi =  {name: "Kingi", address: "Tuawhiti Lane, 29 Galway Street, Auckland 1010, New Zealand", category: "belgian", rating: 4}
mcdonalds =  {name: "McDonalds", address: "Jl. Bypass Ngurah Rai No.109, Sanur, Bali, Kota Denpasar, Bali 80228, Indonesia", category: "chinese", rating: 2}
franklin_bbq =  {name: "Franklin's BBQ", address: "900 E 11th St, Austin, TX 78702, United States", category: "japanese", rating: 5}

[dishoom, lucali, kingi, mcdonalds, franklin_bbq].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
