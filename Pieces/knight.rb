require_relative "piece"

class Knight < Piece
  def symbol
    if color == :white
      "♘"
    else
      '♞'
    end
  end

  def move_diffs
  [[-2, -1],
   [-1, -2],
   [-2, 1],
   [-1, 2],
   [1, -2],
   [2, -1],
   [1, 2],
   [2, 1]]
  end
end
