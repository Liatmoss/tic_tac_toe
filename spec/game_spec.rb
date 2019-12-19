require 'game'
require_relative 'game_helper'
describe Game do
  let(:game) { Game.new }

  describe '#player_x' do
    it 'shows an x in one square if player x chooses 0' do
      expect(game.player_x(1)).to eq(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'raises an error if space is already taken' do
      game.player_o(2)
      expect { game.player_x(2) }.to raise_error 'This space is already taken'
    end
  end

  describe '#player_o' do
    it 'shows an o in one square if player o chooses 1' do
      expect(game.player_o(2)).to eq([' ', 'O', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'raises an error if space is already taken' do
      game.player_x(2)
      expect { game.player_o(2) }.to raise_error 'This space is already taken'
    end
  end

  describe '#result' do
    it 'knows when a game is tied' do
      game_draw
      expect(game.result?).to eq('This game is tied')
    end

    describe '#x wins' do
      it 'knows when x wins a game horizontally' do
        game_x_wins_hor
        expect(game.result?).to eq('x wins this game')
      end

      it 'knows when x wins a game vertically' do
        game_x_wins_vert
        expect(game.result?).to eq('x wins this game')
      end

      it 'knows when x wins a game diagonally' do
        game_x_wins_diagonal
        expect(game.result?).to eq('x wins this game')
      end
    end
  end

end
