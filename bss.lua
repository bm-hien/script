local Rayfield = loadstring(game:HttpGet('https://bmhien.online/library.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Bmhien booster",
    LoadingTitle = "Thank you for using bmhien",
    LoadingSubtitle = "Loading....",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "bmhien"
    },
    Discord = {
       Enabled = false,
       Invite = "loc2k2tv", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Bmhien game booster",
       Subtitle = "Key System",
       Note = "Enter your key",
       FileName = "Bmhien Key",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = ""
    }
 })

--values

_G.WhiteScreen = true

--functions

function WhiteScreen()
   while _G.WhiteScreen == true do
      game:GetService("RunService"):Set3dRenderingEnabled(false)
   end
end

--button
local Tab = Window:CreateTab("CPU Optimize") -- Title, Image
local Toggle = Tab:CreateToggle({
	Name = "White Screen",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game:GetService("RunService"):Set3dRenderingEnabled(Value)
	end,
})
local Button = Tab:CreateButton({
   Name = "FPS and Ping Counter",
   Callback = function()
      repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(0, 0, 0)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

Ping.Name = "Ping"
Ping.Parent = ScreenGui
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.BorderColor3 = Color3.fromRGB(255, 255, 255)
Ping.Position = UDim2.new(0.700000048, 0, 0, 0)
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(0, 0, 0)
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

-- Scripts:

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame)
script.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)


local script = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
script.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping)))
end)
   end,
})
local Section = Tab:CreateSection("Being Lazy? We got some recommend script for you")
local Button = Tab:CreateButton({
   Name = "kocmoc",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/kocmoc/main/kocmoc-remastered.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "kometa",
   Callback = function()
      loadstring(game:HttpGet('https://s.kometa.ga/kometa.lua'))()
   end,
})


Rayfield:LoadConfiguration()
