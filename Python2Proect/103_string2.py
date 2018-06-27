# -*- coding: UTF-8 -*-
 

# +	字符串连接	
# >>>a + b
# 'HelloPython'
# *	重复输出字符串	
# >>>a * 2
# 'HelloHello'
# []	通过索引获取字符串中字符	
# >>>a[1]
# 'e'
# [ : ]	截取字符串中的一部分	
# >>>a[1:4]
# 'ell'
# in	成员运算符 - 如果字符串中包含给定的字符返回 True	
# >>>"H" in a
# True
# not in	成员运算符 - 如果字符串中不包含给定的字符返回 True	
# >>>"M" not in a
# True
# r/R	原始字符串 - 原始字符串：所有的字符串都是直接按照字面的意思来使用，没有转义特殊或不能打印的字符。 原始字符串除在字符串的第一个引号前加上字母"r"（可以大小写）以外，与普通字符串有着几乎完全相同的语法。	
# >>>print r'\n'
# \n
# >>> print R'\n'
# \n

a = "Hello"
b = "Python"
 
print "a + b result:", a + b 
print "a * 2 result", a * 2 
print "a[1] result", a[1] 
print "a[1:4] result", a[1:4] 
print a[::-1]   #字符串反转(从第一个字符开始截取每隔-1个截取一个)
 
if( "He" in a) :
    print "He is in a" 
else :
    print "H is in a" 
 
if( "M" not in a) :
    print "M is not in a" 
else :
    print "M is not in a"

print r'\n'
print R'\n'