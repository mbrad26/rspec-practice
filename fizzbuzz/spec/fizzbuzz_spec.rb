require 'fizzbuzz' 

describe 'fizzbuzz' do
  it 'returns "fizz" for multiple of 3' do
    expect(fizzbuzz(9)).to eq('fizz')
  end
  
  it 'returns "buzz" for multiple of 5' do
    expect(fizzbuzz(25)).to eq('buzz')
  end
  
  it 'returns "fizzbuzz" for multiple of 15' do
    expect(fizzbuzz(30)).to eq('fizzbuzz')
  end
  
  it 'returns number for any other number' do
    expect(fizzbuzz(17)).to eq(17)
  end
  
end