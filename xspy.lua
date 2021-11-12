

function ExecuteMainModule()
    rconsolename("Rifthook Console")
    rconsoleprint("@@WHITE@@")
    rconsoleprint("\n")
    local xSpyNotif = Instance.new("ScreenGui")
    local Sample = Instance.new("TextLabel")
    xSpyNotif.Name = "xSpyNotif"
    xSpyNotif.Parent = game.CoreGui
    xSpyNotif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Sample.Name = "Sample"
    Sample.Parent = xSpyNotif
    Sample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Sample.BackgroundTransparency = 1.000
    Sample.BorderSizePixel = 0
    Sample.Position = UDim2.new(1, -205, 0, 0)
    Sample.Size = UDim2.new(0, 200, 0, 14)
    Sample.Font = Enum.Font.RobotoMono
    Sample.Text = "JustificationWatch"
    Sample.TextColor3 = Color3.fromRGB(255, 84, 87)
    Sample.TextSize = 14.000
    Sample.TextStrokeTransparency = 0.000
    Sample.TextTransparency = 1
    Sample.TextWrapped = true
    Sample.TextXAlignment = Enum.TextXAlignment.Right
    
    function printConsole(txt,clr,act)
        rconsoleprint("[")
        rconsoleprint(clr)
        rconsoleprint(act)
        rconsoleprint("@@WHITE@@")
        rconsoleprint("] ")
        rconsoleprint(txt.."\n")
    end


    local CurrentPos = 0
    function addSetting(txt,col)
        thisNot = game.CoreGui.xSpyNotif.Sample:Clone()
        thisNot.Name = txt
        thisNot.Parent = game.CoreGui.xSpyNotif
        thisNot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        thisNot.BackgroundTransparency = 1.000
        thisNot.BorderSizePixel = 0
        thisNot.Position = UDim2.new(1, -205, 0, CurrentPos)
        thisNot.Size = UDim2.new(0, 200, 0, 14)
        thisNot.Font = Enum.Font.GothamBlack
        thisNot.Text = txt
        thisNot.TextColor3 = col
        thisNot.TextSize = 14.000
        thisNot.TextStrokeTransparency = 0.000
        thisNot.TextTransparency = 0
        thisNot.TextWrapped = true
        thisNot.TextXAlignment = Enum.TextXAlignment.Right
        CurrentPos = CurrentPos + 14
    end
    function removeSetting(txt)
        if xSpyNotif:FindFirstChild(txt) then
            xSpyNotif[txt]:Remove()
            CurrentPos = CurrentPos - 14
            for i,v in pairs(game.CoreGui.xSpyNotif:GetChildren()) do
                if v.Position.Y.Offset>=CurrentPos then
                    v.Position = UDim2.new(1, -205, 0, v.Position.Y.Offset - CurrentPos)
                end
            end
        end
    end
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "[Rifthook] Authorized", 
        Font = Enum.Font.SourceSansBold, 
        Color = BrickColor.new("Toothpaste").Color, 
        FontSize = Enum.FontSize.Size28
    });
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "[Rifthook] Loaded MaterialUI Lib", 
        Font = Enum.Font.SourceSansBold, 
        Color = BrickColor.new("Toothpaste").Color, 
        FontSize = Enum.FontSize.Size28
    });
    local HttpService = game:GetService("HttpService")
    local ads = {
                "dude what script is that? dude what script is that? dude what script is that? dude what script is that?",
                "hyperant asleep at the wheel 😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴",
                "slavesareoknigg.ga << get Rífthook | slavesareoknigg.ga << get Rífthook | slavesareoknigg.ga << get Rífthook | slavesareoknigg.ga << get Rífthook | slavesareoknigg.ga << get Rífthook",
                "Rífthook - Premium Cheat for Risxe of Nations and World Conquest | doscard.gg/jj4v6hH | Rífthook - Premium Cheat for Risxe of Nations and World Conquest | doscard.gg/jj4v6hH",
                "Rífthook is the #1 cheat for Rixse of Nations! Rífthook is the #1 cheat for Rixse of Nations! Rífthook is the #1 cheat for Rixse of Nations! Rífthook is the #1 cheat for Rixse of Nations! ",
                }
    local settings = {
        Theme = "Dark",
        Style = 1
    }
    local defConfig = {
        ESP = false,
        ESPColorR = 255,
        ESPColorG = 255,
        ESPColorB = 255,
        JWatch = false,
        RWatch = false,
        MineThr = 1,
        Charms = false,
        CharmsTr = 0,
        CharmsColorR = 255,
        CharmsColorG = 0,
        CharmsColorB = 0,
        Aimbot = false
    }
    print(settings["Theme"])
    if isfile("x.Spy/xspysettings.json") then
        settings = HttpService:JSONDecode(readfile("x.Spy/xspysettings.json"))  
    else
        writefile("x.Spy/xspysettings.json","{}")
    end
    if settings["Theme"] == true then
        themeGet = "Light"
    else
        themeGet = "Dark"   
    end
    function newESPInstance(a1,a2,a3,a4,a5,a6)

        -- Gui to Lua
-- Version: 3.2

-- Instances:

local XSPYWINNING = Instance.new("BillboardGui")
local Type = Instance.new("TextLabel")
local Health = Instance.new("TextLabel")
local Ent = Instance.new("TextLabel")
local Train = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")

--Properties:

XSPYWINNING.Name = "XSPYWINNING"
XSPYWINNING.Parent = a1
XSPYWINNING.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
XSPYWINNING.Active = true
XSPYWINNING.AlwaysOnTop = true
XSPYWINNING.LightInfluence = 1.000
XSPYWINNING.MaxDistance = 30.000
XSPYWINNING.Size = UDim2.new(0, 100, 0, 75)

Type.Name = "Type"
Type.Parent = XSPYWINNING
Type.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Type.BackgroundTransparency = 1.000
Type.BorderSizePixel = 0
Type.Size = UDim2.new(0.400000006, 0, 0, 20)
Type.Font = Enum.Font.RobotoMono
Type.Text = "Infantry"
Type.TextColor3 = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"])
Type.TextScaled = true
Type.TextSize = 14.000
Type.TextTransparency = 1.000
Type.TextWrapped = true
Type.TextXAlignment = Enum.TextXAlignment.Left

Health.Name = "Health"
Health.Parent = XSPYWINNING
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.BackgroundTransparency = 1.000
Health.BorderSizePixel = 0
Health.Position = UDim2.new(0, 0, 0, 10)
Health.Size = UDim2.new(1, 0, 0, 20)
Health.Font = Enum.Font.GothamBold
Health.Text = "[ "..a2.." ]"
Health.TextColor3 = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"])
Health.TextScaled = true
Health.TextSize = 14.000
Health.TextStrokeTransparency = 0.000
Health.TextWrapped = true

Ent.Name = "Ent"
Ent.Parent = XSPYWINNING
Ent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ent.BackgroundTransparency = 1.000
Ent.BorderSizePixel = 0
Ent.Position = UDim2.new(0, 0, 0, 30)
Ent.Size = UDim2.new(0.5, 0, 0, 20)
Ent.Font = Enum.Font.GothamBold
Ent.Text = "["..a4.."]"
Ent.TextColor3 = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"])
Ent.TextSize = 10.000
Ent.TextStrokeTransparency = 0.000
Ent.TextWrapped = true

