# Implement a Citizen class with the following API:
#initialize(first_name, last_name, age)

# define a class named citizen
class Citizen
  attr_accessor :first_name, :last_name
  # create the method initialize
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  
  #can_vote? (boolean)
  def can_vote? # instance method
    @age > 17
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

# #######################################

def can_vote?
  return "This is another can_vote method!"
end

citizen_one = Citizen.new("Jon","Snow",16)

p citizen_one

puts citizen_one.can_vote?

puts can_vote?

puts citizen_one.first_name

citizen_one.first_name = "Oath"
citizen_one.last_name = "Breaker"

puts "what is your name now?"
puts citizen_one.full_name



