describe 'nested hooks' do
  
  before :context do
    puts 'OUTER Before context example'
  end
  
  before :example do
    puts 'OUTER Before example'
  end
  
  it 'does basic math' do
    expect(2 + 3).to eq 5
  end
  
  context 'with a condition' do
    
    before :context do
      puts 'INNER Before context example'
    end
  
    before :example do
      puts 'INNER Before example'
    end
    
    it 'does some more basic math' do
      expect(1 - 2).to eq(-1)
    end
    
    it 'does even more basic math' do
      expect(1 * 2).to eq 2
    end
    
  end
end