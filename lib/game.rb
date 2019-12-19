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

  def result?
    if player_x_wins_hor? == true || player_x_wins_vert? == true || player_x_wins_diagonal? == true
      'x wins this game'
    elsif player_o_wins_hor? == true || player_o_wins_vert? == true || player_o_wins_diagonal? == true
      'o wins this game'
    elsif @board.include?(' ') == false
      'This game is tied'
    end
  end


  def player_o_wins_hor?
    true if @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O' || @board[3] == 'O' && @board[4] == 'O' && @board[5] == 'O' || @board[6] == 'O' && @board[7] == 'O' && @board[8] == 'O'
  end

  def player_o_wins_vert?
    true if @board[0] == 'O' && @board[3] == 'O' && @board[6] == 'O' || @board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O' || @board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O'
  end

  def player_o_wins_diagonal?
    true if @board[0] == 'O' && @board[4] == 'O' && @board[8] == 'O' || @board[2] == 'O' && @board[4] == 'O' && @board[6] == 'O'
  end
end
