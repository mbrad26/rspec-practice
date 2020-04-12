class BasicString

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def has_substring?(substring)
    @string.include?(substring)
  end

  def has_substring_ignorecase?(substring)
    substring = substring.downcase
    @string.downcase.include?(substring)
  end
end
