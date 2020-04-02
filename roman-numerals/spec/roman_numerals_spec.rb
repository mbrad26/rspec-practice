require 'roman_numerals.rb'

describe 'RomanNumerals' do
  
  before :each do
    @number = RomanNumerals.new
  end
  
  it 'converts 1 to I' do
    expect(@number.convert(1)).to eq('I')
  end
  
end