class RomanNumerals
  
  LOOKUP_TABLE = {1 => 'I', 5 => 'V', 10 => 'X'}
  
  def convert(n)
    LOOKUP_TABLE[n]
  end
  
end