require_relative '../lib/bounding_box'

class BoundingArea
  attr_reader :boxen
  def initialize(boxen)
    @boxen = boxen
  end

  def boxes_contain_point?(x_coord, y_coord)
    boxen.each do |box|
      if box.contains_point?(x_coord, y_coord)
         return true
       end
     end
     return false
   end
end
