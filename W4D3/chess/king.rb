require_relative 'piece'
require_relative 'stepable'

class King < Piece

def initialize
  super
end

def symbol
  :King
end

def move_diffs
 moves = [[1,0],[-1,0],[0,1],[0,-1],[-1,1],[1,1],[1,-1],[-1,-1]]
end

end