return function(a)
  local a = type(a) == "string" and a or tostring(a)
 -- game:GetService("TeleportService"):TeleportToPlaceInstance("7915d33a-d697-4ead-b40f-79618eb00edf", game:GetService("Players").LocalPlayer)
  a = a:gsub('game:GetService%("TeleportService"%):TeleportToPlaceInstance%("(.-)"%, game:GetService%("Players"%)%.LocalPlayer%)', "%1")
  game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", a)
end
