class RomanNumerals
  
  LOOKUP_TABLE = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
  
  def convert(number)
    roman_n = ''
    LOOKUP_TABLE.each_pair do |k, v|
      (number / k).times {roman_n << v; number -= k}
    end
    roman_n
  end
  
end