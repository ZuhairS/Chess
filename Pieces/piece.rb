require 'singleton'


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
  def initialize
  end
  def symbol
    " "
  end
end



module SteppingPiece
  def moves
  end

end
