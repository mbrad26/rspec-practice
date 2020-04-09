RSpec.shared_context 'common' do
  before do
    # instance variable to be used outside its current context
    @foods = []
  end
  
  def some_helper
    5
  end
  
  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'something' do
  include_context 'common'
  
  it 'can use outside instance variables' do
    expect(@foods.length).to eq 0
    @foods << 'fish'
    expect(@foods.length).to eq 1
  end
  
  it 'can reuse instance variables across different examples' do
    expect(@foods.length).to eq 0
  end
  
  it 'can used shared helper methods' do
    expect(some_helper).to eq 5
  end
end

RSpec.describe 'second example' do
  include_context 'common'
  
  it 'can use shared let variables' do
    expect(some_variable).to eq [1, 2, 3]
  end
end









