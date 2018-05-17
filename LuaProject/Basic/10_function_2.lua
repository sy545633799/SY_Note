--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result; 
end
-- 调用函数
print("bigger:",max(10,4))
print("bigger:",max(5,6))

-- Lua 中我们可以将函数作为参数传递给函数，如下实例
myprint = function(param)
   print("printfunc:-##",param,"##")
end

function add(num1,num2,functionPrint)
   result = num1 + num2
   -- 调用传递的函数参数
   functionPrint(result)
end
myprint(10)
-- myprint 函数作为参数传递
add(2,5,myprint)

-- Lua函数可以返回多个结果值，比如string.find，其返回匹配串"开始和结束的下标"（如果不存在匹配串返回nil）。

function maximum (a)
    local mIndex = 1             -- 最大值索引
    local m = a[mIndex]          -- 最大值
    -- 相当于 mIndex = 1, mIndex =8
    for i,val in ipairs(a) do
       if val > m then
           mIndex = i
           m = val
       end
    end
    return m, mIndex
end

print(maximum({8,10,23,12,5}))

-- Lua函数可以接受可变数目的参数，和C语言类似在函数参数列表中使用三点（...) 表示函数有可变的参数。
-- Lua将函数的参数放在一个叫arg的表中，#arg 表示传入参数的个数。
function average(...)
   result = 0
   local arg={...}      --这样也行..
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("totale " .. #arg .. " numbers")
   return result/#arg
end

print("average:",average(10,5,3,4,5,6))

-- unpack的使用
print(string.find(unpack({"hello", "ll"})))  --> 3 4



-- 获取延长参数的数量select
function foo2( ... )

    print(select("#", ...))

    for i=1,select("#", ...) do
        -- print(select(i, ...))
        local argc = select(i, ...) --每次赋值的时候多给了很多参数，后面的参数被自动舍弃了
        if argc then
            print("argc:" .. argc)
        end
    end
end
foo2(2, 23, nil, 43, 3)

--具名实参rename

