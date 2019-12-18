require 'game'
describe Game do
  describe '#player_x' do
    it 'shows an x in one square if player x chooses 0' do
      game = Game.new
      expect(game.player_x(0)).to eq(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'raises an error if space is already taken' do
      game = Game.new
      game.player_o(1)
      expect { game.player_x(1) }.to raise_error 'This space is already taken'
    end
  end

  describe 'player_o' do
    it 'shows an o in one square if player o chooses 1' do
      game = Game.new
      expect(game.player_o(1)).to eq([' ', 'O', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
  end
end
