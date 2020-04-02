require 'roman_numerals.rb'

describe 'RomanNumerals' do
  
  before :each do
    @numeral = RomanNumerals.new
  end
  
  it 'converts 1 to I' do
    expect(@numeral.convert(1)).to eq('I')
  end
  
  it 'converts 5 to V' do
    expect(@numeral.convert(5)).to eq('V')
  end
  
end