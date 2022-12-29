local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
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
       Invite = "YHfbb3M3Kq", -- The Discord invite code, do not include discord.gg/
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
       Key = "Thanksbmhobfuscator"
    }
 })
local Tab = Window:CreateTab("CPU Optimize") -- Title, Image
local Button = Tab:CreateButton({
	Name = "White Screen",
	Callback = function()
		game:GetService("RunService"):Set3dRenderingEnabled(false)
	end,
})
local Button = Tab:CreateButton({
	Name = "Disable White Screen",
	Callback = function()
		game:GetService("RunService"):Set3dRenderingEnabled(true)
	end,
})
Rayfield:LoadConfiguration()
