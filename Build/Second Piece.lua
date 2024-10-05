
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Secret4869/Secret/refs/heads/main/Library/Test.lua"))()
local Window = redzlib:MakeWindow({"Exclusive Hub : Second Piece", "By Barloss", "Exclusive_Second_Piece.json"})
  Window:AddMinimizeButton({
    Button = { Image = redzlib:GetIcon("rbxassetid://18483333121"), BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})
local Setting = Window:MakeTab({"Setting Farm", "settings"})
local General = Window:MakeTab({"General", "home"})
local Stats = Window:MakeTab({"Stats", "bar-chart-2"})
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

Setting:AddSection("| Setting")
local Select_W = AddDropdownS(Setting,"Select Weapon", "", Weaponlist, {Weaponlist[1]}, true, "Select_ToolFarm")
Setting:AddButton({"Refresh Weapon", function()
local Weaponlist = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if not table.find(Weaponlist, v.Name) then
                table.insert(Weaponlist, v.Name)
                end
            end
        end
    Select_W:Set(Weaponlist)
end})
AddToggle(Setting, "Auto Haki", "BusoHaki And KenHaki", Settings.Haki, "Haki")
AddToggle(Setting, "Skill Z", "", Settings.SkillZ, "SkillZ")
AddToggle(Setting, "Skill X", "", Settings.SkillX, "SkillX")
AddToggle(Setting, "Skill C", "", Settings.SkillC, "SkillC")
AddToggle(Setting, "Skill V", "", Settings.SkillV, "SkillV")
General:AddSection("| Auto Farm Level")
AddToggle(General, "Auto Farm Level", "", Settings.AutoFarm, "AutoFarm")
General:AddSection("| Auto Keep Chests")
AddToggle(General, "Auto Keep Chests", "", Settings.AutoFarmChests, "AutoFarmChests")
General:AddSection("| Auto Farm Boss")
AddToggle(General, "Auto Farm Boss", "All Boss And Boss Ragna", Settings.AutoFarmBoss, "AutoFarmBoss") 
General:AddSection("| Auto Spawn Boss")
AddDropdown(General, "Select Spawn Boss", "",  spawnbosszx, Settings.spawnbossxx, "Selectspawn")
AddToggle(General, "Auto Spawn Boss", "", Settings.AutoBossspawn, "AutoBossspawn") 
Teleport:AddSection("| Islands")
AddDropdown(Teleport, "Select Islands", "",  IslandsList, Settings.Islands, "Islands")
Teleport:AddButton({"Teleport Islands", function()
tpIslands()
end})
Teleport:AddSection("| NPC")
AddDropdown(Teleport, "Select NPC", "",  npcList, Settings.Npc, "Npc")
Teleport:AddButton({"Teleport NPC", function()
tpnpc()
end})
Stats:AddSlider({"Point", 1, 500, 1, Settings.Sv, function(call)
    Settings.Sv = call
end, "Point"})
Stats:AddButton({"Reset Stats", function()
Restats()
end})
AddToggle(Stats, "Stats Melee", "", Settings.Melee, "Melee")
AddToggle(Stats, "Stats Weapon", "", Settings.Sword, "Weapon")
AddToggle(Stats, "Stats DemonFruit", "", Settings.DevilFruit, "DemonFruit")
AddToggle(Stats, "Stats Defense", "", Settings.Defense, "Defense")
Miscellaneous:AddButton({"Boots Fps", function()
    BootsFps()
  end})
