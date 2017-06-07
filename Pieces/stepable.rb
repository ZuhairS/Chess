# NOT COMPLETE AT ALL
require_relative "piece"


module StepablePiece
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
      moves += list_valid_moves_in_dir(d_row, d_col)
    end
    moves
  end

  def list_valid_moves_in_dir(d_row, d_col)
    move_list = []
    cur_row, cur_col = pos
    next_row = cur_row + d_row
    next_col = cur_col + d_col
    loop do
      if board.inbound?([next_row, next_col]) || board[next_row][next_col].symbol == " "
        move_list << [next_row, next_col]
      else
        move_list << pos if board[pos].color != color #self?
        break
      end
      next_row += d_row
      next_col += d_col
      break unless board.inbound?([next_row, next_col])
    end
    move_list
  end
end
