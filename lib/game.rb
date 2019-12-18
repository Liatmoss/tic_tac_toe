class Game
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    @board[pos, 1] = 'X'
    @board
  end

  def player_o(pos)
    @board[pos, 1] = 'O'
    @board
  end
end
