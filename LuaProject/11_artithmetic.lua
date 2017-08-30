a = 21
b = 10
c = a + b
print("Line 1 - c value ", c )
c = a - b
print("Line 2 - c value", c )
c = a * b
print("Line 3 - c value ", c )
c = a / b
print("Line 4 - c value ", c )
c = a % b
print("Line 5 - c value ", c )
c = a^2     --乘幂
print("Line 6 - c value ", c )
c = -a
print("Line 7 - c value ", c )

-- 除了^和..外所有的二元运算符都是左连接的。
-- a+i < b/2+1          <-->       (a+i) < ((b/2)+1)
-- 5+x^2*8              <-->       5+((x^2)*8)
-- a < y and y <= z     <-->       (a < y) and (y <= z)
-- -x^2                 <-->       -(x^2)
-- x^y^z                <-->       x^(y^z)