require_relative 'piece'
require_relative 'slideable'

class Rook < Piece

def initialize
  super
end

def symbol
  :Rook
end


def move_dirs
  horizontal_dirs
end

end