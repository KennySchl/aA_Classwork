require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece

def initialize
  super
end

def symbol
  :Bishop
end

def move_dirs
  diagonal_dirs
end

end