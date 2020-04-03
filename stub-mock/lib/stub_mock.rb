class DataProcessor
  Error = Class.new(StandardError)
  
  def process(data, validator)
    raise Error unless validator.valid?(data)
    
    "#{data} processed"
  end
  
end