require 'card'

describe Card do
  let(:suit) { 'Diamonds' }
  let(:rank) { '8' }
  subject(:card) { described_class.new(suit, rank)  }
  
  it 'responds to suit' do
    expect(card).to respond_to :suit
  end
  
  it 'responds to rank' do
    expect(card).to respond_to :rank
  end
  
  it 'responds to show' do
    expect(card).to respond_to :show
  end
end