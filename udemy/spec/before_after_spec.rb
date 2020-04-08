describe 'before and after hooks' do
  
  before :context do
    puts 'Before context example'
  end
  
  after :context do
    puts 'After context example'
  end
  
  before :example do
    puts 'Before example'
  end
  
  after :example do
    puts 'After example'
  end
  
  it 'is just a random example' do
    expect(5 * 5).to eq 25
  end
  
  it 'is just another random example' do
    expect(3 * 4).to eq 12
  end
end