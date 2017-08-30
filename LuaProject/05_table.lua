-- 创建一个空的 table
local tbl1 = {}
 
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}

-- print("Lua 中的表（table）其实是一个'关联数组'（associative arrays），数组的索引可以是数字或者是字符串。")

a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

-- print("不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。")
local tb3 = { test01 = "apple", test02 = "pear", [4] = "orange", "grape", "banana"}
for key, val in pairs(tb3) do
    print("Key2", key)   -->1,2,"test02","test01"
end


print ("tb3:",tb3[1])   --grape
print ("tb3:",tb3["1"])  --nil
print ("tb3:", #tb3)    -->2
-- print(table.getn(tb3)) 报错
print(tb3.test01)       -->apple


-- print("table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。")
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])    --> val
print(a3["none"])   --> nil

-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作。
site = {}
site["key"] = "www.w3cschool.cc"
print(site["key"])
-->www.w3cschool.cc
print(site.key)
--》www.w3cschool.cc
