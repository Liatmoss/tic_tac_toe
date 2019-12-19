require_relative 'calculation'

class Game
  attr_reader :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    raise 'This space is already taken' if @board[pos - 1] != ' '

    @board[pos - 1, 1] = 'X'
    @board
  end

  def player_o(pos)
    raise 'This space is already taken' if @board[pos - 1] != ' '

    @board[pos - 1, 1] = 'O'
    @board
  end
end
