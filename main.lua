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
      loadstring(game:HttpGet("https://script.bmh.ovh/ping.lua"))()
   end,
})

Rayfield:LoadConfiguration()