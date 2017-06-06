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
  attr_reader :value

  def initialize(color = :white)
    @color = color
  end
  def moves
    move_dirs
  end
end


class Rook < Piece
  attr_reader :value
  def value
    "R"
  end

  def move_dirs
  end
end

class Queen < Piece
  def value
    "Q"
  end

  def move_dirs
  end
end

class Bishop < Piece
  def value
    "B"
  end

  def move_dirs
  end
end

class Knight < Piece
  def value
    "N"
  end
end

class King < Piece
  def value
    "K"
  end
end



class Pawn < Piece
  def value
    "P"
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

  attr_reader :value

  def initialize
    @value = "#"
    super(nil)
  end

end



module SteppingPiece
  def moves
  end

end
