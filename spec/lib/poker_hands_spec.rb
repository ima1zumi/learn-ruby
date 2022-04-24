require 'rspec'
require_relative '../../lib/poker_hands.rb'

RSpec.describe PokerHands do
  context 'Straight flush' do
    it do
      expected = 'Straight flush'
      cards = %w(Spade5 Spade6 Spade7 Spade8 Spade9)
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Four of a kind' do
    it do
      expected = 'Four of a kind'
      cards = %w(Spade5 Spade6 Spade7 Spade8 Spade9)
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end
end
