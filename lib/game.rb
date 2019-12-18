class Game

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def player_x(pos)
    i = pos
    @board[i, 1] = "X"
    @board
  end

end
