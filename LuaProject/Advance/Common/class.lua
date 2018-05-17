clsObject = { 
__ClassType = "class type",
__ClassName = "base class"
} 
                                                        
function clsObject:Inherit(o)   
    o = o or {} 
    o.__ClassType = "class type"

    function o : New( ... )
        local obj = {}
        setmetatable(obj, { __index = o })
        if obj.__init__ then 
            obj:__init__(...) 
        end  
        return obj 
    end

    setmetatable(o, {__index = self}) 
    return o 
end 

function clsObject:Destroy() 
    if self.__destroy__ then
        self: __destroy__()
    end
end 

function clsObject:GetType() 
    return "BaseClass" 
end


