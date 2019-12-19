require 'result'
require_relative 'game_helper'
describe Result do
  let(:game) { double :game }
  let(:calculation) { double :calculation }
  let(:result) { Result.new(calculation) }

  describe '#result' do
    it 'returns game is a draw if game is tied' do
      x_loose
      o_loose
      allow(calculation).to receive(:game_draws?).and_return true
      expect(result.result?).to eq('This game is tied')
    end

    describe '#x wins' do
      it 'returns x wins if x gets three in a row vertically' do
        o_loose
        allow(calculation).to receive(:player_x_wins_vert?).and_return true
        expect(result.result?).to eq('x wins this game')
      end

      it 'returns x wins if x gets three in a row horizontally' do
        o_loose
        allow(calculation).to receive(:player_x_wins_vert?).and_return false
        allow(calculation).to receive(:player_x_wins_hor?).and_return true
        expect(result.result?).to eq('x wins this game')
      end

      it 'returns x wins if x gets three in a row diagonally' do
        o_loose
        allow(calculation).to receive(:player_x_wins_vert?).and_return false
        allow(calculation).to receive(:player_x_wins_hor?).and_return false
        allow(calculation).to receive(:player_x_wins_diagonal?).and_return true
        expect(result.result?).to eq('x wins this game')
      end
    end

    describe '#o wins' do
      it 'returns o wins if o gets three in a row vertically' do
        x_loose
        allow(calculation).to receive(:player_o_wins_hor?).and_return false
        allow(calculation).to receive(:player_o_wins_vert?).and_return true
        expect(result.result?).to eq('o wins this game')
      end

      it 'returns o wins if o gets three in a row horizontally' do
        x_loose
        allow(calculation).to  receive(:player_o_wins_hor?).and_return true
        expect(result.result?).to eq('o wins this game')
      end

      it 'returns o wins if o gets three in a row diagonally' do
        x_loose
        allow(calculation).to receive(:player_o_wins_vert?).and_return false
        allow(calculation).to receive(:player_o_wins_hor?).and_return false
        allow(calculation).to receive(:player_o_wins_diagonal?).and_return true
        expect(result.result?).to eq('o wins this game')
      end
    end
  end
end
