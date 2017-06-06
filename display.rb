require 'colorize'
require_relative 'board'
require_relative 'cursor'


class Display

  attr_reader :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end


  def selected_color

    if @cursor.selected
      :blue
    else
      :red
    end

  end

  def render

    (0...@board.board.length).each do |row|
      (0...@board.board[0].length).each do |col|
        if @cursor.cursor_pos == [row, col]
          print " " + @board.board[row][col].value.colorize(background: selected_color)
        else
          print " " + @board.board[row][col].value
        end
      end
      puts
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  disp = Display.new(board)
  disp.render
  while true
    disp.cursor.get_input
    system("clear")
    disp.render
  end
end
