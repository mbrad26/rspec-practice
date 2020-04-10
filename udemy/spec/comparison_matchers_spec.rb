RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(5).to be > 3
    expect(7).to be < 27
    
    expect(1).to be >= 0
    expect(1).to be >= 1
    
    expect(22).to be <= 100
    expect(22).to be <= 22 
  end
  
  describe 100 do
    it { is_expected.to be > 99 }
  end
end