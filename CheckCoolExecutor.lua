
local a, b = pcall(function()
    local old = getrawmetatable(game)
    local v1 = old.__namecall
    setreadonly(old, false)
    old.__namecall = newcclosure(function(v2, ...)
        local met = getnamecallmethod()
        local table = {...}
        if met == 'FireServer' or met == 'InvokeServer' then
            print("Name: " .. v2.Name)
            print("Arg2: " .. table[1])
        end
        return v1(v2, unpack(table))
    end)
    local oldNamecall
    oldNamecall = hookfunction(game.__namecall, function(self, ...)
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            print("Name Method: ", method)
            print("Obj:", self)
        end
        return oldNamecall(self, ...)
    end)
end)
if a then
    while true do
        print("Bro Executor so cool!!")
    end
else
    game.Players.LocalPlayer:kick("LoL Executor so trash")
end
