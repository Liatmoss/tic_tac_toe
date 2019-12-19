require_relative 'game'

class Calculation
  def initialize(game)
    @game = game
  end

  def game_draws?
    true if @game.board.include?(' ') == false
  end

  def player_x_wins_hor?
    true if @game.board[0] == 'X' && @game.board[1] == 'X' && @game.board[2] == 'X' || @game.board[3] == 'X' && @game.board[4] == 'X' && @game.board[5] == 'X' || @game.board[6] == 'X' && @game.board[7] == 'X' && @game.board[8] == 'X'
  end

  def player_x_wins_vert?
    true if @game.board[0] == 'X' && @game.board[3] == 'X' && @game.board[6] == 'X' || @game.board[1] == 'X' && @game.board[4] == 'X' && @game.board[7] == 'X' || @game.board[2] == 'X' && @game.board[5] == 'X' && @game.board[8] == 'X'
  end

  def player_x_wins_diagonal?
    true if @game.board[0] == 'X' && @game.board[4] == 'X' && @game.board[8] == 'X' || @game.board[2] == 'X' && @game.board[4] == 'X' && @game.board[6] == 'X'
  end

  def player_o_wins_hor?
    true if @game.board[0] == 'O' && @game.board[1] == 'O' && @game.board[2] == 'O' || @game.board[3] == 'O' && @game.board[4] == 'O' && @game.board[5] == 'O' || @game.board[6] == 'O' && @game.board[7] == 'O' && @game.board[8] == 'O'
  end

  def player_o_wins_vert?
    true if @game.board[0] == 'O' && @game.board[3] == 'O' && @game.board[6] == 'O' || @game.board[1] == 'O' && @game.board[4] == 'O' && @game.board[7] == 'O' || @game.board[2] == 'O' && @game.board[5] == 'O' && @game.board[8] == 'O'
  end

  def player_o_wins_diagonal?
    true if @game.board[0] == 'O' && @game.board[4] == 'O' && @game.board[8] == 'O' || @game.board[2] == 'O' && @game.board[4] == 'O' && @game.board[6] == 'O'
  end
end
