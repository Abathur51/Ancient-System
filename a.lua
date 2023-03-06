local key = readfile("PopCatKey.lua")

function script()

local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()
    game.StarterGui:SetCore("SendNotification",{
        Title = "popCat | lyoo <3#4516";
        Text = "Thanks for using my script!";
    })


local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Agent1Anonymous/popballs/main/popCat<3"))()
local UI = GUI:CreateWindow("popCat","Made by lyoo <3#4516")
local Home = UI:addPage("Home",1,true,6)
Home:addLabel("pop","pop")

local LP = UI:addPage("Game",2,false,6)
LP:addButton("Finish Main Obby",function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Checkpoints["381"].Part, 0) --0 is touch
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Checkpoints["381"].Part, 1) -- 1 is untouch
end)
LP:addButton("Finish Monthly Obby",function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsMonthly["31"].PrimaryP, 0) --0 is touch
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsMonthly["31"].PrimaryP, 1) -- 1 is untouch
end)
LP:addButton("Finish Pro Obby",function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsPro["31"].PrimaryP, 0) --0 is touch
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsPro["31"].PrimaryP, 1) -- 1 is untouch
end)

local LP = UI:addPage("Autofarm",2,false,6)
LP:addButton("Press here for Rebirth Information",function()
    game.StarterGui:SetCore("SendNotification", {
    Title = "popCat";
    Text = "The Pro/Monthly Obby has a 4 Min Rebirth cooldown.";
    Duration = math.huge;
    Button1 = "."
    })
    

    game.StarterGui:SetCore("SendNotification", {
    Title = "popCat";
    Text = "The Master+ has a 30 Min Rebirth cooldown.";
    Duration = math.huge;
    Button1 = "."
    })

    game.StarterGui:SetCore("SendNotification", {
    Title = "popCat";
    Text = "No matter where you make a rebirth, the time of each rebirth button is reset.";
    Duration = math.huge;
    Button1 = "."
    })
end)

LP:addToggle("Farm Main Obby",function(test)
        getgenv().test = test
                while getgenv().test do
                wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Checkpoints["381"].Part, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Checkpoints["381"].Part, 1) -- 1 is untouch
                wait(1)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").TheEndRebirth.Touch.TouchPart, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").TheEndRebirth.Touch.TouchPart, 1) -- 1 is untouch
                wait(1)
                    local ohBoolean1 = true
                    game:GetService("ReplicatedStorage").Events.RebirthDo:FireServer(ohBoolean1)
        end
end)

LP:addToggle("Farm Monthly Obby",function(test)
        getgenv().test = test
                while getgenv().test do
                wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsMonthly["31"].PrimaryP, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsMonthly["31"].PrimaryP, 1) -- 1 is untouch
                wait(1)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").MonthlyRebirth.Touch.TouchPart, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").MonthlyRebirth.Touch.TouchPart, 1) -- 1 is untouch
                wait(1)
                    local ohBoolean1 = true
                    game:GetService("ReplicatedStorage").Events.RebirthDo:FireServer(ohBoolean1)
        end
end)

LP:addToggle("Farm Pro Obby",function(test)
        getgenv().test = test
                while getgenv().test do
                wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsPro["31"].PrimaryP, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CheckpointsPro["31"].PrimaryP, 1) -- 1 is untouch
                wait(1)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").ProRebirth.Touch.TouchPart, 0) --0 is touch
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").ProRebirth.Touch.TouchPart, 1) -- 1 is untouch
                wait(1)
                    local ohBoolean1 = true
                    game:GetService("ReplicatedStorage").Events.RebirthDo:FireServer(ohBoolean1)
        end
end)












local LP = UI:addPage("Misc",2,false,6)
LP:addLabel("Toggle","Press RightShift")
LP:addButton("Infinite Yield",function()
    execute = loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
LP:addButton("Alt-Delete",function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)
end)
LP:addButton("Destroy popCat",function()
    game:GetService("CoreGui").popCat:Destroy()
end)






local thegui = game:GetService("CoreGui")["popCat"]
local toggle = false function onKeyPress(actionName, userInputState, inputObject)
if userInputState == Enum.UserInputState.Begin then
if toggle == false then
toggle = true
thegui.Enabled = true
else
toggle = false
thegui.Enabled = false
end
end
end game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.RightShift)

end
if key == getgenv().key then
script()
else
    


    local GUI = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Agent1Anonymous/popballs/main/popCat<3"))()
local UI = GUI:CreateWindow("Key Check","Made by TestAccount#1287")
local Home = UI:addPage("Main",2,true,6)

        Home:addButton("Copy Discord Invite",function()
            setclipboard("discord.gg/bPp3KBvJsq")
        end)
Home:addTextBox("Copy & Paste Key from Discord","key",function(value)
    if value == getgenv().key then
writefile("PopCatKey.lua",getgenv().key)
script()
end
end)
end