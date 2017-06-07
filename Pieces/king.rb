require_relative "piece"

class King < Piece
  def symbol
    if color == :white
      "♔"
    else
      '♚'
    end
  end

  def move_diffs
  [[-1, -1],
   [-1, 0],
   [-1, 1],
   [0, -1],
   [0, 1],
   [1, -1],
   [1, 0],
   [1, 1]]
  end
end
