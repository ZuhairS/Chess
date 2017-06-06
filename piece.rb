class Piece

  # BACKROW_W = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new, Bishop.new, Knight.new, Rook.new].freeze
  # BACKROW_B = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new, Bishop.new, Knight.new, Rook.new].freeze

  def initialize


  end

end

class NullPiece # < Piece
  attr_reader :value

  def initialize
    @value = "#"
  end

end
