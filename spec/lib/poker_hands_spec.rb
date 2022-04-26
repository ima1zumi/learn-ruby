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

  context 'Full house' do
    let(:cards) do
      [
        Card.new(:club, 'K'),
        Card.new(:heart, 'K'),
        Card.new(:diamond, 'K'),
        Card.new(:club, '7'),
        Card.new(:spade, '7')
      ]
    end

    it do
      expected = 'Full house'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Flush' do
    let(:cards) do
      [
        Card.new(:club, 'K'),
        Card.new(:club, 'Q'),
        Card.new(:club, '9'),
        Card.new(:club, '8'),
        Card.new(:club, '2')
      ]
    end

    it do
      expected = 'Flush'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Straight' do
    let(:cards) do
      [
        Card.new(:club, '3'),
        Card.new(:heart, '4'),
        Card.new(:diamond, '5'),
        Card.new(:club, '6'),
        Card.new(:spade, '7')
      ]
    end

    it do
      expected = 'Straight'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Three of a kind' do
    let(:cards) do
      [
        Card.new(:club, 'K'),
        Card.new(:heart, 'K'),
        Card.new(:diamond, 'K'),
        Card.new(:club, '7'),
        Card.new(:spade, '5')
      ]
    end

    it do
      expected = 'Three of a kind'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Two pairs' do
    let(:cards) do
      [
        Card.new(:club, 'K'),
        Card.new(:heart, 'K'),
        Card.new(:diamond, '7'),
        Card.new(:club, '7'),
        Card.new(:spade, '5')
      ]
    end

    it do
      expected = 'Two pairs'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Pair' do
    let(:cards) do
      [
        Card.new(:club, 'K'),
        Card.new(:heart, 'K'),
        Card.new(:diamond, '7'),
        Card.new(:club, '2'),
        Card.new(:spade, '5')
      ]
    end

    it do
      expected = 'Pair'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end

  context 'Highcard' do
    let(:cards) do
      [
        Card.new(:club, '10'),
        Card.new(:heart, '4'),
        Card.new(:diamond, '7'),
        Card.new(:club, 'K'),
        Card.new(:spade, '2')
      ]
    end

    it do
      expected = 'Highcard'
      expect(PokerHands.judge(cards)).to eq(expected)
    end
  end
end
