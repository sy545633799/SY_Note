# -*- coding: UTF-8 -*-

list1 = ["Apple", "Amazon", "MS", "Sun", "Oracle","Google","Runoob"]          ## 空列表

del list1[-1]
print "delete", list1
print "sub", list1[1:]
print 1, list1[1]
print -1, list1[-1]

# cmp(list1, list2)
# 比较两个列表的元素
# 2	len(list)
len(list1)
# 3	max(list)
# 返回列表元素最大值
max(list1)   #Sun
# 4	min(list)
# 返回列表元素最小值
min(list1)   #Apple
# 5	list(seq)
# 将元组转换为列表
seq = (1, 4, 43, 435,6,34)
list(seq)
# Python包含以下方法:

# 1	list.append(obj)
# 在列表末尾添加新的对象
list1.append('Taobao')
# 2	list.count(obj)
# 统计某个元素在列表中出现的次数
list1.count("Apple")    #1
# 3	list.extend(seq)
# 在列表末尾一次性追加另一个序列中的多个值（用新列表扩展原来的列表）
list1.extend([1,2,3])
# 4	list.index(obj)
# 从列表中找出某个值第一个匹配项的索引位置
list1.index("Sun")
# 5	list.insert(index, obj)
# 将对象插入列表
list1.insert(len(list1), "test")
# 6	list.pop([index=-1])
# 移除列表中的一个元素（默认最后一个元素），并且返回该元素的值
list1.pop(-1)
# 7	list.remove(obj)
# 移除列表中某个值的第一个匹配项
list1.remove("Sun")
# 8	list.reverse()
# 反向列表中元素
list1.reverse()
# 9	list.sort(cmp=None, key=None, reverse=False(默认升序))
# 对原列表进行排序
list1.sort()
list1.sort(reverse=True)

# 获取列表的第二个元素
def takeSecond(elem):
    return elem[1]          #拿第二个数字进行比较

# 列表
random = [(2, 2), (3, 4), (4, 1), (1, 3)]
# 指定第二个元素排序
random.sort(key=takeSecond)
# 输出类别
print random
