def game_draw
  game.player_x(1)
  game.player_o(2)
  game.player_x(3)
  game.player_o(4)
  game.player_x(5)
  game.player_o(9)
  game.player_x(8)
  game.player_o(7)
  game.player_x(6)
end

def game_x_wins_hor
  game.player_x(1)
  game.player_x(2)
  game.player_x(3)
end

def game_x_wins_vert
  game.player_x(1)
  game.player_x(4)
  game.player_x(7)
end

def game_x_wins_diagonal
  game.player_x(1)
  game.player_x(5)
  game.player_x(9)
end
