# -*- coding: UTF-8 -*-
tup0 = (11,) #只有一个元素时，需要在元素后面添加逗号
tup1 = (12, 34.56)
tup2 = ('abc', 'xyz')
# 以下修改元组元素操作是非法的。
# tup1[0] = 100

# (1, 2, 3) + (4, 5, 6)	(1, 2, 3, 4, 5, 6)	连接
tup3 = tup1 + tup2
print "tup1 + tup2:",tup3
# len((1, 2, 3))	3	计算元素个数
print "length of tup3:", len(tup3)
# ('Hi!',) * 4	('Hi!', 'Hi!', 'Hi!', 'Hi!')	复制
# 3 in (1, 2, 3)	True	元素是否存在
print 12 in tup3
# for x in (1, 2, 3): print x,	1 2 3	迭代
for x in tup3:
    print(x)

# L[2]	'SPAM!'	读取第三个元素
# L[-2]	'Spam'	反向读取，读取倒数第二个元素
# L[1:]	('Spam', 'SPAM!')	截取元素

# 1	cmp(tuple1, tuple2)
# 比较两个元组元素。
print cmp(tup1, tup2)
# 2	len(tuple)
# 计算元组元素个数。
# 3	max(tuple)
# 返回元组中元素最大值。
# 4	min(tuple)
# 返回元组中元素最小值。
# 5	tuple(seq)
# 将列表转换为元组。
print(tuple({1,2,3,4}))