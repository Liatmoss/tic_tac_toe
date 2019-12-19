require 'Calculation'
require_relative 'game_helper'

describe Calculation do
  let(:game) { double :game }
  let(:calculation) { Calculation.new(game) }

  describe '#game_calculations' do

    it 'knows game is a draw' do
      allow(game).to receive(:board).and_return ['X', 'O', 'X', 'O', 'X', 'X', 'O', 'X', 'O']
      expect(calculation.game_draws?).to eq(true)
    end

    describe '#x wins' do
      it 'knows when x wins a game horizontally' do
        allow(game).to receive(:board).and_return ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
        expect(calculation.player_x_wins_hor?).to eq(true)
      end

      it 'knows when x wins a game vertically' do
        allow(game).to receive(:board).and_return ['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' ']
        expect(calculation.player_x_wins_vert?).to eq(true)
      end

      it 'knows when x wins a game diagonally' do
        allow(game).to receive(:board).and_return ['X', ' ', ' ', ' ', 'X', ' ', ' ', ' ', 'X']
        expect(calculation.player_x_wins_diagonal?).to eq(true)
      end
    end

    describe '#o wins' do
      it 'knows when o wins a game horizontally' do
        allow(game).to receive(:board).and_return ['O', 'O', 'O', ' ', ' ', ' ', ' ', ' ', ' ']
        expect(calculation.player_o_wins_hor?).to eq(true)
      end

      it 'knows when o wins a game vertically' do
        allow(game).to receive(:board).and_return ['O', ' ', ' ', 'O', ' ', ' ', 'O', ' ', ' ']
        expect(calculation.player_o_wins_vert?).to eq(true)
      end

      it 'knows when o wins a game diagonally' do
        allow(game).to receive(:board).and_return ['O', ' ', ' ', ' ', 'O', ' ', ' ', ' ', 'O']
        expect(calculation.player_o_wins_diagonal?).to eq(true)
      end
    end
  end
end
