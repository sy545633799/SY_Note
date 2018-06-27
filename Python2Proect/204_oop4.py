# 序号	方法, 描述 & 简单的调用
# 1	__init__ ( self [,args...] )
# 构造函数
# 简单的调用方法: obj = className(args)
# 2	__del__( self )
# 析构方法, 删除一个对象
# 简单的调用方法 : del obj
# 3	__repr__( self )
# 转化为供解释器读取的形式
# 简单的调用方法 : repr(obj)
# 4	__str__( self )
# 用于将值转化为适于人阅读的形式
# 简单的调用方法 : str(obj)
# 5	__cmp__ ( self, x )
# 对象比较
# 简单的调用方法 : cmp(obj, x)

class Vector:
   def __init__(self, a, b):
      self.a = a
      self.b = b
 
   def __str__(self):
      return 'Vector (%d, %d)' % (self.a, self.b)
   
   def __add__(self,other):
      return Vector(self.a + other.a, self.b + other.b)
 
v1 = Vector(2,10)
v2 = Vector(5,-2)
print v1 + v2

