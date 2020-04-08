RSpec.describe Hash do
  # subject will instantiate a new instance 
  # of the described class automatically
  # subject is lazy-loaded just like let()
  
  # let(:my_hash) { Hash.new }
  
  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq 0
    subject[:some_key] = 'Something'
    puts subject
    expect(subject.length).to eq 1
  end
  
  it 'is isolated between examples' do
    puts subject
    expect(subject.length).to eq 0
  end
end