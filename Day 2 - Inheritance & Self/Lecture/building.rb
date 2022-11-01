class Building
  attr_reader :length, :width
  attr_accessor :name 
  def initialize(name, length, width)
    @name = name
    @length = length
    @width = width
  end

  def floor_area
    @width * @length
  end
end


