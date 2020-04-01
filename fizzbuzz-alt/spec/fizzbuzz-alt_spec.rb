require 'fizzbuzz-alt'

describe 'fizzbuzz' do
  it 'returns "fizz" for multiple of 3' do
    expect(99.fizzbuzz).to eq('fizz')
  end
  
  it 'returns "buzz" for multiple of 5' do
    expect(25.fizzbuzz).to eq('buzz')
  end
  
  it 'returns "fizzbuzz" for multiple of 15' do
    expect(30.fizzbuzz).to eq('fizzbuzz')
  end
  
end