require_relative 'car'

# Car is the class
# `Car.new` calls the initialize method

# instanciating my_car:
# my_car = Car.new
# my_car is an instance of the class Car

# instanciating your_car
# your_car = Car.new
# your_car is an instance of the class Car

# blue_car = Car.new("blue")
# p blue_car


# another_blue_car = Car.new("blue")
# p another_blue_car

red_car = Car.new("red", "Ferrari")
#p red_car

# I called the instance method `start` on the instance `red_car`
puts "Has my car started?"

puts red_car.engine_started? ? "yes!!!" : "noooo"

# if red_car.engine_started? == true
#   puts "yes"
# else
#   puts "noo"
# end

puts "Starting my car...."

red_car.start

puts "Has my car started?"

puts red_car.engine_started? ? "yes!!!" : "noooo"

#p red_car

# ENCAPSULATION

# By default, state is hidden
# In other words, by default,
# instance variables are hidden from the outside world
# we need to define methods to expose them

puts "What color is my car?"
puts red_car.color

puts "What brand is my car?"
puts red_car.brand

puts "I'm gonna paint my car another color"
red_car.color = "yellow"

puts "What color is my car?"
puts red_car.color

# attr_reader (getter) -> I can read my instance variables 
# attr_writer (setter) -> I can change my instance variables
# attr_accessor (getter + setter) = attr_reader + attr_writer
