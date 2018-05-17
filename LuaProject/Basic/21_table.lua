-- 初始化表
mytable = {}
-- 指定值
mytable[1]= "Lua"
-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存
-- 简单的 table

mytable = {}
print("mytable type is ",type(mytable))

mytable[1]= "Lua"
mytable["wow"] = "before modification"
print("mytable index of 1 is", mytable[1])
print("mytable index of wow is", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable index of 1 is ", alternatetable[1])
print("mytable index of wow is ", alternatetable["wow"])

alternatetable["wow"] = "after modification"

print("mytable index of wow is ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable is ", alternatetable)

-- mytable 仍然可以访问
print("mytable index of wow is ", mytable["wow"])

mytable = nil
print("mytable is ", mytable)
