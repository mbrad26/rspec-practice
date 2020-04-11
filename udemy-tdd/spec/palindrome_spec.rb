require 'palindrome'

describe Word do
  context 'test word is a palindrome' do
    it 'reads the same forwards and backwords' do
      test_word = 'Madam'
      result = Word.palindrome?(test_word)
      expect(result).to be_truthy
    end
  end

  context 'test word is not a palindrome' do
    it 'not reads the same forwards and backwords' do
      test_word = 'Food'
      result = Word.palindrome?(test_word)
      expect(result).to be_falsy
    end
  end
end
