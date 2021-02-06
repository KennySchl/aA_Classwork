require_relative "PolyTreeNodeCopy.rb"

class KnightPathFinder

    def initialize(start_pos)
      @root_node = PolyTreeNodeCopy.new(start_pos)

    end

    def build_move_tree
        @root_node = PolyTreeNodeCopy.new()
    end

    def self.valid_moves(start_pos)
        @considered_positions = [start_pos]
    end

    def new_move_positions(pos)
        if !@considered_positions.include?(pos)
        self.valid_moves
        @considered_positions << pos
        end
        @considered_positions
    end

end