module Slideable

HORIZONTAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]
DIAGONAL_DIRS = [[-1,1],[1,1],[1,-1],[-1,-1]]

  def horizontal_dirs
   HORIZONTAL_DIRS
  end

  def diagonal_dirs
   DIAGONAL_DIRS
  end

  def moves #available moves
    move_dirs.each do |dir|
      moves = grow_unblocked_moves_in_dir(dir[0],dir[1])
    end
  end


  private

  def move_dirs
    raise "Class requires specific move direction"
    
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    good_moves = []
    pos = [dx, dy]
    until (dx > 7 || dx < 0)|| (dy > 7 || dy < 0) 
     dx += dx
     dy += dy 
     if @board[pos] != nil
      block_color = @boad[pos].color
      if block_color == self.color
        break
      else
        good_moves << [dx, dy]
        break
      end
     end
     good_moves << [dx, dy]
    end
  end


       
  
  



end