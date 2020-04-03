require 'detective'

describe Detective do
  
  describe '#investigate' do
    
    it 'returns what it is investigating' do
      
      thinghie = double(:thinghie, prod: 'oi!')
      subject = Detective.new(thinghie)
    
      expect(subject.investigate).to eq 'It went "oi!"'
    end
    
  end
  
end