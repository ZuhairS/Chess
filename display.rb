require 'colorize'
require_relative 'board'
require_relative 'cursor'


class Display

  attr_reader :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
    @b_color
  end


  def selected_color

   # :black,
   # :light_black,
   # :red,
   # :light_red,
   # :green,
   # :light_green,
   # :yellow,
   # :light_yellow,
   # :blue,
   # :light_blue,
   # :magenta,
   # :light_magenta,
   # :cyan,
   # :light_cyan,
   # :white,
   # :light_white,
   # :default

    if @cursor.selected
      :light_red
    else
      :light_green
    end

  end

  def background_color
    if @b_color
      :white
    else
      :light_white
    end
  end

  def background_color_toggle
    @b_color = !@b_color
  end

  def render
    background_color
    (0...@board.board.length).each do |row|
      (0...@board.board[0].length).each do |col|
        if @cursor.cursor_pos == [row, col]
          print " " + @board.board[row][col].symbol.colorize(background: selected_color)
        else
          print " " + @board.board[row][col].symbol.colorize(background: background_color)
        end
        background_color_toggle unless col == 7
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
    puts `clear`
    disp.render
  end
end
