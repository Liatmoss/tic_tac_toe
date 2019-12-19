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
    if player_x_wins? == true
      'x wins this game'
    elsif @board.include?(' ') == false
      'This game is tied'
    end
  end

  def player_x_wins?
    true if @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X' || @board[3] == 'X' && @board[4] == 'X' && @board[5] == 'X' || @board[6] == 'X' && @board[7] == 'X' && @board[8] == 'X'
  end
end
