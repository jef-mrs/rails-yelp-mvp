puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
la_guinguette = { name: 'La Guinguette', address: 'Paris', category: 'french' }
sushi_party = { name: 'Sushi Party', address: 'Salon de Provence', category: 'japanese' }
la_frite = { name: 'La Frite', address: 'Lille', category: 'belgian' }

[dishoom, pizza_east, la_guinguette, sushi_party, la_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
