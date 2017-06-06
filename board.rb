require_relative 'piece'


BACKROW_W = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new, Bishop.new, Knight.new, Rook.new]
BACKROW_B = [Rook.new(:black), Knight.new(:black), Bishop.new(:black), Queen.new(:black), King.new(:black), Bishop.new(:black), Knight.new(:black), Rook.new(:black)]


class Board

  attr_reader :board
  def initialize()
    @null_piece = NullPiece.instance
    @board = Array.new(8) { Array.new(8){ @null_piece } }
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
    # unless self[start_pos].valid_move?(end_pos)
    #   puts "Invalid move location."
    #   #call turn method here again
    # end
    self[end_pos] = self[start_pos]
    self[start_pos] = @null_piece
  end


  def checkmate?

  end

  def in_bound?(pos)
    row, col = pos
    range = (0..7)
    unless range.include?(row) && range.include?(col)
      return false
    end
    true
  end

  protected

  def make_starting_grid
    BACKROW_B.each_with_index do |piece, col|
      pos = [0, col]
      self[pos] = piece
    end
    BACKROW_W.each_with_index do |piece, col|
      pos = [7, col]
      self[pos] = piece
    end

    (0..7).each do |col|
      @board[1][col] = Pawn.new(:black)
      @board[6][col] = Pawn.new
    end


  end

  def find_king(color)

  end


end
