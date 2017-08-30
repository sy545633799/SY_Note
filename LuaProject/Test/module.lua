-- 文件名为 module.lua
-- 定义一个名为 module 的模块
module = {}
 
-- 定义一个常量
module.constant = "this is a val"
 
-- 定义一个函数
function module.func1()
    io.write("this is a function")
end
 
local function func2()
    print("this is a private function")
end
 
function module.func3()
    func2()
end
 
return module