class Cat
    attr_writer :color
    def initialize(name, color) # Cat.new
        # STATE
        @name = name
        @color = color
    end

    def dye(new_color) # instance method
        @color = new_color
    end

    def self.kingdom # class method
        return "Animalia"
    end
end


# OOP = STATE + BEHAVIOUR
# STATE -> what characterizes the cat (instance variables)
# BEHAVIOUR -> what I can do with the cat (instance methods)

felix = Cat.new("Felix", "black")

garfield = Cat.new("Garfield", "orange")

# p felix

# garfield.dye("blue")

# felix.color = "yellow"

# p garfield
# p felix

p Cat.kingdom

# INSTANCE METHODS -> call them on an instance of the class
# CLASS METHODS -> call them on the class


# Time.now
# JSON.parse


