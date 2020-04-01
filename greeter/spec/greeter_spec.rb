require 'greeter.rb'

describe 'greeter' do
  it 'returns a greeting when passed a name' do
    expect(greeter('John')).to eq('Hello, John!')
  end
end

