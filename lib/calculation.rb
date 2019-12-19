require_relative 'game'

class Calculation

  def initialize(game)
    @game = game
  end

  def result?
    'This game is tied' if @game.board.include?(' ') == false
  end

end
