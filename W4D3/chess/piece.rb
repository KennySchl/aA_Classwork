class Piece

  attr_reader :color

  def initialize(color, board, pos)
    @color = :color
    @board = board
    @pos = pos
  end

  def to_s
    if @color == :black
      'black'
    elsif @color == :white
      'white'
    end
  end

  def empty?
    if piece[@pos] == nil
      return true
    else 
      return false
    end
  end

  def pos=(value)
    row = value[0]
    col = value[1]
    @pos = [row,col]
  end
 
  def symbol
    self.symbol 
  end
end
