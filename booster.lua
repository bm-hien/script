local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "Bmhien booster",
    LoadingTitle = "Thank you for using bmhien",
    LoadingSubtitle = "Loading....",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Premium Bstory Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "YHfbb3M3Kq", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
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

Rayfield:Notify({
    Title = "Hi Buyer , Good Luck ",
    Content = "Wellcome To Premium Gui",
    Duration = 6.5,
    Image = 11958238777,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "welcome",
          Callback = function()
            print("Script load successfully!")
         end
      },

Rayfield:LoadConfiguration()
