require 'card'

describe Card do
  it 'has a type method' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq 'Ace'
    expect(card.suit).to eq 'Spades'
  end
end
