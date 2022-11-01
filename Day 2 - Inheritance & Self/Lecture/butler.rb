class Butler 
  attr_reader :castle
  def initialize(castle)
    @castle = castle # We want @castle to store an instance of Castle.
    #@name = name # String
  end

  def clean_castle
    "#{@castle.name} is cleaned!"
  end
end