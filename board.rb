require_relative 'piece'

class Board

  def initialize()
    @board = Array.new(8) { Array.new(8){ NullPiece.new } }
    make_starting_grid
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @board[row][col] = piece
  end

  # def move_piece(color, start_pos, end_pos)
  #
  #
  # end

  def move_piece!(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      puts "Space has no piece to move."
      #call turn method here again
    end
    unless self[start_pos].valid_move?(end_pos)
      puts "Invalid move location."
      #call turn method here again
    end
    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.new
  end


  def checkmate?

  end

  protected

  def make_starting_grid
    # BACKROW_B.each_with_index do |piece, idx|
    #   @board[0][idx] = piece
    # end
    # BACKROW_W.each_with_index do |piece, idx|
    #   @board[7][idx] = piece
    # end

  end

  def find_king(color)

  end


end
