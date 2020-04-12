require 'strings'

describe BasicString do

  let(:ruby) { 'Ruby' }
  subject(:sentence) { described_class.new('There is a gem called ruby') }

  context 'case-sensitive' do
    it 'checks if a string contains a given substring' do
      expect(sentence.has_substring?(ruby)).to be_falsey
    end
  end

  context 'case-insensitive' do
    it 'checks if a string contains a given substring' do
      expect(subject.has_substring_ignorecase?(ruby)).to be_truthy
    end
  end
end
