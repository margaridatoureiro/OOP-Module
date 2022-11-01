# car.rb 
class Car
  attr_reader :brand
  attr_accessor :color
  def initialize(color, brand) # also known as the constructor 
    # DATA / STATE (attributes) -> instance variables
    @color = color # String
    @engine_started = false # Boolean
    @brand = brand
  end

  # BEHAVIOUR (what I can do with the car) -> instance methods

  # attr_reader :color
  # SAME AS:
  # def color # instance method
  #   @color
  # end

  # attr_writer :color
  # SAME AS:
  # def color=(new_color) 
  #   @color = new_color
  # end

  # attr_reader :brand
  # def brand# instance method
  #   @brand
  # end

  def start # instance method
    @engine_started = true
  end

  def engine_started? # instance method
    return @engine_started
  end 

  def start_engine
    start_fuel_pump
    init_spark_plug
    crank_engine
    start
  end

  private

  def start_fuel_pump
    # 10 LINES
  end

  def init_spark_plug
    # 10 LINES
  end

  def crank_engine
    # 20 LINES
  end
end



 







