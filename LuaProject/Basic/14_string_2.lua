-- 字符串或串(String)是由数字、字母、下划线组成的一串字符。
-- Lua 语言中字符串可以使用以下三种方式来表示：
-- 单引号间的一串字符。
-- 双引号间的一串字符。
-- [[和]]间的一串字符。
-- 以上三种方式的字符串实例如下：
string1 = "Lua"
print("\"string 1 is\"",string1)
string2 = 'runoob.com'
print("string 2 is",string2)

string3 = [["Lua class"]]  --> "Lua Class"
print("string 3 is",string3)

print("------------------------------------")
local string01 = "AbXS12kD"

print("upper:" ,string.upper( string01 ))
print("lower:" ,string.lower( string01 ))
-- 函数截取字符串s的从第i个字符到第j个字符之间的串.Lua中,字符串的第一个字符索引从1开始.你也可以使用负索引,负索引从字符串的结尾向前计数：-1指向最后一个字符,-2指向倒数第二个,以此类推.
print(string.sub("hello lua user", 2, -2))                  -->reverse esrever
-- 在字符串中替换,mainString为要替换的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换）
print("gsub:" , string.gsub("sssss", "s" ,"a", 3))          -->aaass   3
-- 在一个指定的目标字符串中搜索指定的内容(第三个参数为索引),返回其具体位置。不存在则返回 nil。
print("find:" , string.find("hellow lua user", "lua", 1))
print("reverse:", string.reverse("lua"))
print("format:", string.format("the value is %d", 3))
-- char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。
print("char:", string.char(97, 98, 99, 100))
print("byte:", string.byte("ABCD", 4))
print("byte:", string.byte("ABCD"))
print("len:", string.len("abc"))
--返回字符串string的n个拷贝
print("rep:", string.rep("abc", 3))
print("reverse", string.reverse("reverse"))