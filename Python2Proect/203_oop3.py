# -*- coding: UTF-8 -*-
 
class Parent:        # 定义父类
    parentAttr = 100
    def __init__(self):
        print "调用父类构造函数"
    
    def parentMethod(self):
        print '调用父类方法1'
    
    def setAttr(self, attr):
        Parent.parentAttr = attr
    
    def getAttr(self):
        print "父类属性 :", Parent.parentAttr
    
    def Method2(self):
        print("父类方法2")

    # 私有属性和私有方法，前面加__即可
    __privateAttr = "私有方法，外部(包括子类)不能访问"
    def __privateMethod:
        print("私有方法，外部（包括子类）不能访问")
    
 
class Child(Parent): # 定义子类
    def __init__(self):
        print "调用子类构造方法"
    
    def childMethod(self):
        print '调用子类方法1'

    def Method2(self):
        print("子类重载方法2")

c = Child()          # 实例化子类
c.childMethod()      # 调用子类的方法
c.parentMethod()     # 调用父类方法
c.setAttr(200)       # 
c.getAttr()          # 父类属性：200
c.Method2()          # 子类重载方法2
