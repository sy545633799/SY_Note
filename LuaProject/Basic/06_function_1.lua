-- print("在 Lua 中，函数是被看作是'第一类值（First-Class Value）'，函数可以存在变量里:")

function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))        --120
factorial2 = factorial1
print(factorial2(5))        --120

-- print("function 可以以匿名函数（anonymous function）的方式通过参数传递:")
function testFun(tab,fun)
	for k ,v in pairs(tab) do
		print(fun(k,v));
	end
end

tab={key1="val1",key2="val2"};
testFun(tab,
function(key,val)--匿名函数
	return key.."="..val;
end
);

print("--------------diferent between . and :---------------------")
tb = { key = "val" }

function  tb : func1(val)
    print("func1:", val)
end
function  tb.func2()
    print("func2")
end
tb : func1(123)        --> func1  123
tb.func1(123)          --> func1  nil
tb.func1(self, 123)    -- >func1  123
tb : func2()       --> func2
tb.func2()         --> func2

