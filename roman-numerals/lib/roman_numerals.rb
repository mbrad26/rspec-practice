class RomanNumerals
  
  LOOKUP_TABLE = {10 => 'X', 5 => 'V', 1 => 'I'}
  
  def convert(n)
    roman_n = ''
    LOOKUP_TABLE.each do |k, v|
      (n / k).times {roman_n << v; n -= k}
    end
    roman_n
  end
  
end