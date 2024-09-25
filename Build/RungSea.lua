local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Secret4869/Secret/refs/heads/main/Library/Test.lua"))()
local Window = redzlib:MakeWindow({"Exclusive Hub : Rung Piece", "By Tomie", "Exclusive_Rung_Piece.json"})
  Window:AddMinimizeButton({
    Button = { Image = redzlib:GetIcon("rbxassetid://18483333121"), BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})
local Discord = Window:MakeTab({"Discord", "Info"})
local Setting = Window:MakeTab({"Setting Farm", "settings"})
local General = Window:MakeTab({"General", "home"})
local Item = Window:MakeTab({"Item", "Swords"})
--local Teleport = Window:MakeTab({"Teleport", "mountain-snow"})
local Miscellaneous = Window:MakeTab({"Miscellaneous", "axe"})
local function AddToggle(Tab, Name, Description, Default, Flag)
    local Ver = Tab:AddToggle({
        Name = Name,
        Description = Description,
        Flag = Flag,
        Default = Default,
        Callback = function(Value)
            _env[Flag] = Value
        end})
        return Ver
    end
    local function AddDropdownS(Tab, Name, Description, Options, Default, MultiSelect, Flag)
        local Ver = Tab:AddDropdown({
          Name = Name,Description = Description or "",Options = Options,Default = Default,Flag = Flag,MultiSelect = MultiSelect,
          Callback = function(Values)
              _env[Flag] = {}
              if MultiSelect then
                for val, State in pairs(Values) do
                    if State then
                        table.insert(_env[Flag], val)
                    end
                end
                end
            end})
        return Ver
    end
    local function AddDropdown(Tab, Name, Description, Options, Default, Flag)
      local Ver = Tab:AddDropdown({
        Name = Name,Description = Description or "",Options = Options,Default = Default,Flag = Flag,
        Callback = function(Value)
            _env[Flag] = Value
        end})
        return Ver
    end
    local function AddSlider(Tab, Name, Description, Min, Max, Default, Flag)
        local Ver = Tab:AddSlider({
        Name = Name,Description = Description or "",Min = Min,Max = Max,Default = Default,Flag = Flag,
        Callback = function(Value)
            _env[Flag] = Value
        end})
        return Ver
    end
    local function AddTextBox(Tab, Name, Description, PlaceholderText)
    local Ver = Tab:AddTextBox({
        Name = Name,Description = Description or "",PlaceholderText = PlaceholderText,
        Callback = function(Value)
            _env[Flag] = Value
        end})
    return Ver
end
--[[
AddTextBox(Setting, "Name", "Description", "Description")
AddSlider(Setting, "Name","Description", 0, 100000, 1000, "Slider_Flag")
AddToggle(Setting, "Name", "Description", Settings.Name, "Toggle_Flag")
AddDropdownS(Setting,"Name","Description", Weaponlist, {Weaponlist[1]},true,"AddDropdownS_Flag")
AddDropdown(Setting,"Name","Description", Weaponlist, {Weaponlist[1]},"AddDropdown_Flag")
]]
Window:SelectTab(Setting)
Discord:AddDiscordInvite({
    Name = "Exclusive Hub | Community",
    Description = "Join our discord community to receive information about the next update",
    Logo = "rbxassetid://18483333121",
    Invite = "https://discord.gg/KMK6gXevWV"
})
Setting:AddSection("Settings")
local Select_W = AddDropdown(Setting,languageData["Select Weapon"],"", Weaponlist, {Weaponlist[1]},"Select_ToolFarm")
Setting:AddButton({languageData["Refresh Weapon"], function()
Weaponlist = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if not table.find(Weaponlist, v.Name) then
                table.insert(Weaponlist, v.Name)
                end
            end
        end
    Select_W:Set(Weaponlist)
end})
Setting:AddDropdown({languageData["Select Method"], Mode, {Mode[3]}, function(call)
    Settings.Method = call
end, "Select_Method"})
AddSlider(Setting, languageData["Farm Distance"],"", 0, 100, Settings.FarmDistance, "Farm_Distance")
Setting:AddSection(languageData["Automatic Skill"])
Setting:AddToggle({"Z", Settings.Atomatic_SkillZ, function(call)
    Settings.Atomatic_SkillZ = call
end, "Atomatic_SkillZ"})
Setting:AddToggle({"X", Settings.Atomatic_SkillX, function(call)
    Settings.Atomatic_SkillX = call
end, "Atomatic_SkillX"})
Setting:AddToggle({"C", Settings.Atomatic_SkillC, function(call)
    Settings.Atomatic_SkillC = call
end, "Atomatic_SkillC"})
Setting:AddToggle({"V", Settings.Atomatic_SkillV, function(call)
    Settings.Atomatic_SkillV = call
end, "Atomatic_SkillV"})
--------// [ General ] \\--------
General:AddSection("Raid")
General:AddButton({languageData["Tp Raid"], function()
    Tp(position_raid)
end})
AddToggle(General, languageData["Automatic Clear RaidTrash"], " Cannot Instant Kill", Settings.Atomatic_Clear_RaidTrash, "Atomatic_Clear_RaidTrash")
General:AddSection(languageData["Automatic Spawn Boss + Automatic Farm Boss"])
for _, bossData in pairs(LoadBoss) do
    AddToggle(General, "Automatic Spawn Boss " .. bossData[3], "Need <font color='rgb(252, 1, 127)'>".. bossData[1] .."</font>   If you don't have it, you'll buy it for me automatically", Settings[bossData[3]], "Automatic_Spawn_Boss_" .. bossData[3])
end
General:AddSection(languageData["Automatic Farm All Boss"])
AddToggle(General, languageData["Automatic Farm All Boss"], "", Settings.Automatic_Farm_All_Boss, "Automatic_Farm_All_Boss")
General:AddSection(" Automatic Farm")
Select_M = AddDropdownS(General,languageData["Select Enemie"],"", MobsList, {MobsList[1]},true,"Select_Enemie")
General:AddButton({languageData["Refresh Mobs"], function()
MobsList = {}
    for i,v in pairs(workspace["มอนเตอร์"]:GetDescendants()) do
        if v:IsA("Model") then
            if not table.find(MobsList, v.Name) then
                table.insert(MobsList, v.Name)
                end
            end
        end
    Select_M:Set(MobsList)
end})
AddToggle(General, languageData["Automatic Farm Mobs Select"], "", Settings.Atomatic_Level, "Atomatic_Level")
--------// [ Item ] \\--------
AddToggle(Item, languageData["Automatic Get Guntip Beta Test"], "", Settings.Atomatic_GetGuntip, "Atomatic_GetGuntip")
--------// [ Miscellaneous ] \\--------
AddToggle(Miscellaneous, languageData["Instant Kill"], "<font color='rgb(252, 1, 127)'>".. languageData["instant Kill Work On Boss Spawn and Normal Boss and if ping Too much server won't work "] .."</font>", Settings.Instant_Kill, "Instant Kill")
AddToggle(Miscellaneous, languageData["Automatic Grab Item Not recommended"], "", Settings.Automatic_GrabItem, "Automatic_GrabItem")
Miscellaneous:AddButton({languageData["Redeem All Codes"], function()
    for _,v in pairs(localplayer.Codes:GetChildren()) do
        local args = {
            [1] = v.Name
        }
        game:GetService("ReplicatedStorage").RedeemCode:FireServer(unpack(args))
    end
end})
