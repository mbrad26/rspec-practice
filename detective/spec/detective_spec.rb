require 'detective'

describe Detective do
  
  describe '#investigate' do
    
    it 'returns what it is investigating' do
      
      thinghie = double(:thinghie)
      subject = Detective.new(thinghie)
      
      allow(thinghie).to receive(:prod).and_return('oi!')
    
      expect(subject.investigate).to eq 'It went "oi!"'
    end
    
  end
  
end 