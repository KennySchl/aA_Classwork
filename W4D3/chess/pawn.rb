require_relative "Piece"

  class Pawn

    def initialize
      super
    end

    def symbol
      :Pawn
    end

    def moves
      if add_start_row?
        [[0,1],[0,2]]
      else
        [0,1]
      end

    
    end



    private
      def add_start_row?
        if @board.pos[0] == 1 || if @board.pos[0] == 6
          return true
        else
          return false
        end
      end

      forward_direction


      
      
    


  end


