 -- Meta class
Shape = {side = 10, area = 0}
-- 基础类方法 new
function Shape:new ()
  o = {}
  setmetatable(o, self)
  self.__index = self
  return o
end
-- 基础类方法 printArea
function Shape:printArea ()
  print("area1 is",self.side * self.side)
end

function Shape:printside()
  print("side is", self.side)
end

-- 创建对象
myshape = Shape:new()
myshape.side = 20
Shape:printArea()         --100
myshape:printArea()       --400


Square = Shape:new()
function Square : printArea()
    print("area2:", self.length * self.length)
end

function Square : printLength()
    print( "length is", self.length)
end

function Square:new(length)
    -- o = Shape:new()       --没有必要?
    o = {}
    self.__index = self
    setmetatable(o, self)
    o.length = length
    return o
end

square = Square : new(30)
square : printArea()        --900
square : printside()        --10    --派生自Shap
square : printLength()      --30    --派生自Square