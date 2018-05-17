-- pairs可以遍历表中所有的key，并且除了迭代器本身以及遍历表本身还可以返回nil;
-- 但是ipairs则不能返回nil,只能返回数字0，如果遇到nil则退出。它只能遍历到表中出现的第一个不是整数的key
local tab= { 
[1] = "a", 
[3] = "b", 
[4] = "c" 
} 
for i,v in pairs(tab) do        -- 输出 "a" ,"b", "c"  ,
    print("iterator01:", tab[i] ) 
end 

for i,v in ipairs(tab) do    -- 输出 "a" ,k=2时断开 
    print( "iterator02:", tab[i] ) 
end

--无状态的迭代器
-- 无状态的迭代器是指不保留任何状态的迭代器，因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价。
-- 每一次迭代，迭代函数都是用两个变量（状态常量和控制变量）的值作为参数被调用，一个无状态的迭代器只利用这两个值可以获取下一个元素。
-- 这种无状态迭代器的典型的简单的例子是ipairs，他遍历数组的每一个元素。
-- 以下实例我们使用了一个简单的函数来实现迭代器，实现 数字 n 的平方：
function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end

for i,n in square,3,0
do
   print(i,n)
end

-- --可以这样实现ipairs
-- function iter (a, i)
--     i = i + 1
--     local v = a[i]
--     if v then
--        return i, v
--     end
-- end
        
-- function ipairs1 (a)
--     return iter, a, 0       -->即返回一个迭代器
-- end

-- 当Lua调用ipairs(a)开始循环时，他获取三个值：迭代函数iter、状态常量a、控制变量初始值0；然后Lua调用iter(a,0)返回1,a[1]（除非a[1]=nil）；第二次迭代调用iter(a,1)返回2,a[2]……直到第一个nil元素。

-- 多状态的迭代器
-- 很多情况下，迭代器需要保存多个状态信息而不是简单的状态常量和控制变量，最简单的方法是使用闭包，还有一种方法就是将所有的状态信息封装到table内，将table作为迭代器的状态常量，因为这种情况下可以将所有的信息存放在table内，所以迭代函数通常不需要第二个参数。
-- 以下实例我们创建了自己的迭代器：

array = {"hello", "lua", [3] = "java", [5] = "c++", test1 = "test", test2 = "test"}

--ipairs
local function ipairs_next_func(tab, key)  
    local x = 1 
    local key = key + 1  
    local value = tab[key]  
    if value then  
        return key, value  
    end  
end  
local function ipairs_func(tab)  
    return ipairs_next_func, tab, 0  
end  

--pairs
local function pairs_next_func(tab, key)  
    local key = next(tab, key) 
    local value = tab[key]  
    if value then  
        return key, value  
    end  
end  
local function pairs_func(tab, key)  
    return pairs_next_func, tab, nil  
end  

local function for_func(iter_func, array)  
    local next, tab, key = iter_func(array)  
    while true do  
        local k, v = next(tab, key)  
        if not k then break end   
        key = k  
        print(k, v)  
    end  
end  

print("ipairs_func:")  
for_func(ipairs_func, array)  

print("pairs_func:")  
for_func(pairs_func, array)


print("----------------------------------------------")
print(next(array, 3))