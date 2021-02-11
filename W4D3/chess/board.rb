require_relative 'piece'
require_relative 'rook'

class Board

      def initialize
      @board = Array.new(8) { Array.new(8,nil) }

      end
    def [](pos)
      row, col = pos
      @board[row][col]
    end

    def []=(pos,val)
      row, col = pos
      @board[row][col] = val
    end

    # def add_piece(piece, pos)
    #     self[pos] 
    # end

    def pieces
      @board[0][0] = Rook.new(:white, self, [0][0])
      @board[0][7] = Rook.new(:white, self, [0][7])
      @board[7][7] = Rook.new(:black, self, [7][7])
      @board[7][0] = Rook.new(:black, self, [7][0])
      @board[0][6] = Knight.new(:white, self, [0][6])
      @board[0][1] = Knight.new(:white, self, [0][1])
      @board[7][1] = Knight.new(:black, self, [7][1])
      @board[7][6] = Knight.new(:black, self, [7][6])
      @board[0][5] = Bishop.new(:white, self, [0][5])
      @board[0][2] = Bishop.new(:white, self, [0][2])
      @board[7][5] = Bishop.new(:black, self, [7][5])
      @board[7][2] = Bishop.new(:black, self, [7][2])
      @board[7][3] = Queen.new(:black, self, [7][3])
      @board[0][3] = Queen.new(:black, self, [0][3])
      @board[0][4] = King.new(:white, self, [0][4])
      @board[7][4] = King.new(:black, self, [7][4])
      @board[1].each_with_index do |pos, idx|
        Pawn.new(:white, self, [1][idx])
      end
      @board[6].each_with_index do |pos, idx|
        Pawn.new(:black, self, [6][idx])
      end
    end





    def move_piece(start_pos, end_pos)
        self[end_pos]= Piece.new
        self[start_pos]= nil
      end
end

  








# def valid_pos?(pos)
#   if pos[0] >= 0 && pos[0] <= 7 && pos[1] >= 0 && pos[1] <= 7
#     return true
#   else
#     return false
#   end
# end



