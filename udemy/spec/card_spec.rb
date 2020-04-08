require 'card'

describe Card do
  
  let(:card) { Card.new('Ace', 'Spades') }
  
=begin
  before :each do
    @card = Card.new('Ace', 'Spades')
  end
=end

  it 'has a rank and the rank can change' do
    expect(card.rank).to eq 'Ace'
    card.rank = 'Queen'
    expect(card.rank).to eq 'Queen'
  end
  
  it 'has a suit' do
    expect(card.suit).to eq 'Spades'
  end
  
  it "has a custom error message" do
    #card.suit = 'Nothing'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Expected #{comparison} instead got #{card.suit}"
  end
  
end
