local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Secret4869/Secret/refs/heads/main/Library/Test.lua"))()
local Window = redzlib:MakeWindow({'Exclusive Hub'..'  '..os.date('%A, %B %d %Y')..'   [Executor '..identifyexecutor()..']', 'Premium Script', "Exclusive_Rung_Sea.json"})
  Window:AddMinimizeButton({
    Button = { Image = redzlib:GetIcon("rbxassetid://18483333121"), BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})
local Discord = Window:MakeTab({"Discord", "Info"})
local Setting = Window:MakeTab({"Setting Farm", "settings"})
local General = Window:MakeTab({"General", "home"})
local Item = Window:MakeTab({"Item", "Swords"})
local Teleport = Window:MakeTab({"Teleport", "mountain-snow"})
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
local Select_W = AddDropdownS(Setting, languageData["Select Weapon"], "", Weaponlist, {Weaponlist[1]}, true, "Select_ToolFarm")
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
AddToggle(Setting, "Automatic Attack + Automatic Equip", "", Settings.Atk_E, "Atk_ATMEQ")
Setting:AddDropdown({languageData["Select Method"], Mode, {Mode[3]}, function(call)
    Settings.Method = call
end, "Select_Method"})
AddSlider(Setting, languageData["Farm Distance"],"", 0, 100, Settings.FarmDistance, "Farm_Distance")
Setting:AddSection(languageData["Automatic Skill"])
AddToggle(Setting, "Z", "", Settings.Automatic_SkillZ, "Automatic_SkillZ")
AddToggle(Setting, "X", "", Settings.Automatic_SkillX, "Automatic_SkillX")
AddToggle(Setting, "C", "", Settings.Automatic_SkillC, "Automatic_SkillC")
AddToggle(Setting, "V", "", Settings.Automatic_SkillV, "Automatic_SkillV")
--------// [ General ] \\--------
General:AddSection("Raid")
AddToggle(General, languageData["Automatic Clear Eazy BossFight"], "", Settings.Atomatic_Clear_Trash_Eazy, "Atomatic_Clear_Trash_Eazy")
AddToggle(General, languageData["Automatic Clear Hard BossFight"], "", Settings.Atomatic_Clear_Trash_Hard, "Atomatic_Clear_Trash_Hard")
General:AddSection(languageData["Automatic Spawn Boss + Automatic Farm Boss"])
for _, bossData in pairs(LoadBoss) do
    AddToggle(General, "Automatic Spawn Boss " .. bossData[3], "Need <font color='rgb(252, 1, 127)'>".. bossData[1] .."</font>   If you don't have it, you'll buy it for me automatically", Settings[bossData[3]], "Automatic_Spawn_Boss_" .. bossData[3])
end
for _, BossData2 in pairs(LoadBoss2) do
    AddToggle(General, "Automatic Spawn Boss " .. BossData2[5], "Need <font color='rgb(252, 1, 127)'>".. BossData2[3] .."</font>   If you don't have it, you'll buy it for me automatically", Settings[BossData2[5]], "Automatic_Spawn_Boss_" .. BossData2[5])
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
AddToggle(Item, languageData["Automatic Craft Guntip Beta Test"], "", Settings.Atomatic_GetGuntip, "Atomatic_GetGuntip")
AddToggle(Item, languageData["Automatic Craft Sang Tin JA"], "<font color='rgb(252, 1, 127)'> It will find everything necessary for making Sang Tin JA, except for the gem. You will have to find the gem yourself. </font>", Settings.Atomatic_Get_STJ, "Atomatic_Get_STJ")
AddToggle(Item, languageData["Automatic Craft Cyn"], "", Settings.Automatic_Craft_Cya, "Automatic_Craft_Cya")
--------// [ Teleport ] \\--------
for _, prompt in pairs(workspace.Seller:GetDescendants()) do
    if prompt:IsA("ProximityPrompt") then
        Teleport:AddButton({prompt.ActionText, function()
            local targetPivot = prompt.Parent:GetPivot()
            game.Players.LocalPlayer.Character:PivotTo(targetPivot)
        end})
    end
end
--------// [ Miscellaneous ] \\--------
AddToggle(Miscellaneous, languageData["Instant Kill"], "<font color='rgb(252, 1, 127)'>".. languageData["instant Kill Work On Boss Spawn and Normal Boss and if ping Too much server won't work and Cannot Instant Kill BossFight"] .."</font>", Settings.Instant_Kill, "Instant Kill")
AddToggle(Miscellaneous, languageData["Automatic Grab Item Not recommended"], "", Settings.Automatic_GrabItem, "Automatic_GrabItem")
Miscellaneous:AddButton({languageData["Redeem All Codes"], function()
    for _,v in pairs(localplayer.Codes:GetChildren()) do
        local args = {
            [1] = v.Name
        }
        game:GetService("ReplicatedStorage").RedeemCode:FireServer(unpack(args))
    end
end})
