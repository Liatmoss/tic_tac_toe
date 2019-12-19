require_relative 'calculation'

class Game
  attr_reader :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    raise 'This space is already taken' if @board[pos] != ' '

    @board[pos, 1] = 'X'
    if result?
      return result?
    else
      @board
    end
  end

  def player_o(pos)
    raise 'This space is already taken' if @board[pos] != ' '

    @board[pos, 1] = 'O'
    @board
  end

  def result?
    unless @board.include? ' '
      return 'This game is tied'
    end

  end
end
