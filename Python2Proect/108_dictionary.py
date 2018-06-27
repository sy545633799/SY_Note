# -*- coding: UTF-8 -*-

# 不允许同一个键出现两次。创建时如果同一个键被赋值两次，后一个值会被记住：
dic = {'Name': 'Zara', 'Age': 7, 'Class': 'First', 'Name' : 'Peter'}
print "dict['Name']: ", dic['Name']


# Python字典包含了以下内置函数：

# 序号	函数及描述
# 1	cmp(dict1, dict2)
# 比较两个字典元素。
# 2	len(dict)
print "length:", len(dic)
# 计算字典元素个数，即键的总数。
# 3	str(dict)
# 输出字典可打印的字符串表示。
print "str:", str(dic)
# 4	type(variable)
# 返回输入的变量类型，如果变量是字典就返回字典类型。
print "type:", type(dic)
# Python字典包含了以下内置方法：

# 序号	函数及描述
# 1	dict.clear()
# 删除字典内所有元素
# 2	dict.copy()
# 返回一个字典的浅复制
print "copy:", dic.copy()

# 3	dict.fromkeys(seq[, val])
# 创建一个新字典，以序列 seq 中元素做字典的键，val 为字典所有键对应的初始值
print dict.fromkeys(("one","two","third"), 10)  #{'two': 10, 'third': 10, 'one': 10}
# 4	dict.get(key, default=None)
# 返回指定键的值，如果值不在字典中返回default值
print dic.get("test", "none")
# 5	dict.has_key(key)
# 如果键在字典dict里返回true，否则返回false
print dic.has_key(123)
# 6	dict.items()
# 以列表返回可遍历的(键, 值) 元组数组
print dic.items() #[('Age', 7), ('Name', 'Peter'), ('Class', 'First')]
# 7	dict.keys()
# 以列表返回一个字典所有的键
print dic.keys()
# 10	dict.values()
# 以列表返回字典中的所有值
print dic.values()
# 8	dict.setdefault(key, default=None)
# 和get()类似, 但如果键不存在于字典中，将会添加键并将值设为default
print dic.setdefault("test", "defval")
# 9	dict.update(dict2)
# 把字典dict2的键/值对更新到dict里
dic.update({ "Name" : "Alex"})
print dic
# 11	pop(key[,default])
# 删除字典给定键 key 所对应的值，返回值为被删除的值。key值必须给出。 否则，返回default值。
print dic.pop("test")
print dic
# 12	popitem()
# 随机返回并删除字典中的一对键和值。