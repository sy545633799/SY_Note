--获取一个class的父类
function Super(TmpClass) 
return getmetatable(TmpClass).__index 
end 

--是否是子類
function IsSub(clsSub, clsAncestor) 
local Temp = clsSub 
while 1 do 
    local mt = getmetatable(Temp) 
    if mt then 
    Temp = mt.__index 
    if Temp == clsAncestor then 
        return true 
    end  
    else 
    return false 
    end  
end  
end 