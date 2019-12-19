def game_draw
  game.player_x(0)
  game.player_o(1)
  game.player_x(2)
  game.player_o(3)
  game.player_x(4)
  game.player_o(8)
  game.player_x(7)
  game.player_o(6)
  game.player_x(5)
end

def game_x_wins
  game.player_x(0)
  game.player_o(3)
  game.player_x(1)
  game.player_o(7)
  game.player_x(2)
end
