require 'product'

describe Product do

  before (:all) do
    @product = described_class.new({id: 1, name: 'Item1', qty: 3, price: 25})
  end

  it 'responds to id' do
    expect(@product).to respond_to(:id)
  end

  it 'responds to name' do
    expect(@product).to respond_to(:name)
  end

  it 'responds to qty' do
    expect(@product).to respond_to(:qty)
  end

  it 'responds to price' do
    expect(@product).to respond_to(:price)
  end

    it 'returns correct attributes' do
      expect(@product.id).to eq 1
      expect(@product.name).to eq 'Item1'
      expect(@product.qty).to eq 3
      expect(@product.price).to eq 25
    end

    it 'returns the list of all products' do
      expect(described_class.all).to eq [@product]
    end
end
