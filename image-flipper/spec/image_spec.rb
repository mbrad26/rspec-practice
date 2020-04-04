require 'image'

describe ImageFlipper do
  it 'calls flip method with the correct arguments' do
    mock = double(:mini_magick)
    expect(mock).to receive(:flip).with('ruby.jpg')
    
    img = ImageFlipper.new(mock)
    img.flip('ruby.jpg')
  end
end

describe NumberGenerator do
  it 'generates a random number' do
    generator = NumberGenerator.new
    
    allow(generator).to receive(:rand).and_return(7)
    
    expect(generator.random).to eq('AAAAAAA')
  end
end