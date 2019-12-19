require 'Calculation'
require_relative 'game_helper'

describe Calculation do
  let(:game) { double :game }
  let(:calculation) { Calculation.new(game) }


  describe '#game_calculations' do
    it 'knows if the game results in a draw' do
      allow(game).to receive(:board).and_return ['X', 'O', 'X', 'O', 'X', 'X', 'O', 'X', 'O']
      expect(calculation.result?).to eq('This game is tied')
    end

    describe '#x wins' do
      it 'knows when x wins a game horizontally' do
        allow(game).to receive(:board).and_return ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
        expect(calculation.result?).to eq('x wins this game')
      end
    end
  end
end
