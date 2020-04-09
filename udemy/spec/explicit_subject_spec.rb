describe Hash do
  # subject will be available in the child scope as well
  # :bob is an alias for subject
  subject(:bob) do
    { a: 1, b: 2 }
  end
  
  it 'has two key-value pairs' do
    # both are valid syntax
    # expect(subject.length).to eq 2
    expect(bob.length).to eq 2
  end
  
  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(bob.length).to eq 2
    end
  end
  
end