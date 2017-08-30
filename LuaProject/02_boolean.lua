print("给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉")
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
 
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

print("boolean 类型只有两个可选值：true（真） 和 false（假），Lua 把 false 和 nil 看作是'假'，其他的都为'真':")
print(type(true))
print(type(false))
print(type(nil))
 
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false!")
end
