local mt = getrawmetatable(game)
local old_index = mt.__index
setreadonly(mt, false)

mt.__index = newcclosure(function(t, k)
    if t == game and k == "HttpGet" then
        return function(self, url, ...)
            if string.find(url, "your-sensitive-domain.com") then
                return "Access Denied"
            end
            print("HTTP GET request to: " .. url)
            return old_index(t, k)(self, url, ...)
        end
    end
    return old_index(t, k)
end)

setreadonly(mt, true)
