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
  
  let(:processor) { described_class.new } # let creates an instance only when called for
  
  context 'with valid data' do
    it 'adds processed to valid data' do
      validator = double(:validator) # one line double(:validator, valid?: true)
      
      allow(validator).to receive(:valid?).and_return(true) # stub method
      
      expect(processor.process('foo', validator)).to eq('foo processed')
    end
  end
  
  context 'with invalid data' do
    it 'raises Error' do
      validator = double(:validator, valid?: false)
      expect { processor.process('foo', validator) }.to raise_error(DataProcessor::Error)
    end
  end
  
end