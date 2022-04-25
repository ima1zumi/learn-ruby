require 'rspec'
require_relative '../../lib/poker_hands.rb'

# ref: https://en.wikipedia.org/wiki/Texas_hold_%27em

RSpec.describe PokerHands do
  context 'Royal Flush' do
    let(:cards) do
      [
        Card.new(:spade, 'A'),
        Card.new(:spade, 'K'),
        Card.new(:spade, 'Q'),
        Card.new(:spade, 'J'),
        Card.new(:spade, '10')
      ]
    end

    it do
      expected = 'Royal Flush'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Straight Flush' do
    let(:cards) do
      [
        Card.new(:spade, '2'),
        Card.new(:spade, '3'),
        Card.new(:spade, '4'),
        Card.new(:spade, '5'),
        Card.new(:spade, '6')
      ]
    end

    it do
      expected = 'Straight Flush'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Four of a kind' do
    let(:cards) do
      [
        Card.new(:spade, '6'),
        Card.new(:diamond, '6'),
        Card.new(:heart, '6'),
        Card.new(:club, '1'),
        Card.new(:spade, 'K')
      ]
    end

    it do
      expected = 'Four of a kind'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end
end