Train.Name = "Train"
Train.Parent = XSPYWINNING
Train.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Train.BackgroundTransparency = 1.000
Train.BorderSizePixel = 0
Train.Position = UDim2.new(0.5, 0, 0, 30)
Train.Size = UDim2.new(0.5, 0, 0, 20)
Train.Font = Enum.Font.GothamBold
Train.Text = "["..a5.."%]"
Train.TextColor3 = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"])
Train.TextSize = 10.000
Train.TextStrokeTransparency = 0.000
Train.TextWrapped = true

Frame.Parent = XSPYWINNING
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.0500000007, 0, 0, 3)
Frame.Size = UDim2.new(0, 90, 0, 4)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"])
Frame_2.Size = UDim2.new(0, a6, 1, 0)
    end
    workspace.Units.ChildAdded:connect(function(v)
        if defConfig["ESP"] then
            wait(0.5)
            newESPInstance(v,v.Type.Value,math.floor(v.Current.Value),math.floor(v.Current.Entrenchment.Value),math.floor(v.Current.Training.Value),90)
        end
    end)
    local UI = Material.Load({
        Title = "Rifthook 2.1 (Rise of Nations)",
        Style = settings["Style"],
        SizeX = 600,
        SizeY = 400,
        Theme = themeGet
    })

    local Page1 = UI.New({
        Title = "Legit"
    })
    local Page2 = UI.New({
        Title = "Rage"
    })
    local Page5 = UI.New({
        Title = "Visuals"
    })
    local Page3 = UI.New({
        Title = "Settings"
    })
    local Page4 = UI.New({
        Title = "Skin Changer"
    })
    --Legit
    
    Page1.Button({
        Text = "Country Lookup",
        Callback = function()
            local xSpy2Country = Instance.new("ScreenGui")
            local Country = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local Search = Instance.new("TextBox")
            local SearchFor = Instance.new("TextButton")
            local Flag = Instance.new("ImageLabel")
            local AT = Instance.new("TextLabel")
            local EX = Instance.new("TextLabel")
            local IN = Instance.new("TextLabel")
            local MA = Instance.new("TextLabel")
            local MC = Instance.new("TextLabel")
            local MI = Instance.new("TextLabel")
            local MP = Instance.new("TextLabel")
            local Name = Instance.new("TextLabel")
            local PP = Instance.new("TextLabel")
            local PR = Instance.new("TextLabel")
            local RA = Instance.new("TextLabel")
            local RP = Instance.new("TextLabel")
            local Stability = Instance.new("TextLabel")
            local TextLabel_2 = Instance.new("TextLabel")
            local WE = Instance.new("TextLabel")
            local Close = Instance.new("TextButton")
            xSpy2Country.Name = "xSpy2Country"
            xSpy2Country.Parent = game.CoreGui
            xSpy2Country.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            Country.Name = "Country"
            Country.Parent = xSpy2Country
            Country.Active = true
            Country.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
            Country.BorderSizePixel = 0
            Country.Position = UDim2.new(0.173999995, 0, 0, 100)
            Country.Size = UDim2.new(0, 425, 0, 331)
            
            TextLabel.Parent = Country
            TextLabel.BackgroundColor3 = Color3.new(0.0627451, 0.643137, 1)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(0, 425, 0, 8)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.Text = ""
            TextLabel.TextColor3 = Color3.new(0.0627451, 0.643137, 1)
            TextLabel.TextSize = 14
            
            Search.Name = "Search"
            Search.Parent = Country
            Search.BackgroundColor3 = Color3.new(0.0627451, 0.643137, 1)
            Search.BorderSizePixel = 0
            Search.Position = UDim2.new(0.0194174759, 0, 0.0923566893, 0)
            Search.Size = UDim2.new(0, 200, 0, 27)
            Search.ClearTextOnFocus = false
            Search.Font = Enum.Font.Gotham
            Search.PlaceholderText = "please cApItAlIZe countries, shortened names are allowed"
            Search.Text = ""
            Search.TextColor3 = Color3.new(1, 1, 1)
            Search.TextScaled = true
            Search.TextSize = 14
            Search.TextWrapped = true
            
            SearchFor.Name = "SearchFor"
            SearchFor.Parent = Country
            SearchFor.BackgroundColor3 = Color3.new(0.0627451, 0.643137, 1)
            SearchFor.BorderSizePixel = 0
            SearchFor.Position = UDim2.new(0.524271846, 0, 0.0923566893, 0)
            SearchFor.Size = UDim2.new(0, 93, 0, 27)
            SearchFor.Font = Enum.Font.Gotham
            SearchFor.Text = "Search"
            SearchFor.TextColor3 = Color3.new(1, 1, 1)
            SearchFor.TextSize = 14
            
            Flag.Name = "Flag"
            Flag.Parent = Country
            Flag.BackgroundColor3 = Color3.new(0, 0, 0)
            Flag.BorderColor3 = Color3.new(0, 0, 0)
            Flag.BorderSizePixel = 5
            Flag.Position = UDim2.new(0.0364077687, 0, 0.22292994, 0)
            Flag.Size = UDim2.new(0, 147, 0, 80)
            
            AT.Name = "AT"
            AT.Parent = Country
            AT.BackgroundColor3 = Color3.new(1, 1, 1)
            AT.BackgroundTransparency = 1
            AT.BorderSizePixel = 0
            AT.Position = UDim2.new(0.0194174759, 0, 0.729299366, 0)
            AT.Size = UDim2.new(0, 314, 0, 11)
            AT.Font = Enum.Font.Gotham
            AT.Text = "Amount in Treasury:"
            AT.TextColor3 = Color3.new(1, 1, 1)
            AT.TextScaled = true
            AT.TextSize = 14
            AT.TextWrapped = true
            AT.TextXAlignment = Enum.TextXAlignment.Left
            
            EX.Name = "EX"
            EX.Parent = Country
            EX.BackgroundColor3 = Color3.new(1, 1, 1)
            EX.BackgroundTransparency = 1
            EX.BorderSizePixel = 0
            EX.Position = UDim2.new(0.0194174759, 0, 0.598726094, 0)
            EX.Size = UDim2.new(0, 154, 0, 11)
            EX.Font = Enum.Font.Gotham
            EX.Text = "Expenses:"
            EX.TextColor3 = Color3.new(1, 1, 1)
            EX.TextScaled = true
            EX.TextSize = 14
            EX.TextWrapped = true
            EX.TextXAlignment = Enum.TextXAlignment.Left
            
            IN.Name = "IN"
            IN.Parent = Country
            IN.BackgroundColor3 = Color3.new(1, 1, 1)
            IN.BackgroundTransparency = 1
            IN.BorderSizePixel = 0
            IN.Position = UDim2.new(0.0194174759, 0, 0.563694239, 0)
            IN.Size = UDim2.new(0, 154, 0, 11)
            IN.Font = Enum.Font.Gotham
            IN.Text = "Income:"
            IN.TextColor3 = Color3.new(1, 1, 1)
            IN.TextScaled = true
            IN.TextSize = 14
            IN.TextWrapped = true
            IN.TextXAlignment = Enum.TextXAlignment.Left
            
            MA.Name = "MA"
            MA.Parent = Country
            MA.BackgroundColor3 = Color3.new(1, 1, 1)
            MA.BackgroundTransparency = 1
            MA.BorderSizePixel = 0
            MA.Position = UDim2.new(0.424757272, 0, 0.312101901, 0)
            MA.Size = UDim2.new(0, 222, 0, 11)
            MA.Font = Enum.Font.Gotham
            MA.Text = "Manpower Available:"
            MA.TextColor3 = Color3.new(1, 1, 1)
            MA.TextScaled = true
            MA.TextSize = 14
            MA.TextWrapped = true
            MA.TextXAlignment = Enum.TextXAlignment.Left
            
            MC.Name = "MC"
            MC.Parent = Country
            MC.BackgroundColor3 = Color3.new(1, 1, 1)
            MC.BackgroundTransparency = 1
            MC.BorderSizePixel = 0
            MC.Position = UDim2.new(0.424757272, 0, 0.382165611, 0)
            MC.Size = UDim2.new(0, 222, 0, 11)
            MC.Font = Enum.Font.Gotham
            MC.Text = "Manpower Capacity:"
            MC.TextColor3 = Color3.new(1, 1, 1)
            MC.TextScaled = true
            MC.TextSize = 14
            MC.TextWrapped = true
            MC.TextXAlignment = Enum.TextXAlignment.Left
            
            MI.Name = "MI"
            MI.Parent = Country
            MI.BackgroundColor3 = Color3.new(1, 1, 1)
            MI.BackgroundTransparency = 1
            MI.BorderSizePixel = 0
            MI.Position = UDim2.new(0.424757272, 0, 0.347133756, 0)
            MI.Size = UDim2.new(0, 222, 0, 11)
            MI.Font = Enum.Font.Gotham
            MI.Text = "Manpower Increase:"
            MI.TextColor3 = Color3.new(1, 1, 1)
            MI.TextScaled = true
            MI.TextSize = 14
            MI.TextWrapped = true
            MI.TextXAlignment = Enum.TextXAlignment.Left
            
            MP.Name = "MP"
            MP.Parent = Country
            MP.BackgroundColor3 = Color3.new(1, 1, 1)
            MP.BackgroundTransparency = 1
            MP.BorderSizePixel = 0
            MP.Position = UDim2.new(0.424757272, 0, 0.528662443, 0)
            MP.Size = UDim2.new(0, 150, 0, 11)
            MP.Font = Enum.Font.Gotham
            MP.Text = "Military Power: "
            MP.TextColor3 = Color3.new(1, 1, 1)
            MP.TextScaled = true
            MP.TextSize = 14
            MP.TextWrapped = true
            MP.TextXAlignment = Enum.TextXAlignment.Left
            
            Name.Name = "Name"
            Name.Parent = Country
            Name.BackgroundColor3 = Color3.new(1, 1, 1)
            Name.BackgroundTransparency = 1
            Name.BorderSizePixel = 0
            Name.Position = UDim2.new(0.424757272, 0, 0.22292994, 0)
            Name.Size = UDim2.new(0, 112, 0, 17)
            Name.Font = Enum.Font.GothamBold
            Name.Text = "Name"
            Name.TextColor3 = Color3.new(1, 1, 1)
            Name.TextScaled = true
            Name.TextSize = 14
            Name.TextWrapped = true
            Name.TextXAlignment = Enum.TextXAlignment.Left
            
            PP.Name = "PP"
            PP.Parent = Country
            PP.BackgroundColor3 = Color3.new(1, 1, 1)
            PP.BackgroundTransparency = 1
            PP.BorderSizePixel = 0
            PP.Position = UDim2.new(0.424757272, 0, 0.598726094, 0)
            PP.Size = UDim2.new(0, 150, 0, 11)
            PP.Font = Enum.Font.Gotham
            PP.Text = "Political Points"
            PP.TextColor3 = Color3.new(1, 1, 1)
            PP.TextScaled = true
            PP.TextSize = 14
            PP.TextWrapped = true
            PP.TextXAlignment = Enum.TextXAlignment.Left
            
            PR.Name = "PR"
            PR.Parent = Country
            PR.BackgroundColor3 = Color3.new(1, 1, 1)
            PR.BackgroundTransparency = 1
            PR.BorderSizePixel = 0
            PR.Position = UDim2.new(0.0194174759, 0, 0.633757949, 0)
            PR.Size = UDim2.new(0, 154, 0, 11)
            PR.Font = Enum.Font.Gotham
            PR.Text = "Profit:"
            PR.TextColor3 = Color3.new(1, 1, 1)
            PR.TextScaled = true
            PR.TextSize = 14
            PR.TextWrapped = true
            PR.TextXAlignment = Enum.TextXAlignment.Left
            
            RA.Name = "RA"
            RA.Parent = Country
            RA.BackgroundColor3 = Color3.new(1, 1, 1)
            RA.BackgroundTransparency = 1
            RA.BorderSizePixel = 0
            RA.Position = UDim2.new(0.0194174647, 0, 0.528662443, 0)
            RA.Size = UDim2.new(0, 112, 0, 11)
            RA.Font = Enum.Font.Gotham
            RA.Text = "Ranking"
            RA.TextColor3 = Color3.new(1, 1, 1)
            RA.TextScaled = true
            RA.TextSize = 14
            RA.TextWrapped = true
            RA.TextXAlignment = Enum.TextXAlignment.Left
            
            RP.Name = "RP"
            RP.Parent = Country
            RP.BackgroundColor3 = Color3.new(1, 1, 1)
            RP.BackgroundTransparency = 1
            RP.BorderSizePixel = 0
            RP.Position = UDim2.new(0.424757272, 0, 0.563694239, 0)
            RP.Size = UDim2.new(0, 150, 0, 11)
            RP.Font = Enum.Font.Gotham
            RP.Text = "Research Points"
            RP.TextColor3 = Color3.new(1, 1, 1)
            RP.TextScaled = true
            RP.TextSize = 14
            RP.TextWrapped = true
            RP.TextXAlignment = Enum.TextXAlignment.Left
            
            Stability.Name = "Stability"
            Stability.Parent = Country
            Stability.BackgroundColor3 = Color3.new(1, 1, 1)
            Stability.BackgroundTransparency = 1
            Stability.BorderSizePixel = 0
            Stability.Position = UDim2.new(0.424757272, 0, 0.277070075, 0)
            Stability.Size = UDim2.new(0, 236, 0, 11)
            Stability.Font = Enum.Font.Gotham
            Stability.Text = "Stability: "
            Stability.TextColor3 = Color3.new(1, 1, 1)
            Stability.TextScaled = true
            Stability.TextSize = 14
            Stability.TextWrapped = true
            Stability.TextXAlignment = Enum.TextXAlignment.Left
            
            TextLabel_2.Parent = Country
            TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel_2.BackgroundTransparency = 1
            TextLabel_2.BorderSizePixel = 0
            TextLabel_2.Position = UDim2.new(0.0194174759, 0, 0.0221294276, 0)
            TextLabel_2.Size = UDim2.new(0, 397, 0, 17)
            TextLabel_2.Font = Enum.Font.GothamSemibold
            TextLabel_2.Text = "Gives you statistics of the country you input, including stability."
            TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
            TextLabel_2.TextScaled = true
            TextLabel_2.TextSize = 14
            TextLabel_2.TextWrapped = true
            TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            
            WE.Name = "WE"
            WE.Parent = Country
            WE.BackgroundColor3 = Color3.new(1, 1, 1)
            WE.BackgroundTransparency = 1
            WE.BorderSizePixel = 0
            WE.Position = UDim2.new(0.424757272, 0, 0.633757949, 0)
            WE.Size = UDim2.new(0, 150, 0, 11)
            WE.Font = Enum.Font.Gotham
            WE.Text = "War Exhaustion:"
            WE.TextColor3 = Color3.new(1, 1, 1)
            WE.TextScaled = true
            WE.TextSize = 14
            WE.TextWrapped = true
            WE.TextXAlignment = Enum.TextXAlignment.Left
            
            Close.Name = "Close"
            Close.Parent = Country
            Close.BackgroundColor3 = Color3.new(0.0627451, 0.643137, 1)
            Close.BorderSizePixel = 0
            Close.Position = UDim2.new(0.0183894616, 0, 0.926193535, 0)
            Close.Size = UDim2.new(0, 119, 0, 17)
            Close.Font = Enum.Font.Gotham
            Close.Text = "Close"
            Close.TextColor3 = Color3.new(1, 1, 1)
            Close.TextSize = 14
            
            -- Scripts:
            
            local function GHPEGKB_fake_script() -- Country.LocalScript 
                local script = Instance.new("LocalScript", Country)
            
                script.Parent.Draggable = true
            end
            coroutine.wrap(GHPEGKB_fake_script)()
            local function YGFESE_fake_script() -- Close.LocalScript 
                local script = Instance.new("LocalScript", Close)
            
                script.Parent.MouseButton1Click:Connect(function()
                    script.Parent.Parent.Parent:Destroy()
                end)
            end
            coroutine.wrap(YGFESE_fake_script)()
            
            country = workspace.Countries
    countryData = workspace.CountryData
    function getCountryFromPartial(a1)
        for i,v in pairs(countryData:GetChildren()) do
            a = string.match(v.Name,a1)
            if a then
                return v.Name;
            end
        end
    end
    function getPlayerFromCountry(a1)
        return country[countryData[a1].Leader.Value]
    end
    SearchFor.MouseButton1Click:connect(function()
        thisCountry = getCountryFromPartial(Search.Text)
        print(thisCountry)
        Stability.Text  = "Stability: "..countryData[thisCountry].Data.Stability.Value.."%"
        Name.Text = thisCountry
        MA.Text = "Manpower Available: "..countryData[thisCountry].Manpower.Value.X
        MI.Text = "Manpower Increase: "..countryData[thisCountry].Manpower.Value.Y
        MC.Text = "Manpower Capacity: "..countryData[thisCountry].Manpower.Value.Z
        RA.Text = "Ranking: #"..countryData[thisCountry].Ranking.Value
        if countryData[thisCountry].Ranking.Value>3 then
            Flag.BorderColor3 = Color3.new(229/255, 233/255, 235/255)
        end
        if countryData[thisCountry].Ranking.Value<4 then
            Flag.BorderColor3 = Color3.new(235/255, 182/255, 4/255)
        end
        if countryData[thisCountry].Ranking.Value>19 then
            Flag.BorderColor3 = Color3.new(39/255, 39/255, 39/255)
        end
        Flag.Image = game.ReplicatedStorage.Assets.Flag[thisCountry].Texture
        income = require(workspace.FunctionDump.ValueCalc.CountryRevenue)
        expend = require(workspace.FunctionDump.ValueCalc.CountryExpenses)
        IN.Text = "Income: $"..income(thisCountry)
        EX.Text = "Expenses: $"..expend(thisCountry)
        PR.Text = "Profit: $"..income(thisCountry)-expend(thisCountry)
        MP.Text = "Military Power: "..countryData[thisCountry].Power.Military.Value
        PP.Text = "Political Power: "..countryData[thisCountry].Power.Political.Value
        RP.Text = "Research Points: "..countryData[thisCountry].Power.Research.Value
        WE.Text = "War Exhaustion: "..countryData[thisCountry].Power.WarExhaustion.Value
        AT.Text = "Amount in Treasury: $"..countryData[thisCountry].Economy.Balance.Value
    end)

        end
    })
    JWatchButton = Page1.Toggle({
        Text = "JustificationWatch",
        Callback = function(value)
            defConfig["JWatch"] = value
            if value == true then
                addSetting("JustificationWatch",Color3.new(255/255, 125/255, 188/255))
            else
                removeSetting("JustificationWatch")
            end
        end,
        Enabled = defConfig["JWatch"]
    })
    RWatchButton = Page1.Toggle({
        Text = "RebelWatch",
        Callback = function(value)
            if value == true then
                addSetting("RebelWatch",Color3.new(255/255, 123/255, 143/255))
            else
                removeSetting("RebelWatch")
            end
            defConfig["RWatch"] = value
        end,
        Enabled = defConfig["RWatch"]
    })
    Page1.Toggle({
        Text = "BattleWatch",
        Callback = function(value)
            if value == true then
                addSetting("BattleWatch",Color3.new(20/255, 255/255, 143/255))
            else
                removeSetting("BattleWatch")
            end
            defConfig["BWatch"] = value
        end,
        Enabled = false
    })
    function addToClientNews(txt,col)
        local l__MainFrame__4 = game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame
        local v712 = l__MainFrame__4.TopBar.Date.Sample:Clone();
        v712.Text = txt;
        v712.Visible = true;
        v712.TextColor3 = col;
        v712.Parent = l__MainFrame__4.TopBar.Ticker;
        v712.Size = UDim2.new(0, v712.TextBounds.X + 75, 1, 0);
        local v713 = l__MainFrame__4.TopBar.Ticker.AbsoluteSize.X;
        wait(1);
        local v714 = l__MainFrame__4.TopBar.Ticker:GetChildren();
        if #v714 - 1 > 0 then
            v713 = math.clamp(v714[#v714 - 1].Position.X.Offset + v714[#v714 - 1].Size.X.Offset, l__MainFrame__4.TopBar.Ticker.AbsoluteSize.X, math.huge);
        end;
        v712.Position = UDim2.new(0, v713, 0, 0);
        local v715 = game:GetService("TweenService"):Create(v712, TweenInfo.new((v712.Position.X.Offset + v712.Size.X.Offset) / 100, Enum.EasingStyle.Linear), {
            Position = UDim2.new(0, -v712.Size.X.Offset, 0, 0)
        });
        v715:Play();
        v715.Completed:Connect(function()
            v712:Destroy();
        end);
    end 

    for i,v in pairs(workspace.Countries:GetChildren()) do
        for i2,v2 in pairs(v.CB:GetChildren()) do
            v2.ChildAdded:connect(function(item)
                if defConfig["JWatch"] == true then
                    printConsole(v.Country.Value.." has justified on "..item.Name.." ("..v2.Name..")","@@YELLOW@@","JUSTIFICATION")
                end
            end)
        end
        v.DiploActions.ChildAdded:connect(function(itema)
            if itema.Value.Z == 365 then 
                if defConfig["RWatch"] == true then
                    printConsole(v.Country.Value.." has started funding "..itema.Name.."s rebels!","@@YELLOW@@","JUSTIFICATION")
                end
            else 
                if defConfig["JWatch"] == true then  
                    printConsole(v.Country.Value.." is justifying on "..itema.Name,"@@YELLOW@@","JUSTIFICATION")
                end
            end
        end)
    end
    function GetLocalCities() 
        local b = {}
        for i,v in pairs(workspace.Baseplate.Cities[game.Workspace.Countries[game.Players.LocalPlayer.Name].Country.Value]:GetChildren()) do
            if not v:FindFirstChild("Occupied Tag") then table.insert(b, v) end
        end
        return b
    end
    function ThisCountry()
        return workspace.Countries[game.Players.LocalPlayer.Name].Country.Value
    end
    function AICheck(countryName)
        local AI_name = countryName .. "AI"
        if workspace.Countries:FindFirstChild(AI_name) then return true else return false end
    end
    function WarCheck(countryName)
        local wars = workspace.Wars:GetChildren()
    local country = workspace.Countries[game.Players.LocalPlayer.Name].Country.Value
    local EN = {}
    for i,v in pairs(wars) do 
        if v.Attacker:FindFirstChild(country) then
            for a,e in pairs(v.Defender:GetChildren()) do
                table.insert(EN, e.Name)
            end
        end
        if v.Defender:FindFirstChild(country) then
            for a,e in pairs(v.Attacker:GetChildren()) do
                table.insert(EN, e.Name)
            end
        end
        for i,v in pairs(EN) do
            if v == countryName then return true end
        end
        return false
    end
    
    for i,v in pairs(EN) do
        if v == countryName then return true end
    end
    return false
    end
    -- Resource Functions
    function getlocalFlow(resource)
        return workspace.CountryData[ThisCountry()].Resources[resource].Flow.Value
    end
    function CheckSell(country1, country2, resource) 
        if workspace.CountryData[country1].Resources[resource].Trade:FindFirstChild(country2) then return true else return false end
    end
    function GetBal(countryName)
        return require(workspace.FunctionDump.ValueCalc.CountryRevenue)(countryName) - require(workspace.FunctionDump.ValueCalc.CountryExpenses)(countryName)
    end
    function getSellPrice(resource)
        return game.ReplicatedStorage.Assets.Resources[resource].Value
    end
    function CheckDebt(countryName) 
        if workspace.CountryData[countryName].Economy.Balance.Value <= 100000 then
            return true
        else 
            return false
        end
    end
    function SellAll(resource)
        local Board = {} 
    
        for i,v in pairs(workspace.CountryData:GetChildren()) do
            local name = v.Name
            local b = GetBal(name)
            local isSelling = CheckSell(ThisCountry(), name, resource)
            local isA = AICheck(name)
            if isA and not isSelling and b>0 and not CheckDebt(name) and not WarCheck(name) then 
                local sellAmount = b/getSellPrice(resource)
                table.insert(Board, {name, sellAmount})
            end
        end
    
        table.sort(Board,
            function(a,b)
                return a[2] > b[2]
            end
            )
    
        for i,v in pairs(Board) do 
            print(v[1] .. " | " .. tostring(v[2]))
        end
    
        table.sort(Board,
            function(a,b)
                return a[2] < b[2]
            end
            )
            local flow = getlocalFlow(resource)
            for i,v in pairs(Board) do 
                wait(0.5)
                if flow > 0 then
                    local A = v[1] -- Name
                    local B = v[2] -- Amount
                    if getlocalFlow(resource) < B then
                        workspace.GameManager.ManageAlliance:FireServer(A, "ResourceTrade", {resource, "Sell", getlocalFlow(resource)})
                        flow = 0
                    else 
                        workspace.GameManager.ManageAlliance:FireServer(A, "ResourceTrade", {resource, "Sell", B})
                        --rconsoleprint("Trying to sell " .. tostring(B))
                        flow = flow - B
                    end
                    
                    
                end
            end
    end
    local SelectedResource = "Tungsten"
    Page1.Dropdown({
        Text = "Select Resource",
        Callback = function(value)
            SelectedResource = value
        end,
        Options = {"Aircraft Parts","Aluminum","Chromium","Consumer Goods","Electronics","Copper","Diamond","Gold","Iron","Oil","Phosphate","Titanium","Tungsten","Uranium","Motor Parts","Uranium","Steel"}
    })
    Page1.Button({
        Text = "Build Mines on Resource Cities",
        Callback = function()
            a = GetLocalCities()
            for i,v in pairs(a) do 
                if v.Resources:FindFirstChild(SelectedResource).Value > 0 then 
                    wait(0.7)
                    workspace.GameManager.CreateBuilding:FireServer({v}, "Mines")
                   -- rconsoleprint("Queued mines in " .. v.Name)
                end
            end
        end
    })
    Page1.Button({
        Text = "Mass Sell Selected Resource",
        Callback = function()
            SellAll(SelectedResource)
        end
    })
    Page1.Button({
        Text = "CancelAITrades",
        Callback = function()
            for i,v in pairs(workspace.CountryData:GetChildren()) do
                if AICheck() == true then
                    if v.Resource["SelectedResource"].Trade:FindFirstChild(ThisCountry()) then
                        local args = {
                            [1] = v.Name,
                            [2] = "TradeCancel",
                            [3] = SelectedResource
                        }

                        workspace.GameManager.ManageAlliance:FireServer(unpack(args))
                    end
                end
            end
        end
    })
    --Rage
    Page2.Button({
        Text = "RequestBot: Send Puppet Request to all countries",
        Callback = function()
            addSetting("RequestBot [Puppet]",Color3.fromRGB(255, 248, 143))
            for i,v in pairs(workspace.CountryData:GetChildren()) do
                if not string.match(v.Leader.Value, "AI") and not string.match(v.Name, game.Players.LocalPlayer.Name) then
                    wait(0.7)
                    workspace.GameManager.ManageAlliance:FireServer(v.Name,"SendRequest","PuppetRequest")
                    printConsole("Sending puppet request to "..v.Name,"@@LIGHT_MAGENTA@@","REQUESTBOT")
                end
                for i,v in pairs(game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame:GetChildren()) do
                    if v.Name == "AlertSample" then
                        v:Destroy()
                    end
                end
            end	   
            removeSetting("RequestBot [Puppet]") 
        end
    })
    Page2.Button({
        Text = "RequestBot: Send Alliance Request to all countries",
        Callback = function()
            addSetting("RequestBot [Alliance]",Color3.fromRGB(255, 248, 143))
            for i,v in pairs(workspace.CountryData:GetChildren()) do
                if not string.match(v.Leader.Value, "AI") and not string.match(v.Name, game.Players.LocalPlayer.Name) then
                    wait(0.7)
                    workspace.GameManager.ManageAlliance:FireServer(v.Name,"SendRequest")
                    printConsole("Sending alliance request to "..v.Name,"@@LIGHT_MAGENTA@@","REQUESTBOT")
                end
                for i,v in pairs(game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame:GetChildren()) do
                    if v.Name == "AlertSample" then
                        v:Destroy()
                    end
                end
            end	 
            removeSetting("RequestBot [Alliance]")    
        end
    })
    Page2.Toggle({
        Text = "Advertise Rifthook",
        Callback = function(value)
            
                if value == true then
                    addSetting("Advertise",Color3.new(135/255, 131/255, 255/255))
                    _G.Addinga = true
                else
                    _G.Addinga = false
                    removeSetting("Advertise")
                end
        end
    })
    Page2.Button({
        Text = "Clear all alerts",
        Callback = function()
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame:GetChildren()) do
                if v.Name == "AlertSample" then
                    v:Destroy()
                end
            end
        end
    })
    defConfig["BSay"] = false
    Page2.Toggle({
        Text = "BattleSay",
        Callback = function(value)
                if value == true then
                    addSetting("BattleSay",Color3.fromRGB(194, 224, 61))
                else
                    removeSetting("BattleSay")
                end
                defConfig["BSay"] = value
        end
    })
    local CityQueue = false   
    workspace.BattleManager.CaptureBar.OnClientEvent:Connect(function(p)
    
        if CityQueue == false and defConfig["BSay"] or defConfig["BWatch"] then
            CityQueue = true
            local BCityName = p.Parent.Name
            for i,v in pairs(workspace.Baseplate.Cities:GetChildren()) do
                for i2,v2 in pairs(v:GetChildren()) do
                    if v2.Name == BCityName then
                        if defConfig["BWatch"] == true then
                            printConsole(BCityName..", "..v.Name.." is being taken!","@@BLUE@@","BATTLEWATCH")
                        end
                        wait(1)
                        if defConfig["BSay"] then
                            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Rífthook] "..BCityName..", "..v.Name.." is being taken!","All")
                        end
                    end

                end
            end
            CityQueue = false
        end
    end);
    --Settings
    local themetog = Page3.Toggle({
        Text = "Light Mode",
        Callback = function(value)
            print(value)
            if value == true then
            settings["Theme"] = true
            else
                settings["Theme"] = false
            end
        end,
        Enabled = settings["Theme"]
    })
    Page3.Dropdown({
        Text = "Select Style",
        Callback = function(value)
            settings["Style"] = value
        end,
        Options = {1,2,3}
    })
    Page3.Button({
        Text = "Save Settings",
        Callback = function()
            writefile("x.Spy/xspysettings.json",HttpService:JSONEncode(settings))
            UI.Banner({
                Text = "Your settings have been saved at at exploit-folder/workspace/x.Spy/xspysettings.json"
            })   
        end
    })
    --Skin Changer
    local SelectedSkin = "Default"
    Page4.Dropdown({
        Text = "Select Skin",
        Callback = function(value)
            SelectedSkin = value
        end,
        Options = {"Default","Germany WWII","United States WWII"}
    })
    Page4.Button({
        Text = "Apply Changes",
        Callback = function()
            workspace.Countries[game.Players.LocalPlayer.Name].Skin.Value = SelectedSkin
            UI.Banner({
                Text = "Applied skin (note that this is just clientside only)"
            })   
        end
    })
    local RW = Instance.new("ScreenGui")
    local TextLabel = Instance.new("TextLabel")
    RW.Name = "RW"
    RW.Parent = game.CoreGui
    RW.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    TextLabel.Parent = RW
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.5, -100, 1, -13)
    TextLabel.Size = UDim2.new(0, 200, 0, 13)
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.RichText = true
    TextLabel.Text = "<b>Rifthook 2.1</b>"
    TextLabel.TextColor3 = Color3.fromRGB(141, 2, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    Page5.Toggle({
        Text = "Watermark",
        Callback = function(value)
            game.CoreGui.RW.Enabled = value
        end,
        Enabled = true
    })
    Page5.Toggle({
        Text = "Set City Color to Unrest",
        Callback = function(value)
            _G.UnrestCity = value
            if value == true then
                addSetting("UnrestCity",Color3.fromRGB(186, 255, 1535))
            else
                removeSetting("UnrestCity")
            end
        end
    })
    Page5.Slider({
        Text = "Brightness",
        Callback = function(value)
            game.Lighting.OutdoorAmbient = Color3.fromRGB(value,value,value)
            game.Lighting.Ambient = Color3.fromRGB(value,value,value)
        end,
        Min = 1,
        Max = 255,
        Def = 50
    })
    Page5.Button({
        Text = "Restore Old Globe",
        Callback = function()
            parts = workspace.Baseplate.EarthParts
            part = workspace.Baseplate.Parts
            for i,v in pairs(parts:GetChildren()) do
                v:Destroy()
            end
            for i,v in pairs(game.Lighting.EarthPartsOld:GetChildren()) do
                a = v:clone()
                a.Parent = parts
            end
        end
    })
    ESPButton = Page5.Toggle({
        Text = "UnitESP",
        Enabled = defConfig["ESP"],
        Callback = function(value)
            defConfig["ESP"] = value
            if value == true then
                addSetting("UnitESP",Color3.fromRGB(152, 148, 255))
                for i,v in pairs(workspace.Units:GetChildren()) do
                    newESPInstance(v,v.Type.Value,math.floor(v.Current.Value),math.floor(v.Current.Entrenchment.Value),math.floor(v.Current.Training.Value),90)
            end
            
            else
                removeSetting("UnitESP")
                for i,v in pairs(workspace.Units:GetChildren()) do
                if v:FindFirstChild("XSPYWINNING") then
                    v["XSPYWINNING"]:Destroy()
                end
            end   
            end
        end
    })
    Page5.ColorPicker({
        Text = "ESP Color",
        Default = Color3.fromRGB(defConfig["ESPColorR"],defConfig["ESPColorG"],defConfig["ESPColorB"]),
        Callback = function(value)
            defConfig["ESPColorR"] = value.R*255
            defConfig["ESPColorG"] = value.G*255
            defConfig["ESPColorB"] = value.B*255
        end
    })
    Page5.Toggle({
        Text = "Charms",
        Callback = function(value)
            defConfig["Charms"] = value
            if value == false then
                removeSetting("Charms")
                for i3,v3 in pairs(workspace.Units:GetChildren()) do
                    for i,v in pairs(v3:GetChildren()) do
                        if v:IsA("Model") then
                            for i2,v2 in pairs(v:GetChildren()) do
                                if v2:FindFirstChild("AlabamaNigger") then
                                    v2["AlabamaNigger"]:Destroy()
                                end
                            end
                        end
                    end
                end
            else
                addSetting("Charms",Color3.fromRGB(153, 233, 255))
            end
        
            
        end
    })
    
    Page5.ColorPicker({
        Text = "Charms Color",
        Default = Color3.fromRGB(defConfig["CharmsColorR"],defConfig["CharmsColorG"],defConfig["CharmsColorB"]),
        Callback = function(value)
            defConfig["CharmsColorR"] = value.R*255
            defConfig["CharmsColorG"] = value.G*255
            defConfig["CharmsColorB"] = value.B*255
        end
    })
    Page5.Slider({
        Text = "Chams Transparency",
        Callback = function(value)
            defConfig["CharmsTr"] = value/10
        end,
        Min = 1,
        Max = 10,
        Def = 0
    })
    Page5.Toggle({
        Text = "BetterCities",
        Callback = function(value)
            _G.BetterCities = value
            if value == false then
                removeSetting("Better Cities")
            else
                addSetting("Better Cities",Color3.fromRGB(204, 43, 164))
            end
        
            
        end
    })
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "[Rifthook] Loaded.", 
        Font = Enum.Font.SourceSansBold, 
        Color = BrickColor.new("Toothpaste").Color, 
        FontSize = Enum.FontSize.Size28
    });
    function addCharms(p,c,t)
        local Charms = Instance.new("BoxHandleAdornment")
        Charms.ZIndex = 10
        Charms.AlwaysOnTop = false
        Charms.Color3 = c
        Charms.Parent = p
        Charms.Size = p.Size
        Charms.Adornee = p
        Charms.Name = "AlabamaNigger"
        Charms.Transparency = t
    end
    function newCityInstance(a1,a2,a3,a4)
        local hypernigger = Instance.new("SurfaceGui")
        local Box = Instance.new("TextLabel")
        local CityName = Instance.new("TextLabel")
    
        hypernigger.Name = "hypernigger"
        hypernigger.Parent = a4
        hypernigger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        hypernigger.Face = Enum.NormalId.Left
        hypernigger.LightInfluence = 0
        hypernigger.PixelsPerStud = 100
        hypernigger.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
        hypernigger.ClipsDescendants = false
        hypernigger.AlwaysOnTop = true
    
        Box.Name = "Box"
        Box.Parent = hypernigger
        Box.BackgroundColor3 = a2
        Box.BorderSizePixel = 3
        Box.Size = UDim2.new(1, 0, 1, 0)
        Box.Font = Enum.Font.SourceSans
        Box.Text = ""
        Box.TextColor3 = Color3.new(0, 0, 0)
        Box.TextSize = 14
    
        CityName.Name = "CityName"
        CityName.Parent = hypernigger
        CityName.BackgroundColor3 = Color3.new(0.341176, 0.658824, 0.309804)
        CityName.BackgroundTransparency = 1
        CityName.BorderSizePixel = 0
        CityName.Position = UDim2.new(0, 0, 0, a3)
        CityName.Size = UDim2.new(0, 200, 0, a3)
        CityName.Font = Enum.Font.SourceSansSemibold
        CityName.Text = a1
        CityName.TextColor3 = a2
        CityName.TextScaled = true
        CityName.TextSize = 14
        CityName.TextStrokeTransparency = 0
        CityName.TextWrapped = true
        CityName.TextXAlignment = Enum.TextXAlignment.Left
    end
    while wait(0.5) do
        if _G.BetterCities == true then
            wait(1)
            for i,v in pairs(workspace.Baseplate.Cities:GetChildren()) do
                for i2,v2 in pairs(v:GetChildren()) do
                    if v2:FindFirstChild("hypernigger") then
                        v2:FindFirstChild("hypernigger").Box.BackgroundColor3 = v2.Color
                        v2:FindFirstChild("hypernigger").CityName.TextColor3 = v2.Color
                    else
                        newCityInstance(v2.Name,v2.Color,v2.Size.Z*100,v2)  
                        v2.Transparency = 1
                    end
                    
                end
            end
        end
        if _G.UnrestCity == true then
            local CountryCity = workspace.Baseplate.Cities:GetChildren()
            for i,v in pairs(CountryCity) do
                for i2,v2 in pairs(v:GetChildren()) do
                    v2.Color = Color3.fromRGB(49, 155, 16):Lerp(Color3.fromRGB(155, 21, 21), v2.Unrest.Value / 100);
                end
            end
        end
        if defConfig["ESP"] then
                    for i,v in pairs(workspace.Units:GetChildren()) do
                        if v:FindFirstChild("XSPYWINNING") then
                            inst = v["XSPYWINNING"]
                            inst.Ent.Text = "[ "..math.floor(v.Current.Entrenchment.Value).." ]"
                            inst.Type.Text = v.Type.Value
                            inst.Health.Text = "[ "..math.floor(v.Current.Value).." ]"
                            inst.Train.Text = "[ "..math.floor(v.Current.Training.Value).."% ]"
                            inst.Frame.Frame.Size = UDim2.new(0,(90/v.Stats.Value.X)*v.Current.Value,1,0)
                        end
                    end
        end  
        if defConfig["Charms"] then
            for i3,v3 in pairs(workspace.Units:GetChildren()) do
                for i,v in pairs(v3:GetChildren()) do
                    if v:IsA("Model") then
                        for i2,v2 in pairs(v:GetChildren()) do
                            if v2:FindFirstChild("AlabamaNigger") then
                            else
                                addCharms(v2,Color3.fromRGB(defConfig["CharmsColorR"],defConfig["CharmsColorG"],defConfig["CharmsColorB"]),defConfig["CharmsTr"])
                            end
                        end
                    end
                end
            end
        end  
        if _G.Addinga == true then
            wait(2)
            local A_1 = ads[math.random(1,#ads)] local A_2 = "All" 
            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(A_1, A_2)
        end
    end
end
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[Rifthook] Loading Rifthook..", 
    Font = Enum.Font.SourceSansBold, 
    Color = BrickColor.new("Toothpaste").Color, 
    FontSize = Enum.FontSize.Size28
});

