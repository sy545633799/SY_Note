array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print("array1:",array[i])
end

--> nil Lua Tutorial

array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print("array2:", array[i])
end

-- 多维数组
-- 初始化数组
array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- 访问数组
for i=1,3 do
   for j=1,3 do
      print("array:", array[i][j])
   end
end

-- 不同索引键的三行三列阵列多维数组：
-- 初始化数组
array = {}
maxRows = 3
maxColumns = 3
for row=1,maxRows do
   for col=1,maxColumns do
      array[row*maxColumns +col] = row*col
   end
end

-- 访问数组
for row=1,maxRows do
   for col=1,maxColumns do
      print(array[row*maxColumns +col])
   end
end