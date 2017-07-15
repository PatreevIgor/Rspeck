class Cell
  attr_reader :status

  def initialize(status = 'alive')
    @status = status
  end

  def die
    @status = 'died'
  end

  def go_to_live
    @status = 'alive'
  end

  def count_neighbors
    1
  end
end

class Board
  def initialize(width,hight)
    @width = width
   end
  attr_reader :cells
end
