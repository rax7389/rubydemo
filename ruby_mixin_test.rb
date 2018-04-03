
module Apple
  def appleString
    puts "Its a nice Apple"
  end
end

module Bannana
  def bannanaString
    puts "Its a nice Bannana"
  end
end

class Fruit
  extend Apple
  include Bannana
end

Fruit.appleString
Fruit.new.bannanaString















=begin
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
a = objectFruit.getApple
b = objectFruit.getBannana
puts a," ",b

=end











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



