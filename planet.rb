class Planet
  attr_accessor :position, :color

  def initialize(position, color, radius)
    @position = position
    @color = color
    @rotation = 90 * Math::PI / 180
    @radius = radius
  end

  def rotate(degrees)
    #convert degrees to radians
    radians = degrees * Math::PI / 180
    @rotation += radians
    x = @radius * Math.cos(@rotation)
    y = @radius * Math.sin(@rotation)
    @postion = { x: x, y: y }
  end

end  
