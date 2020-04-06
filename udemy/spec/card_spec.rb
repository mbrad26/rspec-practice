require 'card'

describe 'Card' do
  it 'has a type method' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
  end
end