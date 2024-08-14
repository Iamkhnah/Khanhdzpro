# HoHo Hub V1 UI
This documentation is for HoHo Hub V1 UI Credit To acsu123

## Booting the HoHo Hub V1 UI Library
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/hoho_lib.lua", true))()
```




## Creating a HoHo Hub V1 UI Window
```lua
local win = lib:Window("HoHo|Hub","Game",Color3.new(0.333333, 0.666667, 1))
```

## Creating a Tab
```lua
local tab = win:Tab("Main")
```

## Creating a Label (For The Label Function)
```lua
local label = tab:Label("Label", properties) --properties: {["Visible"] = flase}
```

## Creating a label
```lua
label:NewLabel("Autofarm section ", properties)
```

## Creating a Line
```lua
tab:Line()
```

## Creating a Button
```lua
tab:Button("Button", function()
end)
```
