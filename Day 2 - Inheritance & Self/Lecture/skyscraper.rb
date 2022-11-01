require_relative "building"

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      puts "Self is: #{self}"
      # "this #{self.capitalized_name} is a skyscraper for Spider-Man."
      # EQUIVALENT TO:
      "this #{capitalized_name} is a skyscraper for Spider-Man."
      # CONCLUSION: in this case, self is not mandatory
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    #puts "Self is: #{self}"
    @name.capitalize
  end
end

my_skyscraper = Skyscraper.new("empire state building", 200, 100, 1000)

#p my_skyscraper

puts "*****************************"

my_skyscraper.capitalized_name

puts "What is the typer of owner of my skyscraper?"
puts my_skyscraper.type_of_owner

# INSIDE OF AN INSTANCE METHOD
# `self` refers to the instance on which the instance method was called

# puts "What's the name of my skycraper?"

# p my_skyscraper.name

# p my_skyscraper.length

# p my_skyscraper.width

