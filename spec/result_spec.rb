require 'result'

describe Result do
  let(:game) { double :game }
  let(:calculation) { double :calculation }
  let(:result) { Result.new(calculation) }

  describe '#result' do
    it 'returns game is a draw if game is tied' do
      allow(calculation).to receive(:game_draws?).and_return true
      expect(result.result?).to eq('This game is tied')
    end
  end
end
