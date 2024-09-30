local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Secret4869/Secret/refs/heads/main/Library/Test.lua"))()
local Window = redzlib:MakeWindow({'Exclusive Hub'..'  '..os.date('%A, %B %d %Y')..'   [Executor '..identifyexecutor()..']', 'Premium Script', "Exclusive_Muyong_Piece.json"})
  Window:AddMinimizeButton({
    Button = { Image = redzlib:GetIcon("rbxassetid://18483333121"), BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})
local Discord = Window:MakeTab({"Discord", "Info"})
local Setting = Window:MakeTab({"Setting Farm", "settings"})
local General = Window:MakeTab({"General", "home"})
--local Item = Window:MakeTab({"Item", "Swords"})
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
--------// [ Settings ] \\--------
Window:SelectTab(Setting)
Discord:AddDiscordInvite({
    Name = "Exclusive Hub | Community",
    Description = "Join our discord community to receive information about the next update",
    Logo = "rbxassetid://18483333121",
    Invite = "https://discord.gg/KMK6gXevWV"
})
Setting:AddSection("Settings")
local Select_W = AddDropdownS(Setting, "Select Weapon", "", Weaponlist, {Weaponlist[1]}, true, "Select_ToolFarm")
Setting:AddButton({"Refresh Weapon", function()
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
AddSlider(Setting, "Farm Distance","", 0, 100, Settings.FarmDistance, "Farm_Distance")
AddDropdown(Setting,"Select Method","", Mode, {Mode[3]},"Select_Method")
Setting:AddSection("Automatic Skill")
AddToggle(Setting, "Z", "", Settings.Automatic_SkillZ, "Automatic_SkillZ")
AddToggle(Setting, "X", "", Settings.Automatic_SkillX, "Automatic_SkillX")
AddToggle(Setting, "C", "", Settings.Automatic_SkillC, "Automatic_SkillC")
AddToggle(Setting, "V", "", Settings.Automatic_SkillV, "Automatic_SkillV")
--------// [ General ] \\--------
General:AddSection("Automatic Farm Boss")
AddToggle(General, "Automatic Farm All Boss", "", Settings.Automatic_Farm_All_Boss, "Automatic_Farm_All_Boss")
General:AddSection("Automatic Farm Select")
Select_M = AddDropdownS(General,"Select Enemie","", MobsList, {MobsList[1]},true,"Select_Enemie")
General:AddButton({"Refresh Mobs", function()
MobsList = {}
    for i,v in pairs(workspace.Map.Monster:GetDescendants()) do
        if v:IsA("Model") then
            if not table.find(MobsList, v.Name) then
                table.insert(MobsList, v.Name)
                end
            end
        end
    Select_M:Set(MobsList)
end})
AddToggle(General, "Automatic Farm Mobs Select", "", Settings.Atomatic_Level, "Atomatic_Level")
--------// [ Teleport ] \\--------
Teleport:AddSection("Npc Shop")
for _, prompt in pairs(workspace.Map.Shop:GetDescendants()) do
    if prompt:IsA("Model") and prompt:FindFirstChild("HumanoidRootPart") then
        Teleport:AddButton({prompt.Name, function()  
            local targetPivot = prompt.HumanoidRootPart:GetPivot()
            game.Players.LocalPlayer.Character:PivotTo(targetPivot)
        end})
    end
end
--------// [ Miscellaneous ] \\--------
Miscellaneous:AddSection("Instant Kill")
AddToggle(Miscellaneous, "Instant Kill", "", Settings.Instant_Kill, "Instant Kill")
Miscellaneous:AddSection("NO CD")
Miscellaneous:AddButton({"No CoolDown may only be used in Mobile and requires pressing the skill button manually. ", function()
    NOCD()
end})
Miscellaneous:AddSection("Automatic Get Free")
AddToggle(Miscellaneous, "Automatic Click Beli", "", Settings.Automatic_GetBeli, "Automatic_GetBeli")
AddToggle(Miscellaneous, "Automatic Click Gem", "", Settings.Automatic_GetGem, "Automatic_GetGem")
