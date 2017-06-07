require 'singleton'

# MOVES = {
#   left: [0, -1],
#   right: [0, 1],
#   up: [-1, 0],
#   down: [1, 0],
#   up_right: [-1, 1],
#   up_left: [-1, -1],
#   down_right: [1, 1],
#   down_left: [1, -1]
# }

class Piece
  attr_reader :board, :color
  attr_accessor :pos

  def initialize(board, pos, color = :white)
    @board = board
    # raise "Invalid position" unless @board.in_bound?(pos)
    @pos = pos
    @color = color
  end
  def moves
    move_dirs
  end
end


class Rook < Piece
  def symbol
    if color == :white
      "♖"
    else
      '♜'
    end
  end

  def move_dirs
  end
end

class Queen < Piece
  def symbol
    if color == :white
      "♕"
    else
      '♛'
    end
  end
  def move_dirs
  end
end

class Bishop < Piece
  def symbol
    if color == :white
      "♗"
    else
      '♝'
    end
  end

  def move_dirs
  end
end

class Knight < Piece
  def symbol
    if color == :white
      "♘"
    else
      '♞'
    end
  end
end

class King < Piece
  def symbol
    if color == :white
      "♔"
    else
      '♚'
    end
  end
end



class Pawn < Piece
  def symbol
    if color == :white
      "♙"
    else
      '♟'
    end
  end

  def move_dirs
    valid_move_array = []
    x , y = self.pos
    if @board[x][y+1] == NullPiece
      valid_move_array << [x,y+1]
    end
  end
end


class NullPiece < Piece
  include Singleton

  attr_reader :symbol

  def initialize
    @symbol = " "
  end

end



module SteppingPiece
  def moves
  end

end
