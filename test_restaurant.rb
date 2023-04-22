require_relative 'restaurant'

savoy = Restaurant.new("Savoy", "Meguro", 15, "italian")

# p savoy

# puts "#{savoy.name} in in #{savoy.location}"
# savoy.capacity += 2 # you need a writer
# puts "It has a capacity of #{savoy.capacity} people"

# puts "The restaurant is #{savoy.open? ? "open" : "closed"}"

# savoy.display_reservations

savoy.make_reservation("Kevin")
savoy.make_reservation("Benjamin")

savoy.display_reservations
