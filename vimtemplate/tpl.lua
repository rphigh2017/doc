#!./lua

local PATH = "."
package.path = package.path..":"..PATH
package.cpath = package.cpath..":"..PATH

-- local <+++> = {
--     name = <+++>,
-- }
-- function <+++>:new(l)
--     l = l or {}
--     setmetatable(l, self)
--     self.__index = self
--     return l
-- end
-- function <+++>:del()
--     <+++>
-- end

function __main__()
    print(_VERSION)
end

__main__()
