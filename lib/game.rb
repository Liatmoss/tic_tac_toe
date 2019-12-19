class Game
  attr_reader :board, :player_x, :player_o

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    raise 'This space is already taken' if @board[pos-1] != ' '

    @board[pos - 1, 1] = 'X'
    # if result?
    #   return result?
    # else
      @board
    # end
  end

  def player_o(pos)
    raise 'This space is already taken' if @board[pos-1] != ' '

    @board[pos - 1, 1] = 'O'
    # if result?
    #   return result?
    # else
    #   @board
    # end
    @board
  end
end
