-- 要注意的是Lua中 0 为 true：

i = 10

while(i > 0)
do
    i = i - 1
    print(i)
end