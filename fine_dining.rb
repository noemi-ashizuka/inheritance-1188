require_relative "restaurant"

class FineDining < Restaurant
  attr_reader :stars

  def initialize(name, location, capacity, category, stars)
    super(name, location, capacity, category)
    @stars = stars
  end

  def open?
    super || Time.now.hour >= 9 && Time.now.hour <= 15 
  end
end
