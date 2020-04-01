require 'fizzbuzz-alt'

describe 'fizzbuzz' do
  it 'returns "fizz" for multiple of 3' do
    expect(99.fizzbuzz).to eq('fizz')
  end
end