class Chef
  attr_reader :name, :restaurant
  def initialize(name, restaurant)
    @name = name # string
    @restaurant = restaurant # an instance of a restaurant
  end

  def make_meal(meal)
    "#{@name}, the chef #{@restaurant.name} cooked #{meal}"
  end
end
