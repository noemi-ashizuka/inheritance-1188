require_relative "restaurant"

class FastFood < Restaurant
  attr_reader :prep_time

  def initialize(name, location, capacity, category, prep_time)
    super(name, location, capacity, category)
    @prep_time = prep_time 
  end

  def display_reservations
    puts "No reservations here.."
  end

  def make_reservation(name)
    puts "Sorry #{name}, we don't take reservations here"
  end
end
