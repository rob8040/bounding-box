class BoundingBox
  attr_reader :x, :y, :width, :height, :left, :right, :bottom, :top
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @bottom = y
    @top = y + height
  end

  def contains_point?(x_coord, y_coord)
    if x_coord >= left && x_coord <= right && y_coord >= bottom && y_coord <= top
      return true
    else
      return false
    end
  end
end