function ExecuteWCModule()
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
    local UI = Material.Load({
        Title = "Rifthook 1.0 (World Conquest)",
        Style = 1,
        SizeX = 600,
        SizeY = 400,
        Theme = "Dark"
    })
    local ad1 = {"xdotspy","dotspy.","otspy.x","tspy.xy","spy.xyz","py.xyz ","y.xyz x",".xyz xd","xyz xdo","yz xdot","z xdots"," xdotsp"}
    local ad = {"Riftho","ifthoo","fthook","thook ","hook R","ook Ri","ok Rif","k Rift"," Rifth"}
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Loaded Rifthook for World Conquest", 
        Font = Enum.Font.SourceSansBold, 
        Color = BrickColor.new("Toothpaste").Color, 
        FontSize = Enum.FontSize.Size28
    });
    local Page1 = UI.New({
        Title = "Paint"
    })
    --[[
    local Page2 = UI.New({
        Title = "Name"
    })
    ]]
    local Page3 = UI.New({
        Title = "Other"
    })
    function typewrite(txt)
        for i,v in pairs(ad) do
            local args = {
                [1] = "SubmitRP",
                [2] = v,
                [3] = Color3.new(math.random(), math.random(), math.random()),
                [4] = v,
                [5] = v,
                [6] = v,
                [7] = v,
                [8] = v,
                [9] = v
            }
            wait(0.3)
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))   
        end
    end
    local SelectedRegion = "China"
    local Delay = 0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
    local Color = Color3.fromRGB(255,255,255)
    Page1.ColorPicker({
        Text = "Color",
        Default = Color,
        Callback = function(value)
            Color = value
        end
    })
    Page1.Button({
        Text = "Grief USA Region",
        Callback = function(value)
            pcall(function()
                for i,v in pairs(workspace.CurrentMap.USA:GetChildren()) do
                    for i2,v2 in pairs(v:GetChildren()) do
                        if v2:IsA("Part") then
                            if i2/175 == math.floor(i2/175) then
                                wait(1.5)
                            end
                            local args = {
                                [1] = v2,
                                [2] = Color,
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Paint.Remotes.Color:FireServer(unpack(args))
                        end
                    end
                end
            end)
        end
    })
    Page1.Button({
        Text = "Grief China Region",
        Callback = function(value)
            pcall(function()
                for i,v in pairs(workspace.CurrentMap.China:GetChildren()) do
                    for i2,v2 in pairs(v:GetChildren()) do
                        if v2:IsA("Part") then
                            if i2/175 == math.floor(i2/175) then
                                wait(1.5)
                            end
                            local args = {
                                [1] = v2,
                                [2] = Color,
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Paint.Remotes.Color:FireServer(unpack(args))
                        end
                    end
                end
            end)
        end
    })
    --[[
    local SPaint = false
    Page1.Toggle({
        Text = "Smart Paint",
        Callback = function(value)
            SPaint = value
        end
    })
    ]]
    Page1.Button({
        Text = "Grief Local Region",
        Callback = function(value)
            pcall(function()
                if SPaint == true then
                    Cache = {}
                    for i,v in pairs(workspace.CurrentMap:GetChildren()) do
                        for i2,v2 in pairs(v:GetChildren()) do
                            if i2/4 == math.floor(i2/4) then
                                if v2:IsA("Part") then
                                    if (game.Players.LocalPlayer.Character.Torso.Position - v2.Position).Magnitude <20 then
                                        if i2/175 == math.floor(i2/175) then
                                            wait(1.5)
                                        end
                                        local args = {
                                            [1] = v2,
                                            [2] = Color,
                                            [3] = Cache
                                        }
                                                
                                        game:GetService("Players").LocalPlayer.Character.Paint.Remotes.Color:FireServer(unpack(args))
                                        Cache = {}
                                    end
                                end
                            else
                                table.insert(Cache,v2)
                            end
                        end
                    end
                else
                    for i,v in pairs(workspace.CurrentMap:GetChildren()) do
                        for i2,v2 in pairs(v:GetChildren()) do
                            if v2:IsA("Part") then
                                if (game.Players.LocalPlayer.Character.Torso.Position - v2.Position).Magnitude <20 then
                                    if i2/175 == math.floor(i2/175) then
                                        wait(1.5)
                                    end
                                    local args = {
                                        [1] = v2,
                                        [2] = Color,
                                    }
                                            
                                    game:GetService("Players").LocalPlayer.Character.Paint.Remotes.Color:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end)
        end
    })
    --[[
    Page2.Toggle({
        Text = "Name Tag Changer",
        Callback = function(value)
            _G.NameTagChanger = value
        end
    })
    local SpamChar = "Rifthook Rifthook Rifthook Rifthook Rifthook Rifthook Rifthook Rifthook Rifthook Rifthook"
    Page2.Button({
        Text = "Spam Name",
        Callback = function()
            local args = {
                [1] = "SubmitRP",
                [2] = SpamChar,
                [3] = Color3.new(math.random(), math.random(), math.random()),
                [4] = SpamChar,
                [5] = SpamChar,
                [6] = SpamChar,
                [7] = SpamChar,
                [8] = SpamChar,
                [9] = SpamChar,
            }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))   
        end
    })
    local NColor = Color3.new(0,0,0)
    Page2.ColorPicker({
        Text = "Color",
        Default = Color,
        Callback = function(value)
            NColor = value
        end
    })
    local NameTag = ""
    Page2.TextField({
        Text = "Custom name tag",
        Callback = function(value)
            NameTag = value
        end
    })
    Page2.Button({
        Text = "Custom name tag",
        Callback = function(value)
            local args = {
                [1] = "SubmitRP",
                [2] = NameTag,
                [3] = NColor,
                [4] = "",
                [5] = "",
                [6] = "",
                [7] = "",
                [8] = "",
                [9] = ""
            }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })
    ]]
    Page3.Button({
        Text = "Spam Cities",
        Callback = function(value)
            for i,v in pairs(game.Players:GetChildren()) do
                local args = {
                    [1] = v.Character.Head.CFrame,
                    [2] = "Rifthook - Premium Cheat for Rixse of Nations and World Conquest",
                    [3] = "City"
                }
    
                game:GetService("ReplicatedStorage").CityCreate:FireServer(unpack(args))
            end
        end
    })
    
    while wait(0.005) do
        if _G.NameTagChanger == true then
            typewrite()
        end
    end
