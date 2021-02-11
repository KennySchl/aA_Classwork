module Stepable

  def moves
    available_moves = []
    move_diffs.each do |dir|
      possible_position = self.pos += dir
      if possible_position < 0 || possible_position > 7 
        next
      elsif
        possible_position != nil
        block_color = possible_position.color
        if block_color == self.color
          next
        else 
          available_moes << possible_position
        end
      end
    available_moves
    end
  end

  private

  def moves_diffs
    raise "Class requires specific move direction"
  end
end