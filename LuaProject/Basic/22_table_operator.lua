-- 1	table.concat (table [, sep [, start [, end]]]):
-- concat是concatenate(连锁, 连接)的缩写. table.concat()函数列出参数中指定table的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开。
fruits = {"banana","orange","apple","strawberry"}
-- 返回 table 连接后的字符串
print("1_after concat ",table.concat(fruits))            -->bananaorangeapplestrawberry
-- 指定连接字符
print("1_after concat ",table.concat(fruits,"&"))        -->banana&orange&apple&strawberry
--制定索引（从2开始）
print("1_after concat ",table.concat(fruits,", ", 2))   -->banana, orange, apple,strawberry
-- 指定索引来连接 （连接第2，3 个元素）
print("1_after concat ",table.concat(fruits,", ", 2,3))  -->orange, apple

test = {}
test[1] = "00"
test.test01 = "01"
test.test02 = "02"
print("concat:", table.concat(test))                    --> 00

-- 2	table.insert (table, [pos,] value):
-- 在table的数组部分指定位置(pos)插入值为value的一个元素. pos参数可选, 默认为数组部分末尾.
fruits = {"banana","orange","apple"}
-- 在末尾插入
table.insert(fruits,"mango")
print("2_index of 4 is ",fruits[4])
-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")
print("2_index of 2 is ",fruits[2])
print("2_last element ",fruits[5])

-- 3	table.remove (table [, pos])
-- 返回table数组部分位于pos位置的元素. 其后的元素会被前移. pos参数可选, 默认为table长度, 即从最后一个元素删起。
table.remove(fruits)
print("3_remove last element ",table.concat(fruits,","))       --> banana,grapes,orange,apple 默认删除最后一个

-- 4	table.maxn (table)
-- 指定table中所有正数key值中最大的key值. 如果不存在key值为正数的元素, 则返回0。(Lua5.2之后该方法已经不存在了,本文使用了自定义函数实现)
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end
tbl = {[1] = "a", [2] = "b", [3] = "c", [26] = "z"}
print("4_tbl length ", #tbl)
print("4_tbl maxvalue ", table_maxn(tbl))


-- 5	table.sort (table [, comp])
-- 对给定的table进行升序排序。
fruits = {"banana","orange","apple","grapes"}
print("5_before sort")
for k,v in ipairs(fruits) do
	print(k,v)
end

table.sort(fruits)
print("5_after sort")
for k,v in ipairs(fruits) do
	print(k,v)
end
