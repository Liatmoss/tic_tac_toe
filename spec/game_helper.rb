def x_loose
  allow(calculation).to receive(:player_x_wins_vert?).and_return false
  allow(calculation).to receive(:player_x_wins_hor?).and_return false
  allow(calculation).to receive(:player_x_wins_diagonal?).and_return false
end

def o_loose
  allow(calculation).to receive(:player_o_wins_vert?).and_return false
  allow(calculation).to receive(:player_o_wins_hor?).and_return false
  allow(calculation).to receive(:player_o_wins_diagonal?).and_return false
end
