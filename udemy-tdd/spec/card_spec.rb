require 'card'

describe Card do
  
    let(:suit) { 'Diamonds' }
    let(:rank) { '8' }
    
    subject(:card) { described_class.new(suit, rank) }
  
  it 'responds to suit' do
    expect(card).to respond_to :suit
  end
  
  it 'responds to rank' do
    expect(card).to respond_to :rank
  end
  
  it 'responds to show' do
    expect(card).to respond_to :show
  end
  
  it '"show" method returns "true"' do
    expect(card.show).to eq true
  end
  
  it '"suit" method returns "Diamonds"' do
    expect(card.suit).to eq 'Diamonds'
  end
  
  it '"rank" method returns "8"' do
    expect(card.rank).to eq '8'
  end
  
  it 'outputs rank and suit if "show" is true' do
    expect("#{card}").to eq "#{rank} of #{suit}"
  end 
  
  it 'does not outputs rank and suit if "show" is false' do
    card.show = false
    expect("#{card}").to eq ""
  end 
end