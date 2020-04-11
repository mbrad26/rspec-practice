class Word
  def self.palindrome?(test_word)
    test_word = test_word.downcase
    true if test_word == test_word.reverse
  end
end
