require_relative "restaurant"

# (name, location, capacity, category, chef_name)
napoli = Restaurant.new("Napoli sta 'cca", "Kamiyacho", 10, "italian", "Chris")

# p napoli.chef.restaurant # => instance of a restaurant

# p napoli.chef.restaurant.chef.name

chris = napoli.chef

p chris.make_meal("pizza")