end


keys = {{"7jBU5pXffyK28b9fVOdK",syn and true or false},{"qYxU7d4GaIl7tpBVdDlf",syn and true or false},{"gBDHNJQBO8al08Xm6D8G", syn and true or false},{"WYPvJihzXFTuwThNEFPC",syn and true or false},{"tKYWsqvE5vW9vN6JhUFl",syn and true or false},{"fqgDFQ8UoNsxbOLws8ki",syn and true or false},{"xKnaTZPerboaOkZzQaPc",syn and true or false},{"38v9E0QzH3jigpADvDqg",syn and true or false},{"LNHZcaGkREwsgYRkLK1i",syn and true or false},{"ZyuspvHCKaL3d7EEWaHA",syn and true or false},{"kBpSB0ULdlYTpQsAYkXN",syn and true or false},{"yN351aM33wZV7RlggkeN",syn and true or false},{"2zSANRmd7F1VrJIHZqmb",syn and true or false},{"p0shb3YFurpfiLFndY5a",syn and true or false},{"4SNnVyoQp1FonCZpnWGH",syn and true or false}}
local HttpService = game:GetService("HttpService");
rconsolename("rifthook authentication")
rconsoleprint("@@WHITE@@")
if isfile("rifthook.auth") then
	rconsoleprint("Automatically logging you in.\n")
	wait(2)
	autoval = false
	for i,v in pairs(keys) do
		if v[1] == readfile("rifthook.auth") then
			if v[2] == true then
                valid = true
            end
		end
	end
	if autoval == false then
		rconsoleprint("(")
		rconsoleprint("@@RED@@")
		rconsoleprint("whitelist error")
		rconsoleprint("@@WHITE@@")
		rconsoleprint(") key invalid or blacklisted, proceeding to manual logon.\n")
	else
		while wait() do
		end
	end
end
local valid = false
while wait() do
	rconsoleprint("(")
	rconsoleprint("@@CYAN@@")
	rconsoleprint("whitelist")
	rconsoleprint("@@WHITE@@")
	rconsoleprint(") enter your whitelist key > ")
	inp = rconsoleinput()
	for i,v in pairs(keys) do
		if v[1] == inp then
			if v[2] == true then
				valid = true
			end
		end
	end
	if valid == true then
        ExecuteMainModule()
	else
	rconsoleprint("(")
	rconsoleprint("@@RED@@")
	rconsoleprint("whitelist error")
	rconsoleprint("@@WHITE@@")
	rconsoleprint(") key invalid\n")
	end
end
