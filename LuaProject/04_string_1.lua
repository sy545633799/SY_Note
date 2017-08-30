-- print("字符串由一对双引号或单引号来表示。")
string1 = "this is string1"
string2 = 'this is string2'

--打印长度
print(#string1)

-- 也可以用 2 个方括号 "[[]]" 来表示"一块"字符串。
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

-- print("字符串由..连接")
print(123 .. 123)
print(123 .. "abc")
print(123 .. 'abc')


print("123" + 1)    --> 124.0
print("10 + 1")     --> 10 + 1
-- print("hello" + 1)  --> 报错

print(tonumber("1"))
print(tostring(123))