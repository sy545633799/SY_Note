--赋值是改变一个变量的值和改变表域的最基本的方法。

a = "hello" .. "world"
-- t.n = t.n + 1

-- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值：
-- x, y = y, x                     -- swap 'x' for 'y'
-- a[i], a[j] = a[j], a[i]         -- swap 'a[i]' for 'a[j]'

-- 当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
-- a. 变量个数 > 值的个数             按变量个数补足nil
-- b. 变量个数 < 值的个数             多余的值会被忽略
-- 例如：
a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil
 
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2
 
a, b, c = 0
print(a,b,c)             --> 0   nil   nil

-- 多值赋值经常用来交换变量，或将函数调用返回给变量：
function  f()
    return 10,12
end

a, b = f()
print(a, b)
-- f()返回两个值，第一个赋给a，第二个赋给b。
-- 应该尽可能的使用局部变量，有两个好处：
-- 1. 避免命名冲突。
-- 2. 访问局部变量的速度比全局变量更快。