require_relative "building"

class House < Building
  # attr_reader :length, :width
  # attr_accessor :name 
  # def initialize(name, length, width) # constructor
  #   # STATE
  #   @name = name
  #   @length = length
  #   @width = width
  # end

  # # BEHAVIOUR

  # def floor_area
  #   @width * @length
  # end

  # # attr_reader
  # def name
  #   return @name
  # end

  #  # attr_writer
  #  def name=(new_name)
  #   @name = new_name
  # end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end

end

p House.price_per_square_meter("Paris")

# `barbie_house` is an instance of class House 
# barbie_house = House.new("Pink Dream House", 30, 40)

# puts "What's the name of my house?"

# p barbie_house.name

# p barbie_house.length

# p barbie_house.width

# barbie_house.name = "Yellow Dream House"

# puts "What's the name of my house?"

# p barbie_house.name

