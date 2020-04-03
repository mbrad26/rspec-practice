require 'detective'

describe Detective do
  describe '#investigate' do
    
    subject = Detective.new
    
    it 'returns what it is investigating' do
      expect(subject.investigate).to eq 'Nothing to investigate!'
    end
  end
end