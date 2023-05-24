# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
joaquina = {name: "Joaquina Bar & Restaurant", address: ": R. Voluntários da Pátria, 448 - Botafogo", phone_number: '(21) 2535-2774', category: 'french'}

bros = {name: "Bros Pizza", address: "R. Paula Freitas, 78 B - Copacabana", phone_number: '(21) 99339-2227', category: 'italian'}

chucrute = {name: "Chloe's Bar", address: "Av. Epitácio, Lagoa, 77", phone_number: '(21) 77777-2222', category: 'belgian'}

japa = {name: "Japa Now", address: "Av.N.Senhora de Copa, 78 B - Copacabana", phone_number: '(21) 98888-0000', category: 'japanese'}

debortoli = {name: "Cantina DeBortoli's", address: "R. Marechal Mascarenhas, Copacabana, Rio de Janeiro", phone_number: '(21) 00000-1111', category: 'italian'}


[joaquina, bros, chucrute, japa, debortoli].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
