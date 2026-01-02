-- Broshub Rayfield GUI

local Rayfield = local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "Broshub",
   LoadingTitle = "Broshub",
   LoadingSubtitle = "Rayfield Edition",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Broshub",
      FileName = "Config"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Main", 4483362458)
local PlayerTab = Window:CreateTab("Player", 4483362458)
local FunTab = Window:CreateTab("Fun", 4483362458)

MainTab:CreateSection("Main")

MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end
})

PlayerTab:CreateSection("Player Mods")

PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 150},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(v)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
   end
})

PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 200},
   Increment = 5,
   CurrentValue = 50,
   Callback = function(v)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
   end
})

FunTab:CreateSection("Fun")

FunTab:CreateButton({
   Name = "Big Head",
   Callback = function()
      local char = game.Players.LocalPlayer.Character
      if char and char:FindFirstChild("Head") then
         char.Head.Size = Vector3.new(6,6,6)
         char.Head.CanCollide = false
      end
   end
})

Rayfield:Notify({
   Title = "Broshub Loaded",
   Content = "Welcome 😎",
   Duration = 4
})
