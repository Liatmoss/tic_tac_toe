require 'game'

describe Game do

  it 'shows an x in one square if player x chooses 0' do
    game = Game.new
    expect(game.player_x(0)).to eq(["X", " ", " ", " ", " ", " ", " ", " ", " "])
  end

end
