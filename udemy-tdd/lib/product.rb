class Product

  attr_reader :id, :name, :qty, :price
  @@products = []

  def initialize(data = {})
    @id = data[:id] || 0
    @name = data[:name] || 'Test Product'
    @qty = data[:qty] || 0
    @price = data[:price] || 0
    @@products << self
  end

  def self.all
    @@products
  end
end
