
module Apple
  def setApple(size,color)
    @@size = size
    @@color = color
  end
end

module Bannana
  def initialize(size,color)
    @size = size
    @color = color
  end
=begin
  def returnBannana
    return @size,@color
  end
=end

end

class Fruits
  include Apple
  include Bannana
  def getApple
    return @@size,@@color
  end
  def getBannana
    return @size,@color
  end
end

objectFruit = Fruits.new('large','yellow')
objectFruit.setApple('small','green')
#objectFruit.setBannana('large','yellow')
a = objectFruit.getApple
b = objectFruit.getBannana
puts a," ",b













=begin
module Apple
  
  def get
    return @@size,@@color
  end
end


class Fruits
  @@size,@@color=0,0
  def set(size,color)
    @@size = size
    @@color = color
  end
  include Apple
end

objectFruit = Fruits.new
objectFruit1 = Fruits.new
objectFruit.set('small','green')
a = objectFruit.get
b = objectFruit1.get
puts a,b 
=end



