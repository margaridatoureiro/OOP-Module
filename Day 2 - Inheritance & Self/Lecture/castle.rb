require_relative "building"
require_relative "butler"

class Castle < Building
  attr_accessor :butler, :ruler # attr_accessor = attr_reader + attr_writer

  def initialize(name, length, width, ruler)
    super(name, length, width)
    @ruler = ruler
    @butler = Butler.new(self)
  end

  def self.categories
    return ["Medieval", "Norman", "Ancient"].join(", ")
  end

  # SETTER (attr_writer)
  # def butler=(butler_name)
  #   @butler = butler_name
  # end

  # GETTER (attr_reader)
  # def butler
  #   @butler
  # end

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300
  end

  # `super` keyword calls the parent method with the same name and I can add some behaviour I want

  # child methods with the same name as the parent take precedence !!
  # def floor_area
  #   "Calling the method from the child :D"
  # end

  def ownership_details
    "#{@name} is ruled by #{ruler}"
  end

  def ruler
    @ruler.capitalize
  end

end

my_castle = Castle.new("Dragon Stone", 400, 300, "King Viserys")

p my_castle.butler.clean_castle

my_castle.floor_area

# puts "What's the name of my castle?"

# puts my_castle.name

# p my_castle.length

# p my_castle.width

# my_castle.butler = "Little Finger"

# puts "What's the name of my slave?"
# p my_castle.butler

my_castle.butler = "Mickey Mouse"

# puts my_castle.has_a_butler? ? "yes! #{my_castle.butler}" : "noo :(("

# puts "What's the name of my slave?"
# puts "\"#{my_castle.butler}\""

# p my_castle

# puts "What is the name of the ruler of the castle?"

# puts my_castle.ruler

# p my_castle

# puts "What are the categories of a castle?"
# p Castle.categories

# `floor_area` is an instance method
# I can only call instance methods on instances of my class Castle

# `categories` is a class method
# I can only call class methods on my class Castle
