# -*- coding: UTF-8 -*-
 
class Employee:
   '(文档)所有员工的基类'
   empCount = 0
 
   def __init__(self, name, salary):
      self.name = name
      self.salary = salary
      Employee.empCount += 1
   
   def displayCount(self):
     print "Total Employee %d" % Employee.empCount
 
   def displayEmployee(self):
      print "Name : ", self.name,  ", Salary: ", self.salary

employ = Employee("test", 1111)

print(employ.__class__)             #__main__.Employee
# print(employ.__name__) #error
print(employ.__class__.__name__)    #Employee
print(Employee.__name__)            #Employee
print(employ.__doc__)               #(文档)所有员工的基类
print(Employee.__doc__)             #(文档)所有员工的基类
print(employ.__dict__)              #{'salary': 1111, 'name': 'test'}
print(Employee.__dict__)            #{'__module__': '__main__', 'displayCount': <function displayCount at 0x02A88570>, 'empCount': 1, 'displayEmployee': <function displayEmployee at 0x02A88530>, '__doc__': '(\xe6\x96\x87\xe6\xa1\xa3)\xe6\x89\x80\xe6\x9c\x89\xe5\x91\x98\xe5\xb7\xa5\xe7\x9a\x84\xe5\x9f\xba\xe7\xb1\xbb', '__init__': <function __init__ at 0x02A885F0>}
print(employ.__module__)            #__main__
print(Employee.__module__)          #__main__
# print(employ.__bases__)#error    
print(Employee.__bases__)           #()