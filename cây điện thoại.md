**Misc**
```local normal = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DuongTGMXSADCAT/Library/main/scr%20(2).txt')))()```

**Create Window**
```_G.Color = Color3.fromRGB(0, 0, 255) -- Color UI
_G.Logo = 17196546025 -- ID Logo Your Hub
local Win = library:Evil("Evo","Tư Bản",_G.Logo )```

**Create Tab**
```local Tab = Win:CraftTab('Main') -- Name
local Page = Tab:CraftPage('Main',1) -- Name,1 or 2 
```

**Button**
```Page:Button('Button',function() --Name
    print("t")
end)```

**Toggle**
```Page:Toggle('Test',nil,function(a) -- Toggle,Def,callback
    print(a)
end)```

**Dropdown**
```Page:Dropdown("Dropdown",{"1","2"},{""},function(v)
    print(v)
end)

Page:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)```

**Label**
```local A = Page:Label('Label') --name
local B = Page:LabelLog('Label') --name

A.Refresh("A") -- name
B:Refresh("B") -- name
B:Color(Color3.fromRGB(255, 255, 255))  -- Color
```

**Slider**
```Page:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)```

**TextBox**
```Page:Textbox("Test","",function(v)
    print(v)
end)```
