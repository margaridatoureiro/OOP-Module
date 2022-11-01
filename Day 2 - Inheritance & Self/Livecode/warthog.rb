require_relative "animal"

class Warthog < Animal
  def talk
    return "#{@name} grunts and farts :'(" 
  end
end