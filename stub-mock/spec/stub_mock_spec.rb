require 'spec_helper'

# Stub
# Returns canned responses, avoiding any meaningful computation or I/O:
#
# allow(some_object).to receive(some_method).and_return(some_value)
# 
# Mock
# Expects specific messages; will raise an error if it doesn’t receive them by the end of the example:
#
# expect(some_object).to receive(some_method).and_return(some_value)


describe DataProcessor do
  # let creates an instance only when called for
  let(:processor) { described_class.new } 
  
  context 'with valid data' do
    it 'adds processed to valid data' do
      validator = double(:validator) 
      # stub method
      allow(validator).to receive(:valid?).and_return(true) 
      
      expect(processor.process('foo', validator)).to eq('foo processed')
    end
  end
  
  context 'with invalid data' do
    it 'raises Error' do
      # one line double with stub method
      validator = double(:validator, valid?: false)
      expect { processor.process('foo', validator) }.to raise_error(DataProcessor::Error)
    end
  end
  
  # to make sure the obj receives any message use mocks
  it 'calls validator.valid?' do
    validator = double(:validator)
    # mock
    expect(validator).to receive(:valid?).with('foo').and_return(true)
    processor.process('foo', validator)
  end
  
end