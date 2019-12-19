require_relative 'game'

class Calculation

  def initialize(game)
    @game = game
  end

  def result?
    if player_x_wins_hor? == true
      'x wins this game'
    elsif @game.board.include?(' ') == false
      'This game is tied'
    end
  end

  def player_x_wins_hor?
    true if @game.board[0] == 'X' && @game.board[1] == 'X' && @game.board[2] == 'X' || @game.board[3] == 'X' && @game.board[4] == 'X' && @game.board[5] == 'X' || @game.board[6] == 'X' && @game.board[7] == 'X' && @game.board[8] == 'X'
  end

end
