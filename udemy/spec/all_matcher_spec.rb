RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([5, 7, 9, 11]).to all(be_odd)  
    expect([4, 6, 8]).to all(be_even)
    expect([2, 3, 7, 5]).to all(be_an(Integer))
    expect([3, 2, 5]).to all(be < 10)
  end
  
  describe [1, 2, 3, 7, 9, 32, 17] do
    it { is_expected.to all(be > 0)  }
  end
end
