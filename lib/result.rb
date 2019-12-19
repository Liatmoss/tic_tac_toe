require_relative 'calculation'
require_relative 'game'

class Result
  def initialize(calculation)
    @calculation = calculation
  end

  def result?
    if @calculation.game_draws? == true
      return 'This game is tied'
    end
  end
end

# if @calculation.player_x_wins_hor? == true || @calculation.player_x_wins_vert? == true || @calculation.player_x_wins_diagonal? == true
#   'x wins this game'
# elsif @calculation.player_o_wins_hor? == true || @calculation.player_o_wins_vert? == true || @calculation.player_o_wins_diagonal? == true
#   'o wins this game'
