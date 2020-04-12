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

  def self.product_names
    # @@products.map { |product| product.name}
    @@products.map(&:name)
  end

  def self.products_to_order
    @@products.select { |product| product.qty == 0 }
  end

  def self.inventory_value
    # inventory = 0
    # @@products.each { |product| inventory += product.qty * product.price }
    # inventory
    @@products.reduce(0) { |acc, product| acc + product.qty * product.price}
  end
end
