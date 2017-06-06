require 'singleton'

class Piece
  attr_reader :value

  def initialize(color = :white)
    @color = color
  end
  def moves

  end
end


class Rook
  attr_reader :value
  def initialize
    @value = "R"
  end

  def move_dirs
  end
end

class Queen
  attr_reader :value
  def initialize
    @value = "Q"
  end

  def move_dirs
  end
end

class Bishop
  attr_reader :value
  def initialize
    @value = "B"
  end

  def move_dirs
  end
end

class Knight
  attr_reader :value
  def initialize
    @value = "N"
  end
end

class King
  attr_reader :value
  def initialize
    @value = "K"
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

class Pawn
  attr_reader :value
  def initialize
    @value = "P"
  end
end



module SlidingPiece
  def moves
  end
end

module SteppingPiece
  def moves
  end

end
