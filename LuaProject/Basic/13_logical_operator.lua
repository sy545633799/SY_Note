-- and	逻辑与操作符。 若 A 为 false，则返回 A，否则返回 B。	(A and B) 为 false。
-- or	逻辑或操作符。 若 A 为 true，则返回 A，否则返回 B。	(A or B) 为 true。
-- not	逻辑非操作符。与逻辑运算结果相反，如果条件 true，逻辑非为 false。	not(A and B) 为 true。
a = true
b = true

if ( a and b )
then
   print("a and b - condition true" )
end

if ( a or b )
then
   print("a or b - condition true" )
end

print("------------------" )

-- 修改 a 和 b 的值
a = false
b = true

if ( a and b )
then
   print("a and b - condition true" )
else
   print("a and b - condition false" )
end

if ( not( a and b) )
then
   print("not( a and b) - condition true" )
else
   print("not( a and b) - condition false" )
end

print("------------------------------")

c = false
d = 10

print(c or d)    --> 10

print(not(c or d))  --false

print( not (10)) --false

if d then
    print("if d:", d)
end