module SlidingPiece
  HOR_MOVES = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0]
  }
  DIAG_MOVES = {
    up_right: [-1, 1],
    up_left: [-1, -1],
    down_right: [1, 1],
    down_left: [1, -1]
  }

  def horizontal_dirs
    HOR_MOVES
  end

  def diagonal_dirs
    DIAG_MOVES
  end

  def moves
    moves = []
    move_dirs.each do |d_row, d_col|
      moves += list_valid_moves_in_dir(row, col)
    end
  end

  def list_valid_moves_in_dir(d_row, d_col)
    cur_row, cur_col = pos
    next_row = cur_row + d_row
    next_col = cur_col + d_col
    until !board.inbound?([next_row, next_col]) || !board[next_row][next_col].symbol == nil

    end
  end
end
