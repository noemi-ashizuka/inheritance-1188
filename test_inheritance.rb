require_relative "fast_food"
require_relative "fine_dining"

# (name, location, capacity, category, prep_time)
mcdonalds = FastFood.new("McDonalds", "Shibuya", 100, "burgers", 3)
saizeriya = FineDining.new("Saizeriya", "Shinjuku", 10, "italian", 5)

# p mcdonalds.open?

# p saizeriya

# mcdonalds.make_reservation("Kevin")
# mcdonalds.display_reservations

# p saizeriya.open?

# p Restaurant.categories

# puts "What city do you want to check the salary?"
# city = gets.chomp

# puts "The salary in #{city} is ¥#{Restaurant.average_staff_salary(city)}"

saizeriya.make_reservation("Kevin")
saizeriya.make_reservation("Giulia")

p saizeriya.popularity_review
