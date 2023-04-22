require_relative "chef"

class Restaurant
  attr_reader :name, :location, :capacity, :category, :chef
  # attr_accessor :capacity 
  def initialize(name, location, capacity, category, chef_name)
    @name = name
    @location = location
    @capacity = capacity
    @category = category
    @chef = Chef.new(chef_name, self)
    @clients = []
  end

  def open? # boolean
   Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def make_reservation(name)
    @clients << name
  end

  def display_reservations
    puts "=" * 20
    puts "#{name}'s reservations:"
    @clients.each_with_index do |client, index|
      puts "#{index + 1}. #{client}"
    end
    puts "=" * 20
  end

  def self.categories
    ["japanese", "italian", "chinese"]
  end

  def self.average_staff_salary(city)
    case city
    when "Tokyo" then 1500
    when "Osaka" then 1300
    when "Hiroshima" then 1100
    else
      raise Exception.new("No data for #{city}")
    end
  end

  def popularity_review
    if @clients.size > 1
      "#{upcased_name} is very popular" # self.upcased_name but self doesn't need to be explicit
    else
      "#{upcased_name} is not very popular yet..."
    end
  end

  def upcased_name
    @name.upcase
  end

  # def name
  #   @name
  # end
end
