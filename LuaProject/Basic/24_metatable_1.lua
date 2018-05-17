-- setmetatable(table,metatable): 对指定table设置元表(metatable)，如果元表(metatable)中存在__metatable键值，setmetatable会失败 。

mytable = {}                          -- 普通表 
mymetatable = {}                      -- 元表
setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表 
-- 以上代码也可以直接写成一行：
-- mytable = setmetatable({},{})

-- getmetatable(table): 返回对象的元表(metatable)。
getmetatable(mytable)                 -- 这回返回mymetatable

print("-----------------------------__index-----------------------------------")
--以下必须命令行？
metb = { foo = "value2" }
testTb = {}
setmetatable(testTb, { __index = metb })
print("testTb:", testTb.foo)           --value2
testTb.foo = "new"
print("testTb", testTb.foo, metb.foo)  --new value2

-- 如果__index包含一个函数的话，Lua就会调用那个函数，table和键会作为参数传递给函数。
-- __index 元方法查看表中元素是否存在，如果不存在，返回结果为 nil；如果存在则由 __index 返回结果。
mytable = setmetatable({key1 = "value1"}, {
  __index = function(mytable, key)
    if key == "key2" then
      return "value2"
    else
      return nil
    end
  end
})
print(mytable.key1,mytable.key2)        -->value1	value2

print("-----------------------------__newindex-----------------------------------")
-- __newindex 元方法
-- __newindex 元方法用来对表更新，__index则用来对表访问 。
-- 当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。
-- 以下实例演示了 __newindex 元方法的应用：
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })
print(mytable.key1)

--对新的索引键（key2）进行赋值时，会调用元方法，而不进行赋值
mytable.key2 = "new val 2"
print(mytable.key2,mymetatable.key2)
--更改老的索引键（key1）时，不会调用元方法，而直接赋值
mytable.key1 = "new val 1"
print(mytable.key1,mymetatable.key1)

-- 以下实例使用了 rawset 函数来更新表：
mytable = setmetatable({key1 = "value1"}, {
  __newindex = function(mytable, key, value)
		rawset(mytable, key, value)

  end
})
mytable.key1 = "new value"
mytable.key2 = 4
print(mytable.key1,mytable.key2)