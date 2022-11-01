class Animal
  attr_reader :name 
  def initialize(name)
    @name = name
  end

  def self.phyla
    return ["Ecdysozoa", "Lophotrochozoa", "Deuterostomia", "Other"]
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end

puts Animal.phyla