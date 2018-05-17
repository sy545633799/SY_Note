require('./Common/global')




-- list = List: New()

-- list: Add(12343)
-- list: Add(4343)

-- list : Destroy()

-- print(list)

-- local dic = Dictionary:New('string', 'string')
-- dic:Add('BeiJing', '010')
-- dic:Add('ShangHai', '021')

-- while true do
--     local it = dic:Iter()
--     if it ~= nil then
--         local key = it()
--         local value = dic[key]
--         print('key: ' .. tostring(key) .. ' value: ' .. tostring(value))
--     else
--         break
--     end
-- end

-- local dic = Dictionary:New('string', 'string')
-- dic:Add('BeiJing', '010')
-- dic:Add('ShangHai', '021')
 
-- while true do
--     local it = dic:Iter()
--     if it ~= nil then
--         local key = it()
--         local value = dic[key]
--         print('key: ' .. tostring(key) .. ' value: ' .. tostring(value))
--     else
--         break
--     end
-- end

-- dic = Dictionary : New("string", "string")
-- dic : Add("yi", "reearere")
-- dic : Add("er", "rerijere")
-- dic : Clear()


-- for i,v in ipairs(dic.keyList) do
--     print(v)
-- end

-- print(#dic.keyList)


for i in pairs(_G) do
    print(i)
end

