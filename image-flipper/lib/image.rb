class ImageFlipper
  
  def initialize(obj)
    @obj = obj
  end
  
  def flip(img)
    @obj.flip(img)
  end
  
end

class NumberGenerator
  
  def random
    'A' * rand(1..10)
  end
  
end