require 'detective'

describe Detective do
  describe '#investigate' do
    it 'returns what it is investigating' do
      
      thinghie = double(:thinghie, prod: 'oi!')
      subject = Detective.new(thinghie)
    
      expect(subject.investigate).to eq 'Nothing to investigate!'
    end
  end
end