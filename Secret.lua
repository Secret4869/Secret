if not getfenv().ECL_SECRET_ENV_MAIN then
    return game:GetService("Players").LocalPlayer:Kick("Unauthorized Fluent Modded Use")
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local notifications = {}

function showNotification(message, duration)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = ScreenGui
    TextLabel.Text = message
    TextLabel.Size = UDim2.new(0.3, 0, 0.05, 0) 
    TextLabel.Position = UDim2.new(0.35, 0, 0.45 + #notifications * 0.07, 0)  
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 30
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextTransparency = 1
    table.insert(notifications, TextLabel)

    spawn(function()
        for i = 1, 10 do
            TextLabel.TextTransparency = 1 - i * 0.1
            wait(0.05)
        end

        wait(duration)

        for i = 1, 10 do
            TextLabel.TextTransparency = i * 0.1
            wait(0.05)
        end
        
        TextLabel:Destroy()

        for i, label in ipairs(notifications) do
            if label == TextLabel then
                table.remove(notifications, i)
                break
            end
        end

        for i, label in ipairs(notifications) do
            label.Position = UDim2.new(0.35, 0, 0.45 + (i - 1) * 0.07, 0)
        end
    end)
end

showNotification("Starting Up! Exclusive Hub Script", 3)
wait(4.5)
showNotification("Initializing the UI...", 5)
wait(1)
showNotification("UI Power By Eclipse", 3) 
wait(1)
showNotification("Script Power By Secret + I Im Shadow", 6) 

local a, b = {
    {
        1,
        "ModuleScript",
        {"MainModule"},
        {
            {18, "ModuleScript", {"Creator"}},
            {28, "ModuleScript", {"Icons"}},
            {
                47,
                "ModuleScript",
                {"Themes"},
                {
                    {56, "ModuleScript", {"Galactic Glow"}},
                    {55, "ModuleScript", {"Aurora Borealis"}},
                    {54, "ModuleScript", {"Celestial Serenity"}},
                    {53, "ModuleScript", {"Crimson Shadow"}},
                    {52, "ModuleScript", {"Starry Night"}},
                    {51, "ModuleScript", {"Autumn Glow"}},
                    {50, "ModuleScript", {"Twilight"}},
                    {49, "ModuleScript", {"Deep Ocean"}},
                    {48, "ModuleScript", {"Forest Serenity"}}
                }
            },
            {
                19,
                "ModuleScript",
                {"Elements"},
                {
                    {21, "ModuleScript", {"Colorpicker"}},
                    {27, "ModuleScript", {"Toggle"}},
                    {23, "ModuleScript", {"Input"}},
                    {20, "ModuleScript", {"Button"}},
                    {25, "ModuleScript", {"Paragraph"}},
                    {22, "ModuleScript", {"Dropdown"}},
                    {26, "ModuleScript", {"Slider"}},
                    {24, "ModuleScript", {"Keybind"}}
                }
            },
            {
                29,
                "Folder",
                {"Packages"},
                {
                    {
                        30,
                        "ModuleScript",
                        {"Flipper"},
                        {
                            {33, "ModuleScript", {"GroupMotor"}},
                            {46, "ModuleScript", {"isMotor.spec"}},
                            {39, "ModuleScript", {"Signal"}},
                            {40, "ModuleScript", {"Signal.spec"}},
                            {45, "ModuleScript", {"isMotor"}},
                            {36, "ModuleScript", {"Instant.spec"}},
                            {44, "ModuleScript", {"Spring.spec"}},
                            {42, "ModuleScript", {"SingleMotor.spec"}},
                            {38, "ModuleScript", {"Linear.spec"}},
                            {31, "ModuleScript", {"BaseMotor"}},
                            {43, "ModuleScript", {"Spring"}},
                            {35, "ModuleScript", {"Instant"}},
                            {37, "ModuleScript", {"Linear"}},
                            {41, "ModuleScript", {"SingleMotor"}},
                            {34, "ModuleScript", {"GroupMotor.spec"}},
                            {32, "ModuleScript", {"BaseMotor.spec"}}
                        }
                    }
                }
            },
            {
                2,
                "ModuleScript",
                {"Acrylic"},
                {
                    {3, "ModuleScript", {"AcrylicBlur"}},
                    {5, "ModuleScript", {"CreateAcrylic"}},
                    {6, "ModuleScript", {"Utils"}},
                    {4, "ModuleScript", {"AcrylicPaint"}}
                }
            },
            {
                7,
                "Folder",
                {"Components"},
                {
                    {9, "ModuleScript", {"Button"}},
                    {12, "ModuleScript", {"Notification"}},
                    {13, "ModuleScript", {"Section"}},
                    {17, "ModuleScript", {"Window"}},
                    {14, "ModuleScript", {"Tab"}},
                    {10, "ModuleScript", {"Dialog"}},
                    {8, "ModuleScript", {"Assets"}},
                    {16, "ModuleScript", {"TitleBar"}},
                    {15, "ModuleScript", {"Textbox"}},
                    {11, "ModuleScript", {"Element"}}
                }
            }
        }
    }
}
local c = {
    function()
        local d, e, f, g, h = b(1)
        local i, j, k, l, m, n =
            game:GetService "Lighting",
            game:GetService "RunService",
            game:GetService "Players".LocalPlayer,
            game:GetService "UserInputService",
            game:GetService "TweenService",
            game:GetService "Workspace".CurrentCamera
        local o, p = k:GetMouse(), e
        local q, r, s, t = f(p.Creator), f(p.Elements), f(p.Acrylic), p.Components
        local u, v, w = f(t.Notification), q.New, protectgui or syn and syn.protect_gui or function()
                end
        local x = v("ScreenGui", {Parent = j:IsStudio() and k.PlayerGui or game:GetService "CoreGui"})
        w(x)
        u:Init(x)
        local y = {
            Version = "Private",
            OpenFrames = {},
            Options = {},
            Themes = f(p.Themes).Names,
            Window = nil,
            WindowFrame = nil,
            Unloaded = false,
            Theme = "Twilight",
            DialogOpen = false,
            UseAcrylic = true,
            Acrylic = true,
            Transparency = true,
            MinimizeKeybind = nil,
            MinimizeKey = Enum.KeyCode.LeftControl,
            GUI = x
        }
        function y.SafeCallback(z, A, ...)
            if not A then
                return
            end
            local B, C = pcall(A, ...)
            if not B then
                local D, E = C:find ":%d+: "
                if not E then
                    return y:Notify {Title = "Interface", Content = "Callback error", SubContent = C, Duration = 5}
                end
                return y:Notify {
                    Title = "Interface",
                    Content = "Callback error",
                    SubContent = C:sub(E + 1),
                    Duration = 5
                }
            end
        end
        function y.Round(z, A, B)
            if B == 0 then
                return math.floor(A)
            end
            A = tostring(A)
            return A:find "%." and tonumber(A:sub(1, A:find "%." + B)) or A
        end
        local z = f(p.Icons).assets
        function y.GetIcon(A, B)
            if B ~= nil and z["lucide-" .. B] then
                return z["lucide-" .. B]
            end
            return nil
        end
        local A = {}
        A.__index = A
        A.__namecall = function(B, C, ...)
            return A[C](...)
        end
        for B, C in ipairs(r) do
            A["Add" .. C.__type] = function(D, E, F)
                C.Container = D.Container
                C.Type = D.Type
                C.ScrollFrame = D.ScrollFrame
                C.Library = y
                return C:New(E, F)
            end
        end
        y.Elements = A
        function y.CreateWindow(D, E)
            assert(E.Title, "Window - Missing Title")
            if y.Window then
                print "You cannot create more than one window."
                return
            end
            y.MinimizeKey = E.MinimizeKey
            y.UseAcrylic = E.Acrylic
            if E.Acrylic then
                s.init()
            end
            local F =
                f(t.Window) {Parent = x, Size = E.Size, Title = E.Title, SubTitle = E.SubTitle, TabWidth = E.TabWidth}
            y.Window = F
            y:SetTheme(E.Theme)
            return F
        end
        function y.SetTheme(D, E)
            if y.Window and table.find(y.Themes, E) then
                y.Theme = E
                q.UpdateTheme()
            end
        end
        function y.Destroy(D)
            if y.Window then
                y.Unloaded = true
                if y.UseAcrylic then
                    y.Window.AcrylicPaint.Model:Destroy()
                end
                q.Disconnect()
                y.GUI:Destroy()
            end
        end
        function y.ToggleAcrylic(D, E)
            if y.Window then
                if y.UseAcrylic then
                    y.Acrylic = E
                    y.Window.AcrylicPaint.Model.Transparency = E and 0.98 or 1
                    if E then
                        s.Enable()
                    else
                        s.Disable()
                    end
                end
            end
        end
        function y.ToggleTransparency(D, E)
            if y.Window then
                y.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = E and 0.10 or 0
            end
        end
        function y.Notify(D, E)
            return u:New(E)
        end
        function y.ToggleGUI()
            if y.GUI.Enabled then
                y.GUI.Enabled = false
            else
                y.GUI.Enabled = true
            end
            for G, H in ipairs(y.GUI:GetChildren()) do
                if H.Name ~= "Notifications" then
                    H.Enabled = y.GUI.Enabled
                end
            end
        end
        if getgenv then
            getgenv().Fluent = y
        end
        return y
    end,
    function()
        local d, e, f, g, h = b(2)
        local i = {AcrylicBlur = f(e.AcrylicBlur), CreateAcrylic = f(e.CreateAcrylic), AcrylicPaint = f(e.AcrylicPaint)}
        function i.init()
            local j = Instance.new "DepthOfFieldEffect"
            j.FarIntensity = 0
            j.InFocusRadius = 0.1
            j.NearIntensity = 1
            local k = {}
            function i.Enable()
                for l, m in pairs(k) do
                    m.Enabled = false
                end
                j.Parent = game:GetService "Lighting"
            end
            function i.Disable()
                for l, m in pairs(k) do
                    m.Enabled = m.enabled
                end
                j.Parent = nil
            end
            local l = function()
                local l = function(l)
                    if l:IsA "DepthOfFieldEffect" then
                        k[l] = {enabled = l.Enabled}
                    end
                end
                for m, n in pairs(game:GetService "Lighting":GetChildren()) do
                    l(n)
                end
                if game:GetService "Workspace".CurrentCamera then
                    for o, p in pairs(game:GetService "Workspace".CurrentCamera:GetChildren()) do
                        l(p)
                    end
                end
            end
            l()
            i.Enable()
        end
        return i
    end,
    function()
        local d, e, f, g, h = b(3)
        local i, j, k, l = f(e.Parent.Parent.Creator), f(e.Parent.CreateAcrylic), unpack(f(e.Parent.Utils))
        local m = function(m)
            local n = {}
            m = m or 0.001
            local o, p = {topLeft = Vector2.new(), topRight = Vector2.new(), bottomRight = Vector2.new()}, j()
            p.Parent = workspace
            local q, r = function(q, r)
                    o.topLeft = r
                    o.topRight = r + Vector2.new(q.X, 0)
                    o.bottomRight = r + q
                end, function()
                    local q = game:GetService "Workspace".CurrentCamera
                    if q then
                        q = q.CFrame
                    end
                    local r = q
                    if not r then
                        r = CFrame.new()
                    end
                    local s, t, u, v = r, o.topLeft, o.topRight, o.bottomRight
                    local w, x, y = k(t, m), k(u, m), k(v, m)
                    local z, A = (x - w).Magnitude, (x - y).Magnitude
                    p.CFrame = CFrame.fromMatrix((w + y) / 2, s.XVector, s.YVector, s.ZVector)
                    p.Mesh.Scale = Vector3.new(z, A, 0)
                end
            local s, t = function(s)
                    local t = l()
                    local u, v = s.AbsoluteSize - Vector2.new(t, t), s.AbsolutePosition + Vector2.new(t / 2, t / 2)
                    q(u, v)
                    task.spawn(r)
                end, function()
                    local s = game:GetService "Workspace".CurrentCamera
                    if not s then
                        return
                    end
                    table.insert(n, s:GetPropertyChangedSignal "CFrame":Connect(r))
                    table.insert(n, s:GetPropertyChangedSignal "ViewportSize":Connect(r))
                    table.insert(n, s:GetPropertyChangedSignal "FieldOfView":Connect(r))
                    task.spawn(r)
                end
            p.Destroying:Connect(
                function()
                    for u, v in n do
                        pcall(
                            function()
                                v:Disconnect()
                            end
                        )
                    end
                end
            )
            t()
            return s, p
        end
        return function(n)
            local o, p, q = {}, m(n)
            local r = i.New("Frame", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1)})
            i.AddSignal(
                r:GetPropertyChangedSignal "AbsolutePosition",
                function()
                    p(r)
                end
            )
            i.AddSignal(
                r:GetPropertyChangedSignal "AbsoluteSize",
                function()
                    p(r)
                end
            )
            o.AddParent = function(s)
                i.AddSignal(
                    s:GetPropertyChangedSignal "Visible",
                    function()
                        o.SetVisibility(s.Visible)
                    end
                )
            end
            o.SetVisibility = function(s)
                q.Transparency = s and 0.98 or 1
            end
            o.Frame = r
            o.Model = q
            return o
        end
    end,
    function()
        local d, e, f, g, h = b(4)
        local i, j = f(e.Parent.Parent.Creator), f(e.Parent.AcrylicBlur)
        local k = i.New
        return function(l)
            local m = {}
            m.Frame =
                k(
                "Frame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 0.9,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BorderSizePixel = 0
                },
                {
                    k(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://8992230677",
                            ScaleType = "Slice",
                            SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Size = UDim2.new(1, 120, 1, 116),
                            Position = UDim2.new(0.5, 0, 0.5, 0),
                            BackgroundTransparency = 1,
                            ImageColor3 = Color3.fromRGB(0, 0, 0),
                            ImageTransparency = 0.7
                        }
                    ),
                    k("UICorner", {CornerRadius = UDim.new(0, 8)}),
                    k(
                        "Frame",
                        {
                            BackgroundTransparency = 0.45,
                            Size = UDim2.fromScale(1, 1),
                            Name = "Background",
                            ThemeTag = {BackgroundColor3 = "AcrylicMain"}
                        },
                        {k("UICorner", {CornerRadius = UDim.new(0, 8)})}
                    ),
                    k(
                        "Frame",
                        {
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                            BackgroundTransparency = 0.4,
                            Size = UDim2.fromScale(1, 1)
                        },
                        {
                            k("UICorner", {CornerRadius = UDim.new(0, 8)}),
                            k("UIGradient", {Rotation = 90, ThemeTag = {Color = "AcrylicGradient"}})
                        }
                    ),
                    k(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://9968344105",
                            ImageTransparency = 0.98,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 128, 0, 128),
                            Size = UDim2.fromScale(1, 1),
                            BackgroundTransparency = 1
                        },
                        {k("UICorner", {CornerRadius = UDim.new(0, 8)})}
                    ),
                    k(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://9968344227",
                            ImageTransparency = 0.9,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 128, 0, 128),
                            Size = UDim2.fromScale(1, 1),
                            BackgroundTransparency = 1,
                            ThemeTag = {ImageTransparency = "AcrylicNoise"}
                        },
                        {k("UICorner", {CornerRadius = UDim.new(0, 8)})}
                    ),
                    k(
                        "Frame",
                        {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2},
                        {
                            k("UICorner", {CornerRadius = UDim.new(0, 8)}),
                            k("UIStroke", {Transparency = 0.5, Thickness = 1, ThemeTag = {Color = "AcrylicBorder"}})
                        }
                    )
                }
            )
    	local RunService = game:GetService("RunService")
		local Logo_Background = Instance.new("ImageLabel")
		Logo_Background.Name = "ExbG"
		Logo_Background.Parent = m.Frame
		Logo_Background.Active = true
		Logo_Background.AnchorPoint = Vector2.new(0,0)
		Logo_Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Logo_Background.BackgroundTransparency = 1
		Logo_Background.Position = UDim2.new(0, 5, 0, 5)
		Logo_Background.Size = UDim2.new(0, 480, 0, 380)
		Logo_Background.ImageTransparency = 0.7
		Logo_Background.Image = ExLogoHub
        --[[RunService.RenderStepped:Connect(function()
		Logo_Background.Rotation = Logo_Background.Rotation + 1
			if Logo_Background.Rotation >= 360 then
				Logo_Background.Rotation = 0 
			end
		end)]]
            
            local n
            if f(e.Parent.Parent).UseAcrylic then
                n = j()
                n.Frame.Parent = m.Frame
                m.Model = n.Model
                m.AddParent = n.AddParent
                m.SetVisibility = n.SetVisibility
            end
            return m
        end
    end,
    function()
        local d, e, f, g, h = b(5)
        local i = e.Parent.Parent
        local j = f(i.Creator)
        local k = function()
            local k =
                j.New(
                "Part",
                {
                    Name = "Body",
                    Color = Color3.new(0, 0, 0),
                    Material = Enum.Material.Glass,
                    Size = Vector3.new(1, 1, 0),
                    Anchored = true,
                    CanCollide = false,
                    Locked = true,
                    CastShadow = false,
                    Transparency = 0.98
                },
                {j.New("SpecialMesh", {MeshType = Enum.MeshType.Brick, Offset = Vector3.new(0, 0, -1E-6)})}
            )
            return k
        end
        return k
    end,
    function()
        local d, e, f, g, h = b(6)
        local i, j = function(i, j, k, l, m)
                return (i - j) * (m - l) / (k - j) + l
            end, function(i, j)
                local k = game:GetService "Workspace".CurrentCamera:ScreenPointToRay(i.X, i.Y)
                return k.Origin + k.Direction * j
            end
        local k = function()
            local k = game:GetService "Workspace".CurrentCamera.ViewportSize.Y
            return i(k, 0, 2560, 8, 56)
        end
        return {j, k}
    end,
    [8] = function()
        local d, e, f, g, h = b(8)
        return {
            Close = "rbxassetid://9886659671",
            Min = "rbxassetid://9886659276",
            Max = "rbxassetid://9886659406",
            Restore = "rbxassetid://9886659001"
        }
    end,
    [9] = function()
        local d, e, f, g, h = b(9)
        local i = e.Parent.Parent
        local j, k = f(i.Packages.Flipper), f(i.Creator)
        local l, m = k.New, j.Spring.new
        return function(n, o, p)
            p = p or false
            local q = {}
            q.Title =
                l(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1),
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            q.HoverFrame =
                l(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ThemeTag = {BackgroundColor3 = "Hover"}},
                {l("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            q.Frame =
                l(
                "TextButton",
                {Size = UDim2.new(0, 0, 0, 32), Parent = o, ThemeTag = {BackgroundColor3 = "DialogButton"}},
                {
                    l("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    l(
                        "UIStroke",
                        {
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            Transparency = 0.65,
                            ThemeTag = {Color = "DialogButtonBorder"}
                        }
                    ),
                    q.HoverFrame,
                    q.Title
                }
            )
            local r, s = k.SpringMotor(1, q.HoverFrame, "BackgroundTransparency", p)
            k.AddSignal(
                q.Frame.MouseEnter,
                function()
                    s(0.97)
                end
            )
            k.AddSignal(
                q.Frame.MouseLeave,
                function()
                    s(1)
                end
            )
            k.AddSignal(
                q.Frame.MouseButton1Down,
                function()
                    s(1)
                end
            )
            k.AddSignal(
                q.Frame.MouseButton1Up,
                function()
                    s(0.97)
                end
            )
            return q
        end
    end,
    [10] = function()
        local d, e, f, g, h = b(10)
        local i, j, k, l =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            e.Parent.Parent
        local m, n = f(l.Packages.Flipper), f(l.Creator)
        local o, p, q, r = m.Spring.new, m.Instant.new, n.New, {Window = nil}
        function r.Init(s, t)
            r.Window = t
            return r
        end
        function r.Create(s)
            local t = {Buttons = 0}
            t.TintFrame =
                q(
                "TextButton",
                {
                    Text = "",
                    Size = UDim2.fromScale(1, 1),
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
                    BackgroundTransparency = 1,
                    Parent = r.Window.Root
                },
                {q("UICorner", {CornerRadius = UDim.new(0, 8)})}
            )
            local u, v = n.SpringMotor(1, t.TintFrame, "BackgroundTransparency", true)
            t.ButtonHolder =
                q(
                "Frame",
                {
                    Size = UDim2.new(1, -40, 1, -40),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    BackgroundTransparency = 1
                },
                {
                    q(
                        "UIListLayout",
                        {
                            Padding = UDim.new(0, 10),
                            FillDirection = Enum.FillDirection.Horizontal,
                            HorizontalAlignment = Enum.HorizontalAlignment.Center,
                            SortOrder = Enum.SortOrder.LayoutOrder
                        }
                    )
                }
            )
            t.ButtonHolderFrame =
                q(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 70),
                    Position = UDim2.new(0, 0, 1, -70),
                    ThemeTag = {BackgroundColor3 = "DialogHolder"}
                },
                {
                    q("Frame", {Size = UDim2.new(1, 0, 0, 1), ThemeTag = {BackgroundColor3 = "DialogHolderLine"}}),
                    t.ButtonHolder
                }
            )
            t.Title =
                q(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.SemiBold,
                        Enum.FontStyle.Normal
                    ),
                    Text = "Dialog",
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 22,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0, 22),
                    Position = UDim2.fromOffset(20, 25),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            t.Scale = q("UIScale", {Scale = 1})
            local w, x = n.SpringMotor(1.1, t.Scale, "Scale")
            t.Root =
                q(
                "CanvasGroup",
                {
                    Size = UDim2.fromOffset(300, 165),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    GroupTransparency = 1,
                    Parent = t.TintFrame,
                    ThemeTag = {BackgroundColor3 = "Dialog"}
                },
                {
                    q("UICorner", {CornerRadius = UDim.new(0, 8)}),
                    q("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "DialogBorder"}}),
                    t.Scale,
                    t.Title,
                    t.ButtonHolderFrame
                }
            )
            local y, z = n.SpringMotor(1, t.Root, "GroupTransparency")
            function t.Open(A)
                f(l).DialogOpen = true
                t.Scale.Scale = 1.1
                v(0.75)
                z(0)
                x(1)
            end

            function t.Close(A)
                f(l).DialogOpen = false
                v(1)
                z(1)
                x(1.1)
                t.Root.UIStroke:Destroy()
                task.wait(0.15)
                t.TintFrame:Destroy()
            end
            function t.Button(A, B, C)
                t.Buttons = t.Buttons + 1
                B = B or "Button"
                C = C or function()
                    end
                local D = f(l.Components.Button)("", t.ButtonHolder, true)
                D.Title.Text = B
                for E, F in next, t.ButtonHolder:GetChildren() do
                    if F:IsA "TextButton" then
                        F.Size = UDim2.new(1 / t.Buttons, -((t.Buttons - 1) * 10 / t.Buttons), 0, 32)
                    end
                end
                n.AddSignal(
                    D.Frame.MouseButton1Click,
                    function()
                        f(l):SafeCallback(C)
                        pcall(
                            function()
                                t:Close()
                            end
                        )
                    end
                )
                return D
            end
            return t
        end
        return r
    end,
    [11] = function()
        local d, e, f, g, h = b(11)
        local i = e.Parent.Parent
        local j, k = f(i.Packages.Flipper), f(i.Creator)
        local l, m = k.New, j.Spring.new
        return function(n, o, p, q)
            local r = {}
            r.TitleLabel =
                l(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.Medium,
                        Enum.FontStyle.Normal
                    ),
                    Text = n,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 13,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            r.DescLabel =
                l(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = o,
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 12,
                    TextWrapped = true,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 14),
                    ThemeTag = {TextColor3 = "SubText"}
                }
            )
            r.LabelHolder =
                l(
                "Frame",
                {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(10, 0),
                    Size = UDim2.new(1, -28, 0, 0)
                },
                {
                    l(
                        "UIListLayout",
                        {SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Center}
                    ),
                    l("UIPadding", {PaddingBottom = UDim.new(0, 13), PaddingTop = UDim.new(0, 13)}),
                    r.TitleLabel,
                    r.DescLabel
                }
            )
            r.Border =
                l(
                "UIStroke",
                {
                    Transparency = 0.5,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(0, 0, 0),
                    ThemeTag = {Color = "ElementBorder"}
                }
            )
            r.Frame =
                l(
                "TextButton",
                {
                    Size = UDim2.new(1, 0, 0, 0),
                    BackgroundTransparency = 0.89,
                    BackgroundColor3 = Color3.fromRGB(130, 130, 130),
                    Parent = p,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Text = "",
                    LayoutOrder = 7,
                    ThemeTag = {BackgroundColor3 = "Element", BackgroundTransparency = "ElementTransparency"}
                },
                {l("UICorner", {CornerRadius = UDim.new(0, 4)}), r.Border, r.LabelHolder}
            )
            function r.SetTitle(s, t)
                r.TitleLabel.Text = t
            end
            function r.SetDesc(s, t)
                if t == nil then
                    t = ""
                end
                if t == "" then
                    r.DescLabel.Visible = false
                else
                    r.DescLabel.Visible = true
                end
                r.DescLabel.Text = t
            end
            function r.Destroy(s)
                r.Frame:Destroy()
            end
            r:SetTitle(n)
            r:SetDesc(o)
            if q then
                local s, t, u =
                    i.Themes,
                    k.SpringMotor(
                        k.GetThemeProperty "ElementTransparency",
                        r.Frame,
                        "BackgroundTransparency",
                        false,
                        true
                    )
                k.AddSignal(
                    r.Frame.MouseEnter,
                    function()
                        u(k.GetThemeProperty "ElementTransparency" - k.GetThemeProperty "HoverChange")
                    end
                )
                k.AddSignal(
                    r.Frame.MouseLeave,
                    function()
                        u(k.GetThemeProperty "ElementTransparency")
                    end
                )
                k.AddSignal(
                    r.Frame.MouseButton1Down,
                    function()
                        u(k.GetThemeProperty "ElementTransparency" + k.GetThemeProperty "HoverChange")
                    end
                )
                k.AddSignal(
                    r.Frame.MouseButton1Up,
                    function()
                        u(k.GetThemeProperty "ElementTransparency" - k.GetThemeProperty "HoverChange")
                    end
                )
            end
            return r
        end
    end,
    [12] = function()
        local d, e, f, g, h = b(12)
        local i = e.Parent.Parent
        local j, k, l = f(i.Packages.Flipper), f(i.Creator), f(i.Acrylic)
        local m, n, o, p = j.Spring.new, j.Instant.new, k.New, {}
        function p.Init(q, r)
            p.Holder =
                o(
                "Frame",
                {
                    Position = UDim2.new(1, -30, 1, -30),
                    Size = UDim2.new(0, 310, 1, -30),
                    AnchorPoint = Vector2.new(1, 1),
                    BackgroundTransparency = 1,
                    Parent = r
                },
                {
                    o(
                        "UIListLayout",
                        {
                            HorizontalAlignment = Enum.HorizontalAlignment.Center,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalAlignment = Enum.VerticalAlignment.Bottom,
                            Padding = UDim.new(0, 20)
                        }
                    )
                }
            )
        end
        function p.New(q, r)
            r.Title = r.Title or "Title"
            r.Content = r.Content or "Content"
            r.SubContent = r.SubContent or ""
            r.Duration = r.Duration or nil
            r.Buttons = r.Buttons or {}
            local s = {Closed = false}
            s.AcrylicPaint = l.AcrylicPaint()
            s.Title =
                o(
                "TextLabel",
                {
                    Position = UDim2.new(0, 14, 0, 17),
                    Text = r.Title,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    TextTransparency = 0,
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextSize = 13,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -12, 0, 12),
                    TextWrapped = true,
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            s.ContentLabel =
                o(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = r.Content,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    TextWrapped = true,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            s.SubContentLabel =
                o(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = r.SubContent,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    TextWrapped = true,
                    ThemeTag = {TextColor3 = "SubText"}
                }
            )
            s.LabelHolder =
                o(
                "Frame",
                {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(14, 40),
                    Size = UDim2.new(1, -28, 0, 0)
                },
                {
                    o(
                        "UIListLayout",
                        {
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalAlignment = Enum.VerticalAlignment.Center,
                            Padding = UDim.new(0, 3)
                        }
                    ),
                    s.ContentLabel,
                    s.SubContentLabel
                }
            )
            s.CloseButton =
                o(
                "TextButton",
                {
                    Text = "",
                    Position = UDim2.new(1, -14, 0, 13),
                    Size = UDim2.fromOffset(20, 20),
                    AnchorPoint = Vector2.new(1, 0),
                    BackgroundTransparency = 1 --ปุ่ม ปิด
                },
                {
                    o(
                        "ImageLabel",
                        {
                            Image = f(e.Parent.Assets).Close,
                            Size = UDim2.fromOffset(16, 16),
                            Position = UDim2.fromScale(0.5, 0.5),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            BackgroundTransparency = 1,
                            ThemeTag = {ImageColor3 = "Text"}
                        }
                    )
                }
            )
            s.Root =
                o(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Position = UDim2.fromScale(1, 0)},
                {s.AcrylicPaint.Frame, s.Title, s.CloseButton, s.LabelHolder}
            )
            if r.Content == "" then
                s.ContentLabel.Visible = false
            end
            if r.SubContent == "" then
                s.SubContentLabel.Visible = false
            end
            s.Holder =
                o("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 200), Parent = p.Holder}, {s.Root})
            local t = j.GroupMotor.new {Scale = 1, Offset = 60}
            t:onStep(
                function(u)
                    s.Root.Position = UDim2.new(u.Scale, u.Offset, 0, 0)
                end
            )
            k.AddSignal(
                s.CloseButton.MouseButton1Click,
                function()
                    s:Close()
                end
            )
            function s.Open(u)
                local v = s.LabelHolder.AbsoluteSize.Y
                s.Holder.Size = UDim2.new(1, 0, 0, 58 + v)
                t:setGoal {Scale = m(0, {frequency = 5}), Offset = m(0, {frequency = 5})}
            end
            function s.Close(u)
                if not s.Closed then
                    s.Closed = true
                    task.spawn(
                        function()
                            t:setGoal {Scale = m(1, {frequency = 5}), Offset = m(60, {frequency = 5})}
                            task.wait(0.4)
                            if f(i).UseAcrylic then
                                s.AcrylicPaint.Model:Destroy()
                            end
                            s.Holder:Destroy()
                        end
                    )
                end
            end
            s:Open()
            if r.Duration then
                task.delay(
                    r.Duration,
                    function()
                        s:Close()
                    end
                )
            end
            return s
        end
        return p
    end,
    [13] = function()
        local d, e, f, g, h = b(13)
        local i = e.Parent.Parent
        local j = f(i.Creator)
        local k = j.New
        return function(l, m)
            local n = {}
            n.Layout = k("UIListLayout", {Padding = UDim.new(0, 5)})
            n.Container =
                k(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 26), Position = UDim2.fromOffset(0, 24), BackgroundTransparency = 1},
                {n.Layout}
            )
            n.Root =
                k(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 26), LayoutOrder = 7, Parent = m},
                {
                    k(
                        "TextLabel",
                        {
                            RichText = true,
                            Text = l,
                            TextTransparency = 0,
                            FontFace = Font.new(
                                "rbxassetid://12187365364",
                                Enum.FontWeight.SemiBold,
                                Enum.FontStyle.Normal
                            ),
                            TextSize = 18,
                            TextXAlignment = "Left",
                            TextYAlignment = "Center",
                            Size = UDim2.new(1, -16, 0, 18),
                            Position = UDim2.fromOffset(0, 2),
                            ThemeTag = {TextColor3 = "Text"}
                        }
                    ),
                    n.Container
                }
            )
            j.AddSignal(
                n.Layout:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    n.Container.Size = UDim2.new(1, 0, 0, n.Layout.AbsoluteContentSize.Y)
                    n.Root.Size = UDim2.new(1, 0, 0, n.Layout.AbsoluteContentSize.Y + 25)
                end
            )
            return n
        end
    end,
    [14] = function()
        local d, e, f, g, h = b(14)
        local i = e.Parent.Parent
        local j, k = f(i.Packages.Flipper), f(i.Creator)
        local l, m, n, o, p =
            k.New,
            j.Spring.new,
            j.Instant.new,
            i.Components,
            {Window = nil, Tabs = {}, Containers = {}, SelectedTab = 0, TabCount = 0}
        function p.Init(q, r)
            p.Window = r
            return p
        end
        function p.GetCurrentTabPos(q)
            local r, s = p.Window.TabHolder.AbsolutePosition.Y, p.Tabs[p.SelectedTab].Frame.AbsolutePosition.Y
            return s - r
        end
        function p.New(q, r, s, t)
            local u, v = f(i), p.Window
            local w = u.Elements
            p.TabCount = p.TabCount + 1
            local x, y = p.TabCount, {Selected = false, Name = r, Type = "Tab"}
            if u:GetIcon(s) then
                s = u:GetIcon(s)
            end
            if s == "" or nil then
                s = nil
            end
            y.Frame =
                l(
                "TextButton",
                {
                    Size = UDim2.new(1, 0, 0, 34),
                    BackgroundTransparency = 1,
                    Parent = t,
                    ThemeTag = {BackgroundColor3 = "Tab"}
                },
                {
                    l("UICorner", {CornerRadius = UDim.new(0, 6)}),
                    l(
                        "TextLabel",
                        {
                            AnchorPoint = Vector2.new(0, 0.5),
                            Position = s and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
                            Text = r,
                            RichText = true,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            TextTransparency = 0,
                            FontFace = Font.new(
                                "rbxasset://fonts/families/GothamSSm.json",
                                Enum.FontWeight.Regular,
                                Enum.FontStyle.Normal
                            ),
                            TextSize = 12,
                            TextXAlignment = "Left",
                            TextYAlignment = "Center",
                            Size = UDim2.new(1, -12, 1, 0),
                            BackgroundTransparency = 1,
                            ThemeTag = {TextColor3 = "Text"}
                        }
                    ),
                    l(
                        "ImageLabel",
                        {
                            AnchorPoint = Vector2.new(0, 0.5),
                            Size = UDim2.fromOffset(16, 16),
                            Position = UDim2.new(0, 8, 0.5, 0),
                            BackgroundTransparency = 1,
                            Image = s and s or nil,
                            ThemeTag = {ImageColor3 = "Text"}
                        }
                    )
                }
            )
            local z = l("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            y.ContainerFrame =
                l(
                "ScrollingFrame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    Parent = v.ContainerHolder,
                    Visible = false,
                    BottomImage = "rbxassetid://6889812791",
                    MidImage = "rbxassetid://6889812721",
                    TopImage = "rbxassetid://6276641225",
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ScrollBarImageTransparency = 0.95,
                    ScrollBarThickness = 3,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y
                },
                {
                    z,
                    l(
                        "UIPadding",
                        {
                            PaddingRight = UDim.new(0, 10),
                            PaddingLeft = UDim.new(0, 1),
                            PaddingTop = UDim.new(0, 1),
                            PaddingBottom = UDim.new(0, 1)
                        }
                    )
                }
            )
            k.AddSignal(
                z:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    y.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, z.AbsoluteContentSize.Y + 2)
                end
            )
            y.Motor, y.SetTransparency = k.SpringMotor(1, y.Frame, "BackgroundTransparency")
            k.AddSignal(
                y.Frame.MouseEnter,
                function()
                    y.SetTransparency(y.Selected and 0.85 or 0.89)
                end
            )
            k.AddSignal(
                y.Frame.MouseLeave,
                function()
                    y.SetTransparency(y.Selected and 0.89 or 1)
                end
            )
            k.AddSignal(
                y.Frame.MouseButton1Down,
                function()
                    y.SetTransparency(0.92)
                end
            )
            k.AddSignal(
                y.Frame.MouseButton1Up,
                function()
                    y.SetTransparency(y.Selected and 0.85 or 0.89)
                end
            )
            k.AddSignal(
                y.Frame.MouseButton1Click,
                function()
                    p:SelectTab(x)
                end
            )
            p.Containers[x] = y.ContainerFrame
            p.Tabs[x] = y
            y.Container = y.ContainerFrame
            y.ScrollFrame = y.Container
            function y.AddSection(A, B)
                local C, D = {Type = "Section"}, f(o.Section)(B, y.Container)
                C.Container = D.Container
                C.ScrollFrame = y.Container
                setmetatable(C, w)
                return C
            end
            setmetatable(y, w)
            return y
        end
        function p.SelectTab(q, r)
            local s = p.Window
            p.SelectedTab = r
            for t, u in next, p.Tabs do
                u.SetTransparency(1)
                u.Selected = false
            end
            p.Tabs[r].SetTransparency(0.89)
            p.Tabs[r].Selected = true
            s.TabDisplay.Text = p.Tabs[r].Name
            s.SelectorPosMotor:setGoal(m(p:GetCurrentTabPos(), {frequency = 6}))
            task.spawn(
                function()
                    s.ContainerPosMotor:setGoal(m(110, {frequency = 10}))
                    s.ContainerBackMotor:setGoal(m(1, {frequency = 10}))
                    task.wait(0.15)
                    for v, w in next, p.Containers do
                        w.Visible = false
                    end
                    p.Containers[r].Visible = true
                    s.ContainerPosMotor:setGoal(m(94, {frequency = 5}))
                    s.ContainerBackMotor:setGoal(m(0, {frequency = 8}))
                end
            )
        end
        return p
    end,
    [15] = function()
        local d, e, f, g, h = b(15)
        local i, j = game:GetService "TextService", e.Parent.Parent
        local k, l = f(j.Packages.Flipper), f(j.Creator)
        local m = l.New
        return function(n, o)
            o = o or false
            local p = {}
            p.Input =
                m(
                "TextBox",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1),
                    Position = UDim2.fromOffset(10, 0),
                    ThemeTag = {TextColor3 = "Text", PlaceholderColor3 = "SubText"}
                }
            )
            p.Container =
                m(
                "Frame",
                {
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Position = UDim2.new(0, 6, 0, 0),
                    Size = UDim2.new(1, -12, 1, 0)
                },
                {p.Input}
            )
            p.Indicator =
                m(
                "Frame",
                {
                    Size = UDim2.new(1, -4, 0, 1),
                    Position = UDim2.new(0, 2, 1, 0),
                    AnchorPoint = Vector2.new(0, 1),
                    BackgroundTransparency = o and 0.5 or 0,
                    ThemeTag = {BackgroundColor3 = o and "InputIndicator" or "DialogInputLine"}
                }
            )
            p.Frame =
                m(
                "Frame",
                {
                    Size = UDim2.new(0, 0, 0, 30),
                    BackgroundTransparency = o and 0.9 or 0,
                    Parent = n,
                    ThemeTag = {BackgroundColor3 = o and "Input" or "DialogInput"}
                },
                {
                    m("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    m(
                        "UIStroke",
                        {
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            Transparency = o and 0.5 or 0.65,
                            ThemeTag = {Color = o and "InElementBorder" or "DialogButtonBorder"}
                        }
                    ),
                    p.Indicator,
                    p.Container
                }
            )
            local q = function()
                local q, r = 2, p.Container.AbsoluteSize.X
                if not p.Input:IsFocused() or p.Input.TextBounds.X <= r - 2 * q then
                    p.Input.Position = UDim2.new(0, q, 0, 0)
                else
                    local s = p.Input.CursorPosition
                    if s ~= -1 then
                        local t = string.sub(p.Input.Text, 1, s - 1)
                        local u = i:GetTextSize(t, p.Input.TextSize, p.Input.Font, Vector2.new(math.huge, math.huge)).X
                        local v = p.Input.Position.X.Offset + u
                        if v < q then
                            p.Input.Position = UDim2.fromOffset(q - u, 0)
                        elseif v > r - q - 1 then
                            p.Input.Position = UDim2.fromOffset(r - u - q - 1, 0)
                        end
                    end
                end
            end
            task.spawn(q)
            l.AddSignal(p.Input:GetPropertyChangedSignal "Text", q)
            l.AddSignal(p.Input:GetPropertyChangedSignal "CursorPosition", q)
            l.AddSignal(
                p.Input.Focused,
                function()
                    q()
                    p.Indicator.Size = UDim2.new(1, -2, 0, 2)
                    p.Indicator.Position = UDim2.new(0, 1, 1, 0)
                    p.Indicator.BackgroundTransparency = 0
                    l.OverrideTag(p.Frame, {BackgroundColor3 = o and "InputFocused" or "DialogHolder"})
                    l.OverrideTag(p.Indicator, {BackgroundColor3 = "Accent"})
                end
            )
            l.AddSignal(
                p.Input.FocusLost,
                function()
                    q()
                    p.Indicator.Size = UDim2.new(1, -4, 0, 1)
                    p.Indicator.Position = UDim2.new(0, 2, 1, 0)
                    p.Indicator.BackgroundTransparency = 0.5
                    l.OverrideTag(p.Frame, {BackgroundColor3 = o and "Input" or "DialogInput"})
                    l.OverrideTag(p.Indicator, {BackgroundColor3 = o and "InputIndicator" or "DialogInputLine"})
                end
            )
            return p
        end
    end,
    [16] = function()
        local d, e, f, g, h = b(16)
        local i, j = e.Parent.Parent, f(e.Parent.Assets)
        local k, l = f(i.Creator), f(i.Packages.Flipper)
        local m, n = k.New, k.AddSignal
        return function(o)
            local p, q, r =
                {},
                f(i),
                function(p, q, r, s)
                    local t = {Callback = s or function()
                            end}
                    t.Frame =
                        m(
                        "TextButton",
                        {
                            Size = UDim2.new(0, 34, 1, -8),
                            AnchorPoint = Vector2.new(1, 0),
                            BackgroundTransparency = 1,
                            Parent = r,
                            Position = q,
                            Text = "",
                            ThemeTag = {BackgroundColor3 = "Text"}
                        },
                        {
                            m("UICorner", {CornerRadius = UDim.new(0, 7)}),
                            m(
                                "ImageLabel",
                                {
                                    Image = p,
                                    Size = UDim2.fromOffset(16, 16),
                                    Position = UDim2.fromScale(0.5, 0.5),
                                    AnchorPoint = Vector2.new(0.5, 0.5),
                                    BackgroundTransparency = 1,
                                    ImageTransparency = 1,
                                    Name = "Icon",
                                    ThemeTag = {ImageColor3 = "Text"}
                                }
                            )
                        }
                    )
                    local u, v = k.SpringMotor(1, t.Frame, "BackgroundTransparency")
                    n(
                        t.Frame.MouseEnter,
                        function()
                            v(0.94)
                        end
                    )
                    n(
                        t.Frame.MouseLeave,
                        function()
                            v(1, true)
                        end
                    )
                    n(
                        t.Frame.MouseButton1Down,
                        function()
                            v(0.96)
                        end
                    )
                    n(
                        t.Frame.MouseButton1Up,
                        function()
                            v(0.94)
                        end
                    )
                    n(t.Frame.MouseButton1Click, t.Callback)
                    t.SetCallback = function(w)
                        t.Callback = w
                    end
                    return t
                end
            p.Frame =
                m(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1, Parent = o.Parent},
                {
                    m(
                        "Frame",
                        {Size = UDim2.new(1, -16, 1, 0), Position = UDim2.new(0, 16, 0, 0), BackgroundTransparency = 1},
                        {
                            m(
                                "UIListLayout",
                                {
                                    Padding = UDim.new(0, 5),
                                    FillDirection = Enum.FillDirection.Horizontal,
                                    SortOrder = Enum.SortOrder.LayoutOrder
                                }
                            ),
                            m(
                                "TextLabel",
                                {
                                    RichText = true,
                                    Text = o.Title,
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Regular,
                                        Enum.FontStyle.Normal
                                    ),
                                    TextSize = 12,
                                    TextXAlignment = "Left",
                                    TextYAlignment = "Center",
                                    Size = UDim2.fromScale(0, 1),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    BackgroundTransparency = 1,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            ),
                            m(
                                "TextLabel",
                                {
                                    RichText = true,
                                    Text = o.SubTitle,
                                    TextTransparency = 0.4,
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Regular,
                                        Enum.FontStyle.Normal
                                    ),
                                    TextSize = 12,
                                    TextXAlignment = "Left",
                                    TextYAlignment = "Center",
                                    Size = UDim2.fromScale(0, 1),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    BackgroundTransparency = 1,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            )
                        }
                    ),
                    m(
                        "Frame",
                        {
                            BackgroundTransparency = 0.5,
                            Size = UDim2.new(1, 0, 0, 1),
                            Position = UDim2.new(0, 0, 1, 0),
                            ThemeTag = {BackgroundColor3 = "TitleBarLine"}
                        }
                    )
                }
            )
            p.CloseButton =
                r(
                j.Close,
                UDim2.new(1, -4, 0, 4),
                p.Frame,
                function()
                    q.Window:Minimize()
                end
            )
            p.MaxButton =
                r(
                j.Max,
                UDim2.new(1, -40, 0, 4),
                p.Frame,
                function()
                    o.Window.Maximize(not o.Window.Maximized)
                end
            )
            
local LogoHub = Instance.new("ImageLabel")
LogoHub.Name = "Ex"
LogoHub.Parent = p.Frame
LogoHub.AnchorPoint = Vector2.new(0.5, 0.5)
LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LogoHub.BackgroundTransparency = 1.000
LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
LogoHub.BorderSizePixel = 0
LogoHub.Position = UDim2.new(0.0500001274, 0, 0.5, 0)
LogoHub.Size = UDim2.new(0, 50, 0, 42)
LogoHub.Image = ExLogoHub

            p.MinButton =
                r(
                j.Min,
                UDim2.new(1, -80, 0, 4),
                p.Frame,
                function()
                    q.Window:Minimize()
                end
            )
            return p
        end
    end,
    [17] = function()
        local d, e, f, g, h = b(17)
        local i, j, k, l =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            e.Parent.Parent
        local m, n, o, p, q = f(l.Packages.Flipper), f(l.Creator), f(l.Acrylic), f(e.Parent.Assets), e.Parent
        local r, s, t = m.Spring.new, m.Instant.new, n.New
        return function(u)
            local v, w, x, y, z, A =
                f(l),
                {
                    Minimized = false,
                    Maximized = false,
                    Size = u.Size,
                    CurrentPos = 0,
                    Position = UDim2.fromOffset(
                        k.ViewportSize.X / 2 - u.Size.X.Offset / 2,
                        k.ViewportSize.Y / 2 - u.Size.Y.Offset / 2
                    )
                },
                false
            local B, C = false
            local D = false
            w.AcrylicPaint = o.AcrylicPaint()
            local E, F =
                t(
                    "Frame",
                    {
                        Size = UDim2.fromOffset(4, 0),
                        BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                        Position = UDim2.fromOffset(0, 17),
                        AnchorPoint = Vector2.new(0, 0.5),
                        ThemeTag = {BackgroundColor3 = "Accent"}
                    },
                    {t("UICorner", {CornerRadius = UDim.new(0, 2)})}
                ),
                t(
                    "Frame",
                    {Size = UDim2.fromOffset(20, 20), BackgroundTransparency = 1, Position = UDim2.new(1, -20, 1, -20)}
                )
            w.TabHolder =
                t(
                "ScrollingFrame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ScrollBarImageTransparency = 1,
                    ScrollBarThickness = 0,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y
                },
                {t("UIListLayout", {Padding = UDim.new(0, 4)})}
            )
            local I =
                t(
                "Frame",
                {
                    Size = UDim2.new(0, u.TabWidth, 1, -66),
                    Position = UDim2.new(0, 12, 0, 54),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true
                },
                {w.TabHolder, E}
            )
            w.TabDisplay =
                t(
                "TextLabel",
                {
                    RichText = true,
                    Text = "Tab",
                    TextTransparency = 0,
                    FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextSize = 28,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -16, 0, 28),
                    Position = UDim2.fromOffset(u.TabWidth + 26, 56),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            w.ContainerHolder =
                t(
                "CanvasGroup",
                {
                    Size = UDim2.new(1, -u.TabWidth - 32, 1, -102),
                    Position = UDim2.fromOffset(u.TabWidth + 26, 90),
                    BackgroundTransparency = 1
                }
            )
            w.Root =
                t(
                "Frame",
                {BackgroundTransparency = 1, Size = w.Size, Position = w.Position, Parent = u.Parent},
                {w.AcrylicPaint.Frame, w.TabDisplay, w.ContainerHolder, I, F}
            )
            w.TitleBar = f(e.Parent.TitleBar) {Title = u.Title, SubTitle = u.SubTitle, Parent = w.Root, Window = w}
            if f(l).UseAcrylic then
                w.AcrylicPaint.AddParent(w.Root)
            end
            local J, K =
                m.GroupMotor.new {X = w.Size.X.Offset, Y = w.Size.Y.Offset},
                m.GroupMotor.new {X = w.Position.X.Offset, Y = w.Position.Y.Offset}
            w.SelectorPosMotor = m.SingleMotor.new(17)
            w.SelectorSizeMotor = m.SingleMotor.new(0)
            w.ContainerBackMotor = m.SingleMotor.new(0)
            w.ContainerPosMotor = m.SingleMotor.new(94)
            J:onStep(
                function(L)
                    w.Root.Size = UDim2.new(0, L.X, 0, L.Y)
                end
            )
            K:onStep(
                function(L)
                    w.Root.Position = UDim2.new(0, L.X, 0, L.Y)
                end
            )
            local L, M = 0, 0
            w.SelectorPosMotor:onStep(
                function(N)
                    E.Position = UDim2.new(0, 0, 0, N + 17)
                    local O = tick()
                    local P = O - M
                    if L ~= nil then
                        w.SelectorSizeMotor:setGoal(r(math.abs(N - L) / (P * 60) + 16))
                        L = N
                    end
                    M = O
                end
            )
            w.SelectorSizeMotor:onStep(
                function(N)
                    E.Size = UDim2.new(0, 4, 0, N)
                end
            )
            w.ContainerBackMotor:onStep(
                function(N)
                    w.ContainerHolder.GroupTransparency = N
                end
            )
            w.ContainerPosMotor:onStep(
                function(N)
                    w.ContainerHolder.Position = UDim2.fromOffset(u.TabWidth + 26, N)
                end
            )
            local N, O
            w.Maximize = function(P, Q, R)
                w.Maximized = P
                w.TitleBar.MaxButton.Frame.Icon.Image = P and p.Restore or p.Max
                if P then
                    N = w.Size.X.Offset
                    O = w.Size.Y.Offset
                end
                local S, T = P and k.ViewportSize.X or N, P and k.ViewportSize.Y or O
                J:setGoal {
                    X = m[R and "Instant" or "Spring"].new(S, {frequency = 6}),
                    Y = m[R and "Instant" or "Spring"].new(T, {frequency = 6})
                }
                w.Size = UDim2.fromOffset(S, T)
                if not Q then
                    K:setGoal {
                        X = r(P and 0 or w.Position.X.Offset, {frequency = 6}),
                        Y = r(P and 0 or w.Position.Y.Offset, {frequency = 6})
                    }
                end
            end
            n.AddSignal(
                w.TitleBar.Frame.InputBegan,
                function(P)
                    if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
                        x = true
                        z = P.Position
                        A = w.Root.Position
                        if w.Maximized then
                            A =
                                UDim2.fromOffset(
                                j.X - j.X * (N - 100) / w.Root.AbsoluteSize.X,
                                j.Y - j.Y * O / w.Root.AbsoluteSize.Y
                            )
                        end
                        P.Changed:Connect(
                            function()
                                if P.UserInputState == Enum.UserInputState.End then
                                    x = false
                                end
                            end
                        )
                    end
                end
            )
            n.AddSignal(
                w.TitleBar.Frame.InputChanged,
                function(P)
                    if
                        P.UserInputType == Enum.UserInputType.MouseMovement or
                            P.UserInputType == Enum.UserInputType.Touch
                     then
                        y = P
                    end
                end
            )
            n.AddSignal(
                F.InputBegan,
                function(P)
                    if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
                        B = true
                        C = P.Position
                    end
                end
            )
            n.AddSignal(
                i.InputChanged,
                function(P)
                    if P == y and x then
                        local Q = P.Position - z
                        w.Position = UDim2.fromOffset(A.X.Offset + Q.X, A.Y.Offset + Q.Y)
                        K:setGoal {X = s(w.Position.X.Offset), Y = s(w.Position.Y.Offset)}
                        if w.Maximized then
                            w.Maximize(false, true, true)
                        end
                    end
                    if
                        (P.UserInputType == Enum.UserInputType.MouseMovement or
                            P.UserInputType == Enum.UserInputType.Touch) and
                            B
                     then
                        local Q, R = P.Position - C, w.Size
                        local S = Vector3.new(R.X.Offset, R.Y.Offset, 0) + Vector3.new(1, 1, 0) * Q
                        local T = Vector2.new(math.clamp(S.X, 470, 2048), math.clamp(S.Y, 380, 2048))
                        J:setGoal {X = m.Instant.new(T.X), Y = m.Instant.new(T.Y)}
                    end
                end
            )
            n.AddSignal(
                i.InputEnded,
                function(P)
                    if B == true or P.UserInputType == Enum.UserInputType.Touch then
                        B = false
                        w.Size = UDim2.fromOffset(J:getValue().X, J:getValue().Y)
                    end
                end
            )
            n.AddSignal(
                w.TabHolder.UIListLayout:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    w.TabHolder.CanvasSize = UDim2.new(0, 0, 0, w.TabHolder.UIListLayout.AbsoluteContentSize.Y)
                end
            )
            n.AddSignal(
                i.InputBegan,
                function(P)
                    if
                        type(v.MinimizeKeybind) == "table" and v.MinimizeKeybind.Type == "Keybind" and
                            not i:GetFocusedTextBox()
                     then
                        if P.KeyCode.Name == v.MinimizeKeybind.Value then
                            w:Minimize()
                        end
                    elseif P.KeyCode == v.MinimizeKey and not i:GetFocusedTextBox() then
                        w:Minimize()
                    end
                end
            )
            function w.Minimize(P)
                w.Minimized = not w.Minimized
                w.Root.Visible = not w.Minimized
                if not D then
                    D = true
                    local Q = v.MinimizeKeybind and v.MinimizeKeybind.Value or v.MinimizeKey.Name
                end
            end
            function w.Destroy(P)
                if f(l).UseAcrylic then
                    w.AcrylicPaint.Model:Destroy()
                end
                w.Root:Destroy()
            end
            local P = f(q.Dialog):Init(w)
            function w.Dialog(Q, R)
                local S = P:Create()
                S.Title.Text = R.Title
                local T =
                    t(
                    "TextLabel",
                    {
                        FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                        Text = R.Content,
                        TextColor3 = Color3.fromRGB(240, 240, 240),
                        TextSize = 14,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextYAlignment = Enum.TextYAlignment.Top,
                        Size = UDim2.new(1, -40, 1, 0),
                        Position = UDim2.fromOffset(20, 60),
                        BackgroundTransparency = 1,
                        Parent = S.Root,
                        ClipsDescendants = false,
                        ThemeTag = {TextColor3 = "Text"}
                    }
                )
                t(
                    "UISizeConstraint",
                    {MinSize = Vector2.new(300, 165), MaxSize = Vector2.new(620, math.huge), Parent = S.Root}
                )
                S.Root.Size = UDim2.fromOffset(T.TextBounds.X + 40, 165)
                if T.TextBounds.X + 40 > w.Size.X.Offset - 120 then
                    S.Root.Size = UDim2.fromOffset(w.Size.X.Offset - 120, 165)
                    T.TextWrapped = true
                    S.Root.Size = UDim2.fromOffset(w.Size.X.Offset - 120, T.TextBounds.Y + 150)
                end
                for U, V in next, R.Buttons do
                    S:Button(V.Title, V.Callback)
                end
                S:Open()
            end
            local Q = f(q.Tab):Init(w)
            function w.AddTab(R, S)
                return Q:New(S.Title, S.Icon, w.TabHolder)
            end
            function w.SelectTab(R, S)
                Q:SelectTab(1)
            end
            n.AddSignal(
                w.TabHolder:GetPropertyChangedSignal "CanvasPosition",
                function()
                    L = Q:GetCurrentTabPos() + 16
                    M = 0
                    w.SelectorPosMotor:setGoal(s(Q:GetCurrentTabPos()))
                end
            )
            return w
        end
    end,
    [18] = function()
        local d, e, f, g, h = b(18)
        local i = e.Parent
        local j, k, l =
            f(i.Themes),
            f(i.Packages.Flipper),
            {
                Registry = {},
                Signals = {},
                TransparencyMotors = {},
                DefaultProperties = {
                    ScreenGui = {ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling},
                    Frame = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    },
                    ScrollingFrame = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        ScrollBarImageColor3 = Color3.new(0, 0, 0)
                    },
                    TextLabel = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        BackgroundTransparency = 1,
                        TextSize = 14
                    },
                    TextButton = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        AutoButtonColor = false,
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        TextSize = 14
                    },
                    TextBox = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        ClearTextOnFocus = false,
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        TextSize = 14
                    },
                    ImageLabel = {
                        BackgroundTransparency = 1,
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    },
                    ImageButton = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        AutoButtonColor = false
                    },
                    CanvasGroup = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    }
                }
            }
        local m = function(m, n)
            if n.ThemeTag then
                l.AddThemeObject(m, n.ThemeTag)
            end
        end
        function l.AddSignal(n, o)
            table.insert(l.Signals, n:Connect(o))
        end
        function l.Disconnect()
            for n = #l.Signals, 1, -1 do
                local o = table.remove(l.Signals, n)
                o:Disconnect()
            end
        end
        function l.GetThemeProperty(n)
            if j[f(i).Theme][n] then
                return j[f(i).Theme][n]
            end
            return j.Dark[n]
        end
        function l.UpdateTheme()
            for n, o in next, l.Registry do
                for p, q in next, o.Properties do
                    n[p] = l.GetThemeProperty(q)
                end
            end
            for p, q in next, l.TransparencyMotors do
                q:setGoal(k.Instant.new(l.GetThemeProperty "ElementTransparency"))
            end
        end
        function l.AddThemeObject(n, o)
            local p = #l.Registry + 1
            local q = {Object = n, Properties = o, Idx = p}
            l.Registry[n] = q
            l.UpdateTheme()
            return n
        end
        function l.OverrideTag(n, o)
            l.Registry[n].Properties = o
            l.UpdateTheme()
        end
        function l.New(n, o, p)
            local q = Instance.new(n)
            for r, s in next, l.DefaultProperties[n] or {} do
                q[r] = s
            end
            for t, u in next, o or {} do
                if t ~= "ThemeTag" then
                    q[t] = u
                end
            end
            for v, w in next, p or {} do
                w.Parent = q
            end
            m(q, o)
            return q
        end
        function l.SpringMotor(n, o, p, q, t)
            q = q or false
            t = t or false
            local u = k.SingleMotor.new(n)
            u:onStep(
                function(v)
                    o[p] = v
                end
            )
            if t then
                table.insert(l.TransparencyMotors, u)
            end
            local v = function(v, w)
                w = w or false
                if not q then
                    if not w then
                        if p == "BackgroundTransparency" and f(i).DialogOpen then
                            return
                        end
                    end
                end
                u:setGoal(k.Spring.new(v, {frequency = 8}))
            end
            return u, v
        end
        return l
    end,
    [19] = function()
        local d, e, f, g, h = b(19)
        local i = {}
        for j, k in next, e:GetChildren() do
            table.insert(i, f(k))
        end
        return i
    end,
    [20] = function()
        local d, e, f, g, h = b(20)
        local i = e.Parent.Parent
        local j = f(i.Creator)
        local k, l, m = j.New, i.Components, {}
        m.__index = m
        m.__type = "Button"
        function m.New(n, o)
            assert(o.Title, "Button - Missing Title")
            o.Callback = o.Callback or function()
                end
            local p = f(l.Element)(o.Title, o.Description, n.Container, true)
            local q =
                k(
                "ImageLabel",
                {
                    Image = "rbxassetid://10709791437",
                    Size = UDim2.fromOffset(16, 16),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    BackgroundTransparency = 1,
                    Parent = p.Frame,
                    ThemeTag = {ImageColor3 = "Text"}
                }
            )
            j.AddSignal(
                p.Frame.MouseButton1Click,
                function()
                    n.Library:SafeCallback(o.Callback)
                end
            )
            return p
        end
        return m
    end,
    [21] = function()
        local d, e, f, g, h = b(21)
        local i, j, k, l =
            game:GetService "UserInputService",
            game:GetService "TouchInputService",
            game:GetService "RunService",
            game:GetService "Players"
        local m, n = k.RenderStepped, l.LocalPlayer
        local o, p = n:GetMouse(), e.Parent.Parent
        local q = f(p.Creator)
        local t, u, v = q.New, p.Components, {}
        v.__index = v
        v.__type = "Colorpicker"
        function v.New(w, x, y)
            local z = w.Library
            assert(y.Title, "Colorpicker - Missing Title")
            assert(y.Default, "AddColorPicker: Missing default value.")
            local A = {
                Value = y.Default,
                Transparency = y.Transparency or 0,
                Type = "Colorpicker",
                Title = type(y.Title) == "string" and y.Title or "Colorpicker",
                Callback = y.Callback or function(A)
                    end
            }
            function A.SetHSVFromRGB(B, C)
                local D, E, F = Color3.toHSV(C)
                A.Hue = D
                A.Sat = E
                A.Vib = F
            end
            A:SetHSVFromRGB(A.Value)
            local B = f(u.Element)(y.Title, y.Description, w.Container, true)
            A.SetTitle = B.SetTitle
            A.SetDesc = B.SetDesc
            local C =
                t(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundColor3 = A.Value, Parent = B.Frame},
                {t("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            local c, W =
                t(
                    "ImageLabel",
                    {
                        Size = UDim2.fromOffset(26, 26),
                        Position = UDim2.new(1, -10, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        Parent = B.Frame,
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = UDim2.fromOffset(40, 40)
                    },
                    {t("UICorner", {CornerRadius = UDim.new(0, 4)}), C}
                ),
                function()
                    local D = f(u.Dialog):Create()
                    D.Title.Text = A.Title
                    D.Root.Size = UDim2.fromOffset(430, 330)
                    local E, F, I, J, K, L =
                        A.Hue,
                        A.Sat,
                        A.Vib,
                        A.Transparency,
                        function()
                            local E = f(u.Textbox)()
                            E.Frame.Parent = D.Root
                            E.Frame.Size = UDim2.new(0, 90, 0, 32)
                            return E
                        end,
                        function(E, F)
                            return t(
                                "TextLabel",
                                {
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Medium,
                                        Enum.FontStyle.Normal
                                    ),
                                    Text = E,
                                    TextColor3 = Color3.fromRGB(240, 240, 240),
                                    TextSize = 13,
                                    TextXAlignment = Enum.TextXAlignment.Left,
                                    Size = UDim2.new(1, 0, 0, 32),
                                    Position = F,
                                    BackgroundTransparency = 1,
                                    Parent = D.Root,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            )
                        end
                    local M, N =
                        function()
                            local M = Color3.fromHSV(E, F, I)
                            return {R = math.floor(M.r * 255), G = math.floor(M.g * 255), B = math.floor(M.b * 255)}
                        end,
                        t(
                            "ImageLabel",
                            {
                                Size = UDim2.new(0, 18, 0, 18),
                                ScaleType = Enum.ScaleType.Fit,
                                AnchorPoint = Vector2.new(0.5, 0.5),
                                BackgroundTransparency = 1,
                                Image = "http://www.roblox.com/asset/?id=4805639000"
                            }
                        )
                    local O, P =
                        t(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(180, 160),
                                Position = UDim2.fromOffset(20, 55),
                                Image = "rbxassetid://4155801252",
                                BackgroundColor3 = A.Value,
                                BackgroundTransparency = 0,
                                Parent = D.Root
                            },
                            {t("UICorner", {CornerRadius = UDim.new(0, 4)}), N}
                        ),
                        t(
                            "Frame",
                            {
                                BackgroundColor3 = A.Value,
                                Size = UDim2.fromScale(1, 1),
                                BackgroundTransparency = A.Transparency
                            },
                            {t("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local Q, R =
                        t(
                            "ImageLabel",
                            {
                                Image = "http://www.roblox.com/asset/?id=14204231522",
                                ImageTransparency = 0.45,
                                ScaleType = Enum.ScaleType.Tile,
                                TileSize = UDim2.fromOffset(40, 40),
                                BackgroundTransparency = 1,
                                Position = UDim2.fromOffset(112, 220),
                                Size = UDim2.fromOffset(88, 24),
                                Parent = D.Root
                            },
                            {
                                t("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                t("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                P
                            }
                        ),
                        t(
                            "Frame",
                            {BackgroundColor3 = A.Value, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0},
                            {t("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local S, T =
                        t(
                            "ImageLabel",
                            {
                                Image = "http://www.roblox.com/asset/?id=14204231522",
                                ImageTransparency = 0.45,
                                ScaleType = Enum.ScaleType.Tile,
                                TileSize = UDim2.fromOffset(40, 40),
                                BackgroundTransparency = 1,
                                Position = UDim2.fromOffset(20, 220),
                                Size = UDim2.fromOffset(88, 24),
                                Parent = D.Root
                            },
                            {
                                t("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                t("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                R
                            }
                        ),
                        {}
                    for U = 0, 1, 0.1 do
                        table.insert(T, ColorSequenceKeypoint.new(U, Color3.fromHSV(U, 1, 1)))
                    end
                    local U, V =
                        t("UIGradient", {Color = ColorSequence.new(T), Rotation = 90}),
                        t(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                    local X, Y, Z =
                        t(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = V,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        ),
                        t(
                            "Frame",
                            {Size = UDim2.fromOffset(12, 190), Position = UDim2.fromOffset(210, 55), Parent = D.Root},
                            {t("UICorner", {CornerRadius = UDim.new(1, 0)}), U, V}
                        ),
                        K()
                    Z.Frame.Position = UDim2.fromOffset(y.Transparency and 260 or 240, 55)
                    L("Hex", UDim2.fromOffset(y.Transparency and 360 or 340, 55))
                    local _ = K()
                    _.Frame.Position = UDim2.fromOffset(y.Transparency and 260 or 240, 95)
                    L("Red", UDim2.fromOffset(y.Transparency and 360 or 340, 95))
                    local a0 = K()
                    a0.Frame.Position = UDim2.fromOffset(y.Transparency and 260 or 240, 135)
                    L("Green", UDim2.fromOffset(y.Transparency and 360 or 340, 135))
                    local a1 = K()
                    a1.Frame.Position = UDim2.fromOffset(y.Transparency and 260 or 240, 175)
                    L("Blue", UDim2.fromOffset(y.Transparency and 360 or 340, 175))
                    local a2
                    if y.Transparency then
                        a2 = K()
                        a2.Frame.Position = UDim2.fromOffset(260, 215)
                        L("Alpha", UDim2.fromOffset(360, 215))
                    end
                    local G, c, W
                    if y.Transparency then
                        local a3 =
                            t(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                        c =
                            t(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = a3,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        )
                        W =
                            t(
                            "Frame",
                            {Size = UDim2.fromScale(1, 1)},
                            {
                                t(
                                    "UIGradient",
                                    {
                                        Transparency = NumberSequence.new {
                                            NumberSequenceKeypoint.new(0, 0),
                                            NumberSequenceKeypoint.new(1, 1)
                                        },
                                        Rotation = 270
                                    }
                                ),
                                t("UICorner", {CornerRadius = UDim.new(1, 0)})
                            }
                        )
                        G =
                            t(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(12, 190),
                                Position = UDim2.fromOffset(230, 55),
                                Parent = D.Root,
                                BackgroundTransparency = 1
                            },
                            {
                                t("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                t(
                                    "ImageLabel",
                                    {
                                        Image = "http://www.roblox.com/asset/?id=14204231522",
                                        ImageTransparency = 0.45,
                                        ScaleType = Enum.ScaleType.Tile,
                                        TileSize = UDim2.fromOffset(40, 40),
                                        BackgroundTransparency = 1,
                                        Size = UDim2.fromScale(1, 1),
                                        Parent = D.Root
                                    },
                                    {t("UICorner", {CornerRadius = UDim.new(1, 0)})}
                                ),
                                W,
                                a3
                            }
                        )
                    end
                    local a3 = function()
                        O.BackgroundColor3 = Color3.fromHSV(E, 1, 1)
                        X.Position = UDim2.new(0, -1, E, -6)
                        N.Position = UDim2.new(F, 0, 1 - I, 0)
                        R.BackgroundColor3 = Color3.fromHSV(E, F, I)
                        Z.Input.Text = "#" .. Color3.fromHSV(E, F, I):ToHex()
                        _.Input.Text = M().R
                        a0.Input.Text = M().G
                        a1.Input.Text = M().B
                        if y.Transparency then
                            W.BackgroundColor3 = Color3.fromHSV(E, F, I)
                            R.BackgroundTransparency = J
                            c.Position = UDim2.new(0, -1, 1 - J, -6)
                            a2.Input.Text = f(p):Round((1 - J) * 100, 0) .. "%"
                        end
                    end
                    q.AddSignal(
                        Z.Input.FocusLost,
                        function(a4)
                            if a4 then
                                local a5, a6 = pcall(Color3.fromHex, Z.Input.Text)
                                if a5 and typeof(a6) == "Color3" then
                                    E, F, I = Color3.toHSV(a6)
                                end
                            end
                            a3()
                        end
                    )
                    q.AddSignal(
                        _.Input.FocusLost,
                        function(a4)
                            if a4 then
                                local a5 = M()
                                local a6, a7 = pcall(Color3.fromRGB, _.Input.Text, a5.G, a5.B)
                                if a6 and typeof(a7) == "Color3" then
                                    if tonumber(_.Input.Text) <= 255 then
                                        E, F, I = Color3.toHSV(a7)
                                    end
                                end
                            end
                            a3()
                        end
                    )
                    q.AddSignal(
                        a0.Input.FocusLost,
                        function(a4)
                            if a4 then
                                local a5 = M()
                                local a6, a7 = pcall(Color3.fromRGB, a5.R, a0.Input.Text, a5.B)
                                if a6 and typeof(a7) == "Color3" then
                                    if tonumber(a0.Input.Text) <= 255 then
                                        E, F, I = Color3.toHSV(a7)
                                    end
                                end
                            end
                            a3()
                        end
                    )
                    q.AddSignal(
                        a1.Input.FocusLost,
                        function(a4)
                            if a4 then
                                local a5 = M()
                                local a6, a7 = pcall(Color3.fromRGB, a5.R, a5.G, a1.Input.Text)
                                if a6 and typeof(a7) == "Color3" then
                                    if tonumber(a1.Input.Text) <= 255 then
                                        E, F, I = Color3.toHSV(a7)
                                    end
                                end
                            end
                            a3()
                        end
                    )
                    if y.Transparency then
                        q.AddSignal(
                            a2.Input.FocusLost,
                            function(a4)
                                if a4 then
                                    pcall(
                                        function()
                                            local a5 = tonumber(a2.Input.Text)
                                            if a5 >= 0 and a5 <= 100 then
                                                J = 1 - a5 * 0.01
                                            end
                                        end
                                    )
                                end
                                a3()
                            end
                        )
                    end
                    q.AddSignal(
                        O.InputBegan,
                        function(a4)
                            if
                                a4.UserInputType == Enum.UserInputType.MouseButton1 or
                                    a4.UserInputType == Enum.UserInputType.Touch
                             then
                                while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                    local a5 = O.AbsolutePosition.X
                                    local a6 = a5 + O.AbsoluteSize.X
                                    local a7, a8 = math.clamp(o.X, a5, a6), O.AbsolutePosition.Y
                                    local a9 = a8 + O.AbsoluteSize.Y
                                    local aa = math.clamp(o.Y, a8, a9)
                                    F = (a7 - a5) / (a6 - a5)
                                    I = 1 - (aa - a8) / (a9 - a8)
                                    a3()
                                    m:Wait()
                                end
                            end
                        end
                    )
                    q.AddSignal(
                        Y.InputBegan,
                        function(a4)
                            if
                                a4.UserInputType == Enum.UserInputType.MouseButton1 or
                                    a4.UserInputType == Enum.UserInputType.Touch
                             then
                                while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                    local a5 = Y.AbsolutePosition.Y
                                    local a6 = a5 + Y.AbsoluteSize.Y
                                    local a7 = math.clamp(o.Y, a5, a6)
                                    E = (a7 - a5) / (a6 - a5)
                                    a3()
                                    m:Wait()
                                end
                            end
                        end
                    )
                    if y.Transparency then
                        q.AddSignal(
                            G.InputBegan,
                            function(a4)
                                if a4.UserInputType == Enum.UserInputType.MouseButton1 then
                                    while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                        local a5 = G.AbsolutePosition.Y
                                        local a6 = a5 + G.AbsoluteSize.Y
                                        local a7 = math.clamp(o.Y, a5, a6)
                                        J = 1 - (a7 - a5) / (a6 - a5)
                                        a3()
                                        m:Wait()
                                    end
                                end
                            end
                        )
                    end
                    a3()
                    D:Button(
                        "Done",
                        function()
                            A:SetValue({E, F, I}, J)
                        end
                    )
                    D:Button "Cancel"
                    D:Open()
                end
            function A.Display(a3)
                A.Value = Color3.fromHSV(A.Hue, A.Sat, A.Vib)
                C.BackgroundColor3 = A.Value
                C.BackgroundTransparency = A.Transparency
                v.Library:SafeCallback(A.Callback, A.Value)
                v.Library:SafeCallback(A.Changed, A.Value)
            end
            function A.SetValue(a3, a4, a5)
                local a6 = Color3.fromHSV(a4[1], a4[2], a4[3])
                A.Transparency = a5 or 0
                A:SetHSVFromRGB(a6)
                A:Display()
            end
            function A.SetValueRGB(a3, a4, a5)
                A.Transparency = a5 or 0
                A:SetHSVFromRGB(a4)
                A:Display()
            end
            function A.OnChanged(a3, a4)
                A.Changed = a4
                a4(A.Value)
            end
            function A.Destroy(a3)
                B:Destroy()
                z.Options[x] = nil
            end
            q.AddSignal(
                B.Frame.MouseButton1Click,
                function()
                    W()
                end
            )
            A:Display()
            z.Options[x] = A
            return A
        end
        return v
    end,
    [22] = function()
        local c, W, a3, a4, a5 = b(22)
        local a6, a7, a8, a9, aa =
            game:GetService "TweenService",
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            W.Parent.Parent
        local d, e = a3(aa.Creator), a3(aa.Packages.Flipper)
        local f, g, h = d.New, aa.Components, {}
        h.__index = h
        h.__type = "Dropdown"
        function h.New(i, j, k)
            local l, m, n =
                i.Library,
                {
                    Values = k.Values,
                    Value = k.Default,
                    Multi = k.Multi,
                    Buttons = {},
                    Opened = false,
                    Type = "Dropdown",
                    Callback = k.Callback or function()
                        end
                },
                a3(g.Element)(k.Title, k.Description, i.Container, false)
            n.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            m.SetTitle = n.SetTitle
            m.SetDesc = n.SetDesc
            local o, p =
                f(
                    "TextLabel",
                    {
                        FontFace = Font.new(
                            "rbxasset://fonts/families/GothamSSm.json",
                            Enum.FontWeight.Regular,
                            Enum.FontStyle.Normal
                        ),
                        Text = "Value",
                        TextColor3 = Color3.fromRGB(240, 240, 240),
                        TextSize = 13,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Size = UDim2.new(1, -30, 0, 14),
                        Position = UDim2.new(0, 8, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                        BackgroundTransparency = 1,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        ThemeTag = {TextColor3 = "Text"}
                    }
                ),
                f(
                    "ImageLabel",
                    {
                        Image = "rbxassetid://10709790948",
                        Size = UDim2.fromOffset(16, 16),
                        AnchorPoint = Vector2.new(1, 0.5),
                        Position = UDim2.new(1, -8, 0.5, 0),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "SubText"}
                    }
                )
            local q, t =
                f(
                    "TextButton",
                    {
                        Size = UDim2.fromOffset(160, 30),
                        Position = UDim2.new(1, -10, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        BackgroundTransparency = 0.9,
                        Parent = n.Frame,
                        ThemeTag = {BackgroundColor3 = "DropdownFrame"}
                    },
                    {
                        f("UICorner", {CornerRadius = UDim.new(0, 5)}),
                        f(
                            "UIStroke",
                            {
                                Transparency = 0.5,
                                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                                ThemeTag = {Color = "InElementBorder"}
                            }
                        ),
                        p,
                        o
                    }
                ),
                f("UIListLayout", {Padding = UDim.new(0, 3)})
            local u =
                f(
                "ScrollingFrame",
                {
                    Size = UDim2.new(1, -5, 1, -10),
                    Position = UDim2.fromOffset(5, 5),
                    BackgroundTransparency = 1,
                    BottomImage = "rbxassetid://6889812791",
                    MidImage = "rbxassetid://6889812721",
                    TopImage = "rbxassetid://6276641225",
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ScrollBarImageTransparency = 0.95,
                    ScrollBarThickness = 4,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0)
                },
                {t}
            )
            local v =
                f(
                "Frame",
                {Size = UDim2.fromScale(1, 0.6), ThemeTag = {BackgroundColor3 = "DropdownHolder"}},
                {
                    u,
                    f("UICorner", {CornerRadius = UDim.new(0, 7)}),
                    f(
                        "UIStroke",
                        {ApplyStrokeMode = Enum.ApplyStrokeMode.Border, ThemeTag = {Color = "DropdownBorder"}}
                    ),
                    f(
                        "ImageLabel",
                        {
                            BackgroundTransparency = 1,
                            Image = "http://www.roblox.com/asset/?id=5554236805",
                            ScaleType = Enum.ScaleType.Slice,
                            SliceCenter = Rect.new(23, 23, 277, 277),
                            Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
                            Position = UDim2.fromOffset(-15, -15),
                            ImageColor3 = Color3.fromRGB(0, 0, 0),
                            ImageTransparency = 0.1
                        }
                    )
                }
            )
            local w =
                f(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.fromOffset(170, 300), Parent = i.Library.GUI, Visible = false},
                {v, f("UISizeConstraint", {MinSize = Vector2.new(170, 0)})}
            )
            table.insert(l.OpenFrames, w)
            local x, y = function()
                    local x = 0
                    if a9.ViewportSize.Y - q.AbsolutePosition.Y < w.AbsoluteSize.Y - 5 then
                        x = w.AbsoluteSize.Y - 5 - (a9.ViewportSize.Y - q.AbsolutePosition.Y) + 40
                    end
                    w.Position = UDim2.fromOffset(q.AbsolutePosition.X - 1, q.AbsolutePosition.Y - 5 - x)
                end, 0
            local z, A = function()
                    if #m.Values > 10 then
                        w.Size = UDim2.fromOffset(y, 392)
                    else
                        w.Size = UDim2.fromOffset(y, t.AbsoluteContentSize.Y + 10)
                    end
                end, function()
                    u.CanvasSize = UDim2.fromOffset(0, t.AbsoluteContentSize.Y)
                end
            x()
            z()
            d.AddSignal(q:GetPropertyChangedSignal "AbsolutePosition", x)
            d.AddSignal(
                q.MouseButton1Click,
                function()
                    m:Open()
                end
            )
            d.AddSignal(
                a7.InputBegan,
                function(B)
                    if B.UserInputType == Enum.UserInputType.MouseButton1 or B.UserInputType == Enum.UserInputType.Touch then
                        local C, D = v.AbsolutePosition, v.AbsoluteSize
                        if a8.X < C.X or a8.X > C.X + D.X or a8.Y < C.Y - 20 - 1 or a8.Y > C.Y + D.Y then
                            m:Close()
                        end
                    end
                end
            )
            local B = i.ScrollFrame
            function m.Open(C)
                m.Opened = true
                B.ScrollingEnabled = false
                w.Visible = true
                a6:Create(
                    v,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.fromScale(1, 1)}
                ):Play()
            end
            function m.Close(C)
                m.Opened = false
                B.ScrollingEnabled = true
                v.Size = UDim2.fromScale(1, 0.6)
                w.Visible = false
            end
            function m.Display(C)
                local D, E = m.Values, ""
                if k.Multi then
                    for F, I in next, D do
                        if m.Value[I] then
                            E = E .. I .. ", "
                        end
                    end
                    E = E:sub(1, #E - 2)
                else
                    E = m.Value or ""
                end
                o.Text = E == "" and "--" or E
            end
            function m.GetActiveValues(C)
                if k.Multi then
                    local D = {}
                    for E, F in next, m.Value do
                        table.insert(D, E)
                    end
                    return D
                else
                    return m.Value and 1 or 0
                end
            end
            function m.BuildDropdownList(C)
                local D, E = m.Values, {}
                for F, I in next, u:GetChildren() do
                    if not I:IsA "UIListLayout" then
                        I:Destroy()
                    end
                end
                local J = 0
                for K, L in next, D do
                    local M = {}
                    J = J + 1
                    local N, O =
                        f(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(4, 14),
                                BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                                Position = UDim2.fromOffset(-1, 16),
                                AnchorPoint = Vector2.new(0, 0.5),
                                ThemeTag = {BackgroundColor3 = "Accent"}
                            },
                            {f("UICorner", {CornerRadius = UDim.new(0, 2)})}
                        ),
                        f(
                            "TextLabel",
                            {
                                FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                                Text = L,
                                TextColor3 = Color3.fromRGB(200, 200, 200),
                                TextSize = 13,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                BackgroundTransparency = 1,
                                Size = UDim2.fromScale(1, 1),
                                Position = UDim2.fromOffset(10, 0),
                                Name = "ButtonLabel",
                                ThemeTag = {TextColor3 = "Text"}
                            }
                        )
                    local P, Q =
                        f(
                        "TextButton",
                        {
                            Size = UDim2.new(1, -5, 0, 32),
                            BackgroundTransparency = 1,
                            ZIndex = 23,
                            Text = "",
                            Parent = u,
                            ThemeTag = {BackgroundColor3 = "DropdownOption"}
                        },
                        {N, O, f("UICorner", {CornerRadius = UDim.new(0, 6)})}
                    )
                    if k.Multi then
                        Q = m.Value[L]
                    else
                        Q = m.Value == L
                    end
                    local R, S = d.SpringMotor(1, P, "BackgroundTransparency")
                    local T, U = d.SpringMotor(1, N, "BackgroundTransparency")
                    local V = e.SingleMotor.new(6)
                    V:onStep(
                        function(X)
                            N.Size = UDim2.new(0, 4, 0, X)
                        end
                    )
                    d.AddSignal(
                        P.MouseEnter,
                        function()
                            S(Q and 0.85 or 0.89)
                        end
                    )
                    d.AddSignal(
                        P.MouseLeave,
                        function()
                            S(Q and 0.89 or 1)
                        end
                    )
                    d.AddSignal(
                        P.MouseButton1Down,
                        function()
                            S(0.92)
                        end
                    )
                    d.AddSignal(
                        P.MouseButton1Up,
                        function()
                            S(Q and 0.85 or 0.89)
                        end
                    )
                    function M.UpdateButton(X)
                        if k.Multi then
                            Q = m.Value[L]
                            if Q then
                                S(0.89)
                            end
                        else
                            Q = m.Value == L
                            S(Q and 0.89 or 1)
                        end
                        V:setGoal(e.Spring.new(Q and 14 or 6, {frequency = 6}))
                        U(Q and 0 or 1)
                    end
                    O.InputBegan:Connect(
                        function(X)
                            if
                                X.UserInputType == Enum.UserInputType.MouseButton1 or
                                    X.UserInputType == Enum.UserInputType.Touch
                             then
                                local Y = not Q
                                if m:GetActiveValues() == 1 and not Y and not k.AllowNull then
                                else
                                    if k.Multi then
                                        Q = Y
                                        m.Value[L] = Q and true or nil
                                    else
                                        Q = Y
                                        m.Value = Q and L or nil
                                        for Z, _ in next, E do
                                            _:UpdateButton()
                                        end
                                    end
                                    M:UpdateButton()
                                    m:Display()
                                    l:SafeCallback(m.Callback, m.Value)
                                    l:SafeCallback(m.Changed, m.Value)
                                end
                            end
                        end
                    )
                    M:UpdateButton()
                    m:Display()
                    E[P] = M
                end
                y = 0
                for M, N in next, E do
                    if M.ButtonLabel then
                        if M.ButtonLabel.TextBounds.X > y then
                            y = M.ButtonLabel.TextBounds.X
                        end
                    end
                end
                y = y + 30
                A()
                z()
            end
            function m.SetValues(C, D)
                if D then
                    m.Values = D
                end
                m:BuildDropdownList()
            end
            function m.OnChanged(C, D)
                m.Changed = D
                D(m.Value)
            end
            function m.SetValue(C, D)
                if m.Multi then
                    local E = {}
                    for F, I in next, D do
                        if table.find(m.Values, F) then
                            E[F] = true
                        end
                    end
                    m.Value = E
                else
                    if not D then
                        m.Value = nil
                    elseif table.find(m.Values, D) then
                        m.Value = D
                    end
                end
                m:BuildDropdownList()
                l:SafeCallback(m.Callback, m.Value)
                l:SafeCallback(m.Changed, m.Value)
            end
            function m.Destroy(C)
                n:Destroy()
                l.Options[j] = nil
            end
            m:BuildDropdownList()
            m:Display()
            local C = {}
            if type(k.Default) == "string" then
                local D = table.find(m.Values, k.Default)
                if D then
                    table.insert(C, D)
                end
            elseif type(k.Default) == "table" then
                for D, E in next, k.Default do
                    local F = table.find(m.Values, E)
                    if F then
                        table.insert(C, F)
                    end
                end
            elseif type(k.Default) == "number" and m.Values[k.Default] ~= nil then
                table.insert(C, k.Default)
            end
            if next(C) then
                for D = 1, #C do
                    local E = C[D]
                    if k.Multi then
                        m.Value[m.Values[E]] = true
                    else
                        m.Value = m.Values[E]
                    end
                    if not k.Multi then
                        break
                    end
                end
                m:BuildDropdownList()
                m:Display()
            end
            l.Options[j] = m
            return m
        end
        return h
    end,
    [23] = function()
        local c, W, a3, a4, a5 = b(23)
        local a6 = W.Parent.Parent
        local a7 = a3(a6.Creator)
        local a8, a9, aa, d = a7.New, a7.AddSignal, a6.Components, {}
        d.__index = d
        d.__type = "Input"
        function d.New(e, f, g)
            local h = e.Library
            assert(g.Title, "Input - Missing Title")
            g.Callback = g.Callback or function()
                end
            local i, j =
                {
                    Value = g.Default or "",
                    Numeric = g.Numeric or false,
                    Finished = g.Finished or false,
                    Callback = g.Callback or function(i)
                        end,
                    Type = "Input"
                },
                a3(aa.Element)(g.Title, g.Description, e.Container, false)
            i.SetTitle = j.SetTitle
            i.SetDesc = j.SetDesc
            local k = a3(aa.Textbox)(j.Frame, true)
            k.Frame.Position = UDim2.new(1, -10, 0.5, 0)
            k.Frame.AnchorPoint = Vector2.new(1, 0.5)
            k.Frame.Size = UDim2.fromOffset(160, 30)
            k.Input.Text = g.Default or ""
            k.Input.PlaceholderText = g.Placeholder or ""
            local l = k.Input
            function i.SetValue(m, n)
                if g.MaxLength and #n > g.MaxLength then
                    n = n:sub(1, g.MaxLength)
                end
                if i.Numeric then
                    if not tonumber(n) and n:len() > 0 then
                        n = i.Value
                    end
                end
                i.Value = n
                l.Text = n
                h:SafeCallback(i.Callback, i.Value)
                h:SafeCallback(i.Changed, i.Value)
            end
            if i.Finished then
                a9(
                    l.FocusLost,
                    function(m)
                        if not m then
                            return
                        end
                        i:SetValue(l.Text)
                    end
                )
            else
                a9(
                    l:GetPropertyChangedSignal "Text",
                    function()
                        i:SetValue(l.Text)
                    end
                )
            end
            function i.OnChanged(m, n)
                i.Changed = n
                n(i.Value)
            end
            function i.Destroy(m)
                j:Destroy()
                h.Options[f] = nil
            end
            h.Options[f] = i
            return i
        end
        return d
    end,
    [24] = function()
        local c, W, a3, a4, a5 = b(24)
        local a6, a7 = game:GetService "UserInputService", W.Parent.Parent
        local a8 = a3(a7.Creator)
        local a9, aa, d = a8.New, a7.Components, {}
        d.__index = d
        d.__type = "Keybind"
        function d.New(e, f, g)
            local h = e.Library
            assert(g.Title, "KeyBind - Missing Title")
            assert(g.Default, "KeyBind - Missing default value.")
            local i, j, k =
                {
                    Value = g.Default,
                    Toggled = false,
                    Mode = g.Mode or "Toggle",
                    Type = "Keybind",
                    Callback = g.Callback or function(i)
                        end,
                    ChangedCallback = g.ChangedCallback or function(i)
                        end
                },
                false,
                a3(aa.Element)(g.Title, g.Description, e.Container, true)
            i.SetTitle = k.SetTitle
            i.SetDesc = k.SetDesc
            local l =
                a9(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.Regular,
                        Enum.FontStyle.Normal
                    ),
                    Text = g.Default,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 13,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    Size = UDim2.new(0, 0, 0, 14),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            local m =
                a9(
                "TextButton",
                {
                    Size = UDim2.fromOffset(0, 30),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    AnchorPoint = Vector2.new(1, 0.5),
                    BackgroundTransparency = 0.9,
                    Parent = k.Frame,
                    AutomaticSize = Enum.AutomaticSize.X,
                    ThemeTag = {BackgroundColor3 = "Keybind"}
                },
                {
                    a9("UICorner", {CornerRadius = UDim.new(0, 5)}),
                    a9("UIPadding", {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}),
                    a9(
                        "UIStroke",
                        {
                            Transparency = 0.5,
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            ThemeTag = {Color = "InElementBorder"}
                        }
                    ),
                    l
                }
            )
            function i.GetState(n)
                if a6:GetFocusedTextBox() and i.Mode ~= "Always" then
                    return false
                end
                if i.Mode == "Always" then
                    return true
                elseif i.Mode == "Hold" then
                    if i.Value == "None" then
                        return false
                    end
                    local o = i.Value
                    if o == "MouseLeft" or o == "MouseRight" then
                        return o == "MouseLeft" and a6:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or
                            o == "MouseRight" and a6:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
                    else
                        return a6:IsKeyDown(Enum.KeyCode[i.Value])
                    end
                else
                    return i.Toggled
                end
            end
            function i.SetValue(n, o, p)
                o = o or i.Key
                p = p or i.Mode
                l.Text = o
                i.Value = o
                i.Mode = p
            end
            function i.OnClick(n, o)
                i.Clicked = o
            end
            function i.OnChanged(n, o)
                i.Changed = o
                o(i.Value)
            end
            function i.DoClick(n)
                h:SafeCallback(i.Callback, i.Toggled)
                h:SafeCallback(i.Clicked, i.Toggled)
            end
            function i.Destroy(n)
                k:Destroy()
                h.Options[f] = nil
            end
            a8.AddSignal(
                m.InputBegan,
                function(n)
                    if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
                        j = true
                        l.Text = "..."
                        wait(0.2)
                        local o
                        o =
                            a6.InputBegan:Connect(
                            function(p)
                                local q
                                if p.UserInputType == Enum.UserInputType.Keyboard then
                                    q = p.KeyCode.Name
                                elseif p.UserInputType == Enum.UserInputType.MouseButton1 then
                                    q = "MouseLeft"
                                elseif p.UserInputType == Enum.UserInputType.MouseButton2 then
                                    q = "MouseRight"
                                end
                                local t
                                t =
                                    a6.InputEnded:Connect(
                                    function(u)
                                        if
                                            u.KeyCode.Name == q or
                                                q == "MouseLeft" and u.UserInputType == Enum.UserInputType.MouseButton1 or
                                                q == "MouseRight" and u.UserInputType == Enum.UserInputType.MouseButton2
                                         then
                                            j = false
                                            l.Text = q
                                            i.Value = q
                                            h:SafeCallback(i.ChangedCallback, u.KeyCode or u.UserInputType)
                                            h:SafeCallback(i.Changed, u.KeyCode or u.UserInputType)
                                            o:Disconnect()
                                            t:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            )
            a8.AddSignal(
                a6.InputBegan,
                function(n)
                    if not j and not a6:GetFocusedTextBox() then
                        if i.Mode == "Toggle" then
                            local o = i.Value
                            if o == "MouseLeft" or o == "MouseRight" then
                                if
                                    o == "MouseLeft" and n.UserInputType == Enum.UserInputType.MouseButton1 or
                                        o == "MouseRight" and n.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    i.Toggled = not i.Toggled
                                    i:DoClick()
                                end
                            elseif n.UserInputType == Enum.UserInputType.Keyboard then
                                if n.KeyCode.Name == o then
                                    i.Toggled = not i.Toggled
                                    i:DoClick()
                                end
                            end
                        end
                    end
                end
            )
            h.Options[f] = i
            return i
        end
        return d
    end,
    [25] = function()
        local c, W, a3, a4, a5 = b(25)
        local a6 = W.Parent.Parent
        local a7, a8, a9, aa = a6.Components, a3(a6.Packages.Flipper), a3(a6.Creator), {}
        aa.__index = aa
        aa.__type = "Paragraph"
        function aa.New(d, e)
            assert(e.Title, "Paragraph - Missing Title")
            e.Content = e.Content or ""
            local f = a3(a7.Element)(e.Title, e.Content, aa.Container, false)
            f.Frame.BackgroundTransparency = 0.92
            f.Border.Transparency = 0.6
            return f
        end
        return aa
    end,
    [26] = function()
        local c, W, a3, a4, a5 = b(26)
        local a6, a7 = game:GetService "UserInputService", W.Parent.Parent
        local a8 = a3(a7.Creator)
        local a9, aa, d = a8.New, a7.Components, {}
        d.__index = d
        d.__type = "Slider"
        function d.New(e, f, g)
            local h = e.Library
            assert(g.Title, "Slider - Missing Title.")
            assert(g.Default, "Slider - Missing default value.")
            assert(g.Min, "Slider - Missing minimum value.")
            assert(g.Max, "Slider - Missing maximum value.")
            assert(g.Rounding, "Slider - Missing rounding value.")
            local i, j, k =
                {Value = nil, Min = g.Min, Max = g.Max, Rounding = g.Rounding, Callback = g.Callback or function(i)
                        end, Type = "Slider"},
                false,
                a3(aa.Element)(g.Title, g.Description, e.Container, false)
            k.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            i.SetTitle = k.SetTitle
            i.SetDesc = k.SetDesc
            local l =
                a9(
                "ImageLabel",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(0, -7, 0.5, 0),
                    Size = UDim2.fromOffset(14, 14),
                    Image = "http://www.roblox.com/asset/?id=12266946128",
                    ThemeTag = {ImageColor3 = "Accent"}
                }
            )
            local m, n, o =
                a9(
                    "Frame",
                    {BackgroundTransparency = 1, Position = UDim2.fromOffset(7, 0), Size = UDim2.new(1, -14, 1, 0)},
                    {l}
                ),
                a9(
                    "Frame",
                    {Size = UDim2.new(0, 0, 1, 0), ThemeTag = {BackgroundColor3 = "Accent"}},
                    {a9("UICorner", {CornerRadius = UDim.new(1, 0)})}
                ),
                a9(
                    "TextLabel",
                    {
                        FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                        Text = "Value",
                        TextSize = 12,
                        TextWrapped = true,
                        TextXAlignment = Enum.TextXAlignment.Right,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                        BackgroundTransparency = 1,
                        Size = UDim2.new(0, 100, 0, 14),
                        Position = UDim2.new(0, -4, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        ThemeTag = {TextColor3 = "SubText"}
                    }
                )
            local p =
                a9(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 4),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    BackgroundTransparency = 0.4,
                    Parent = k.Frame,
                    ThemeTag = {BackgroundColor3 = "SliderRail"}
                },
                {
                    a9("UICorner", {CornerRadius = UDim.new(1, 0)}),
                    a9("UISizeConstraint", {MaxSize = Vector2.new(150, math.huge)}),
                    o,
                    n,
                    m
                }
            )
            a8.AddSignal(
                l.InputBegan,
                function(q)
                    if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
                        j = true
                    end
                end
            )
            a8.AddSignal(
                l.InputEnded,
                function(q)
                    if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
                        j = false
                    end
                end
            )
            a8.AddSignal(
                a6.InputChanged,
                function(q)
                    if
                        j and
                            (q.UserInputType == Enum.UserInputType.MouseMovement or
                                q.UserInputType == Enum.UserInputType.Touch)
                     then
                        local t = math.clamp((q.Position.X - m.AbsolutePosition.X) / m.AbsoluteSize.X, 0, 1)
                        i:SetValue(i.Min + (i.Max - i.Min) * t)
                    end
                end
            )
            function i.OnChanged(q, t)
                i.Changed = t
                t(i.Value)
            end
            function i.SetValue(q, t)
                q.Value = h:Round(math.clamp(t, i.Min, i.Max), i.Rounding)
                l.Position = UDim2.new((q.Value - i.Min) / (i.Max - i.Min), -7, 0.5, 0)
                n.Size = UDim2.fromScale((q.Value - i.Min) / (i.Max - i.Min), 1)
                o.Text = tostring(q.Value)
                h:SafeCallback(i.Callback, q.Value)
                h:SafeCallback(i.Changed, q.Value)
            end
            function i.Destroy(q)
                k:Destroy()
                h.Options[f] = nil
            end
            i:SetValue(g.Default)
            h.Options[f] = i
            return i
        end
        return d
    end,
    [27] = function()
        local c, W, a3, a4, a5 = b(27)
        local a6, a7 = game:GetService "TweenService", W.Parent.Parent
        local a8 = a3(a7.Creator)
        local a9, aa, d = a8.New, a7.Components, {}
        d.__index = d
        d.__type = "Toggle"
        function d.New(e, f, g)
            local h = e.Library
            assert(g.Title, "Toggle - Missing Title")
            local i, j = {Value = g.Default or false, Callback = g.Callback or function(i)
                        end, Type = "Toggle"}, a3(aa.Element)(g.Title, g.Description, e.Container, true)
            j.DescLabel.Size = UDim2.new(1, -54, 0, 14)
            i.SetTitle = j.SetTitle
            i.SetDesc = j.SetDesc
            local k, l =
                a9(
                    "ImageLabel",
                    {
                        AnchorPoint = Vector2.new(0, 0.5),
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.new(0, 2, 0.5, 0),
                        Image = "http://www.roblox.com/asset/?id=12266946128",
                        ImageTransparency = 0.5,
                        ThemeTag = {ImageColor3 = "ToggleSlider"}
                    }
                ),
                a9("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "ToggleSlider"}})
            local m =
                a9(
                "Frame",
                {
                    Size = UDim2.fromOffset(36, 18),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    Parent = j.Frame,
                    BackgroundTransparency = 1,
                    ThemeTag = {BackgroundColor3 = "Accent"}
                },
                {a9("UICorner", {CornerRadius = UDim.new(0, 9)}), l, k}
            )
            function i.OnChanged(n, o)
                i.Changed = o
                o(i.Value)
            end
            function i.SetValue(n, o)
                o = not (not o)
                i.Value = o
                a8.OverrideTag(l, {Color = i.Value and "Accent" or "ToggleSlider"})
                a8.OverrideTag(k, {ImageColor3 = i.Value and "ToggleToggled" or "ToggleSlider"})
                a6:Create(
                    k,
                    TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    {Position = UDim2.new(0, i.Value and 19 or 2, 0.5, 0)}
                ):Play()
                a6:Create(
                    m,
                    TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    {BackgroundTransparency = i.Value and 0 or 1}
                ):Play()
                k.ImageTransparency = i.Value and 0 or 0.5
                h:SafeCallback(i.Callback, i.Value)
                h:SafeCallback(i.Changed, i.Value)
            end
            function i.Destroy(n)
                j:Destroy()
                h.Options[f] = nil
            end
            a8.AddSignal(
                j.Frame.MouseButton1Click,
                function()
                    i:SetValue(not i.Value)
                end
            )
            i:SetValue(i.Value)
            h.Options[f] = i
            return i
        end
        return d
    end,
    [28] = function()
        local c, W, a3, a4, a5 = b(28)
        return {
            assets = {
                ["lucide-accessibility"] = "rbxassetid://10709751939",
                ["lucide-activity"] = "rbxassetid://10709752035",
                ["lucide-air-vent"] = "rbxassetid://10709752131",
                ["lucide-airplay"] = "rbxassetid://10709752254",
                ["lucide-alarm-check"] = "rbxassetid://10709752405",
                ["lucide-alarm-clock"] = "rbxassetid://10709752630",
                ["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
                ["lucide-alarm-minus"] = "rbxassetid://10709752732",
                ["lucide-alarm-plus"] = "rbxassetid://10709752825",
                ["lucide-album"] = "rbxassetid://10709752906",
                ["lucide-alert-circle"] = "rbxassetid://10709752996",
                ["lucide-alert-octagon"] = "rbxassetid://10709753064",
                ["lucide-alert-triangle"] = "rbxassetid://10709753149",
                ["lucide-align-center"] = "rbxassetid://10709753570",
                ["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
                ["lucide-align-center-vertical"] = "rbxassetid://10709753421",
                ["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
                ["lucide-align-end-vertical"] = "rbxassetid://10709753808",
                ["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
                ["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
                ["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
                ["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
                ["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
                ["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
                ["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
                ["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
                ["lucide-align-justify"] = "rbxassetid://10709759610",
                ["lucide-align-left"] = "rbxassetid://10709759764",
                ["lucide-align-right"] = "rbxassetid://10709759895",
                ["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
                ["lucide-align-start-vertical"] = "rbxassetid://10709760244",
                ["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
                ["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
                ["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
                ["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
                ["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
                ["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
                ["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
                ["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
                ["lucide-anchor"] = "rbxassetid://10709761530",
                ["lucide-angry"] = "rbxassetid://10709761629",
                ["lucide-annoyed"] = "rbxassetid://10709761722",
                ["lucide-aperture"] = "rbxassetid://10709761813",
                ["lucide-apple"] = "rbxassetid://10709761889",
                ["lucide-archive"] = "rbxassetid://10709762233",
                ["lucide-archive-restore"] = "rbxassetid://10709762058",
                ["lucide-armchair"] = "rbxassetid://10709762327",
                ["lucide-arrow-big-down"] = "rbxassetid://10747796644",
                ["lucide-arrow-big-left"] = "rbxassetid://10709762574",
                ["lucide-arrow-big-right"] = "rbxassetid://10709762727",
                ["lucide-arrow-big-up"] = "rbxassetid://10709762879",
                ["lucide-arrow-down"] = "rbxassetid://10709767827",
                ["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
                ["lucide-arrow-down-left"] = "rbxassetid://10709767656",
                ["lucide-arrow-down-right"] = "rbxassetid://10709767750",
                ["lucide-arrow-left"] = "rbxassetid://10709768114",
                ["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
                ["lucide-arrow-left-right"] = "rbxassetid://10709768019",
                ["lucide-arrow-right"] = "rbxassetid://10709768347",
                ["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
                ["lucide-arrow-up"] = "rbxassetid://10709768939",
                ["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
                ["lucide-arrow-up-down"] = "rbxassetid://10709768538",
                ["lucide-arrow-up-left"] = "rbxassetid://10709768661",
                ["lucide-arrow-up-right"] = "rbxassetid://10709768787",
                ["lucide-asterisk"] = "rbxassetid://10709769095",
                ["lucide-at-sign"] = "rbxassetid://10709769286",
                ["lucide-award"] = "rbxassetid://10709769406",
                ["lucide-axe"] = "rbxassetid://10709769508",
                ["lucide-axis-3d"] = "rbxassetid://10709769598",
                ["lucide-baby"] = "rbxassetid://10709769732",
                ["lucide-backpack"] = "rbxassetid://10709769841",
                ["lucide-baggage-claim"] = "rbxassetid://10709769935",
                ["lucide-banana"] = "rbxassetid://10709770005",
                ["lucide-banknote"] = "rbxassetid://10709770178",
                ["lucide-bar-chart"] = "rbxassetid://10709773755",
                ["lucide-bar-chart-2"] = "rbxassetid://10709770317",
                ["lucide-bar-chart-3"] = "rbxassetid://10709770431",
                ["lucide-bar-chart-4"] = "rbxassetid://10709770560",
                ["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
                ["lucide-barcode"] = "rbxassetid://10747360675",
                ["lucide-baseline"] = "rbxassetid://10709773863",
                ["lucide-bath"] = "rbxassetid://10709773963",
                ["lucide-battery"] = "rbxassetid://10709774640",
                ["lucide-battery-charging"] = "rbxassetid://10709774068",
                ["lucide-battery-full"] = "rbxassetid://10709774206",
                ["lucide-battery-low"] = "rbxassetid://10709774370",
                ["lucide-battery-medium"] = "rbxassetid://10709774513",
                ["lucide-beaker"] = "rbxassetid://10709774756",
                ["lucide-bed"] = "rbxassetid://10709775036",
                ["lucide-bed-double"] = "rbxassetid://10709774864",
                ["lucide-bed-single"] = "rbxassetid://10709774968",
                ["lucide-beer"] = "rbxassetid://10709775167",
                ["lucide-bell"] = "rbxassetid://10709775704",
                ["lucide-bell-minus"] = "rbxassetid://10709775241",
                ["lucide-bell-off"] = "rbxassetid://10709775320",
                ["lucide-bell-plus"] = "rbxassetid://10709775448",
                ["lucide-bell-ring"] = "rbxassetid://10709775560",
                ["lucide-bike"] = "rbxassetid://10709775894",
                ["lucide-binary"] = "rbxassetid://10709776050",
                ["lucide-bitcoin"] = "rbxassetid://10709776126",
                ["lucide-bluetooth"] = "rbxassetid://10709776655",
                ["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
                ["lucide-bluetooth-off"] = "rbxassetid://10709776344",
                ["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
                ["lucide-bold"] = "rbxassetid://10747813908",
                ["lucide-bomb"] = "rbxassetid://10709781460",
                ["lucide-bone"] = "rbxassetid://10709781605",
                ["lucide-book"] = "rbxassetid://10709781824",
                ["lucide-book-open"] = "rbxassetid://10709781717",
                ["lucide-bookmark"] = "rbxassetid://10709782154",
                ["lucide-bookmark-minus"] = "rbxassetid://10709781919",
                ["lucide-bookmark-plus"] = "rbxassetid://10709782044",
                ["lucide-bot"] = "rbxassetid://10709782230",
                ["lucide-box"] = "rbxassetid://10709782497",
                ["lucide-box-select"] = "rbxassetid://10709782342",
                ["lucide-boxes"] = "rbxassetid://10709782582",
                ["lucide-briefcase"] = "rbxassetid://10709782662",
                ["lucide-brush"] = "rbxassetid://10709782758",
                ["lucide-bug"] = "rbxassetid://10709782845",
                ["lucide-building"] = "rbxassetid://10709783051",
                ["lucide-building-2"] = "rbxassetid://10709782939",
                ["lucide-bus"] = "rbxassetid://10709783137",
                ["lucide-cake"] = "rbxassetid://10709783217",
                ["lucide-calculator"] = "rbxassetid://10709783311",
                ["lucide-calendar"] = "rbxassetid://10709789505",
                ["lucide-calendar-check"] = "rbxassetid://10709783474",
                ["lucide-calendar-check-2"] = "rbxassetid://10709783392",
                ["lucide-calendar-clock"] = "rbxassetid://10709783577",
                ["lucide-calendar-days"] = "rbxassetid://10709783673",
                ["lucide-calendar-heart"] = "rbxassetid://10709783835",
                ["lucide-calendar-minus"] = "rbxassetid://10709783959",
                ["lucide-calendar-off"] = "rbxassetid://10709788784",
                ["lucide-calendar-plus"] = "rbxassetid://10709788937",
                ["lucide-calendar-range"] = "rbxassetid://10709789053",
                ["lucide-calendar-search"] = "rbxassetid://10709789200",
                ["lucide-calendar-x"] = "rbxassetid://10709789407",
                ["lucide-calendar-x-2"] = "rbxassetid://10709789329",
                ["lucide-camera"] = "rbxassetid://10709789686",
                ["lucide-camera-off"] = "rbxassetid://10747822677",
                ["lucide-car"] = "rbxassetid://10709789810",
                ["lucide-carrot"] = "rbxassetid://10709789960",
                ["lucide-cast"] = "rbxassetid://10709790097",
                ["lucide-charge"] = "rbxassetid://10709790202",
                ["lucide-check"] = "rbxassetid://10709790644",
                ["lucide-check-circle"] = "rbxassetid://10709790387",
                ["lucide-check-circle-2"] = "rbxassetid://10709790298",
                ["lucide-check-square"] = "rbxassetid://10709790537",
                ["lucide-chef-hat"] = "rbxassetid://10709790757",
                ["lucide-cherry"] = "rbxassetid://10709790875",
                ["lucide-chevron-down"] = "rbxassetid://10709790948",
                ["lucide-chevron-first"] = "rbxassetid://10709791015",
                ["lucide-chevron-last"] = "rbxassetid://10709791130",
                ["lucide-chevron-left"] = "rbxassetid://10709791281",
                ["lucide-chevron-right"] = "rbxassetid://10709791437",
                ["lucide-chevron-up"] = "rbxassetid://10709791523",
                ["lucide-chevrons-down"] = "rbxassetid://10709796864",
                ["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
                ["lucide-chevrons-left"] = "rbxassetid://10709797151",
                ["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
                ["lucide-chevrons-right"] = "rbxassetid://10709797382",
                ["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
                ["lucide-chevrons-up"] = "rbxassetid://10709797622",
                ["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
                ["lucide-chrome"] = "rbxassetid://10709797725",
                ["lucide-circle"] = "rbxassetid://10709798174",
                ["lucide-circle-dot"] = "rbxassetid://10709797837",
                ["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
                ["lucide-circle-slashed"] = "rbxassetid://10709798100",
                ["lucide-citrus"] = "rbxassetid://10709798276",
                ["lucide-clapperboard"] = "rbxassetid://10709798350",
                ["lucide-clipboard"] = "rbxassetid://10709799288",
                ["lucide-clipboard-check"] = "rbxassetid://10709798443",
                ["lucide-clipboard-copy"] = "rbxassetid://10709798574",
                ["lucide-clipboard-edit"] = "rbxassetid://10709798682",
                ["lucide-clipboard-list"] = "rbxassetid://10709798792",
                ["lucide-clipboard-signature"] = "rbxassetid://10709798890",
                ["lucide-clipboard-type"] = "rbxassetid://10709798999",
                ["lucide-clipboard-x"] = "rbxassetid://10709799124",
                ["lucide-clock"] = "rbxassetid://10709805144",
                ["lucide-clock-1"] = "rbxassetid://10709799535",
                ["lucide-clock-10"] = "rbxassetid://10709799718",
                ["lucide-clock-11"] = "rbxassetid://10709799818",
                ["lucide-clock-12"] = "rbxassetid://10709799962",
                ["lucide-clock-2"] = "rbxassetid://10709803876",
                ["lucide-clock-3"] = "rbxassetid://10709803989",
                ["lucide-clock-4"] = "rbxassetid://10709804164",
                ["lucide-clock-5"] = "rbxassetid://10709804291",
                ["lucide-clock-6"] = "rbxassetid://10709804435",
                ["lucide-clock-7"] = "rbxassetid://10709804599",
                ["lucide-clock-8"] = "rbxassetid://10709804784",
                ["lucide-clock-9"] = "rbxassetid://10709804996",
                ["lucide-cloud"] = "rbxassetid://10709806740",
                ["lucide-cloud-cog"] = "rbxassetid://10709805262",
                ["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
                ["lucide-cloud-fog"] = "rbxassetid://10709805477",
                ["lucide-cloud-hail"] = "rbxassetid://10709805596",
                ["lucide-cloud-lightning"] = "rbxassetid://10709805727",
                ["lucide-cloud-moon"] = "rbxassetid://10709805942",
                ["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
                ["lucide-cloud-off"] = "rbxassetid://10709806060",
                ["lucide-cloud-rain"] = "rbxassetid://10709806277",
                ["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
                ["lucide-cloud-snow"] = "rbxassetid://10709806374",
                ["lucide-cloud-sun"] = "rbxassetid://10709806631",
                ["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
                ["lucide-cloudy"] = "rbxassetid://10709806859",
                ["lucide-clover"] = "rbxassetid://10709806995",
                ["lucide-code"] = "rbxassetid://10709810463",
                ["lucide-code-2"] = "rbxassetid://10709807111",
                ["lucide-codepen"] = "rbxassetid://10709810534",
                ["lucide-codesandbox"] = "rbxassetid://10709810676",
                ["lucide-coffee"] = "rbxassetid://10709810814",
                ["lucide-cog"] = "rbxassetid://10709810948",
                ["lucide-coins"] = "rbxassetid://10709811110",
                ["lucide-columns"] = "rbxassetid://10709811261",
                ["lucide-command"] = "rbxassetid://10709811365",
                ["lucide-compass"] = "rbxassetid://10709811445",
                ["lucide-component"] = "rbxassetid://10709811595",
                ["lucide-concierge-bell"] = "rbxassetid://10709811706",
                ["lucide-connection"] = "rbxassetid://10747361219",
                ["lucide-contact"] = "rbxassetid://10709811834",
                ["lucide-contrast"] = "rbxassetid://10709811939",
                ["lucide-cookie"] = "rbxassetid://10709812067",
                ["lucide-copy"] = "rbxassetid://10709812159",
                ["lucide-copyleft"] = "rbxassetid://10709812251",
                ["lucide-copyright"] = "rbxassetid://10709812311",
                ["lucide-corner-down-left"] = "rbxassetid://10709812396",
                ["lucide-corner-down-right"] = "rbxassetid://10709812485",
                ["lucide-corner-left-down"] = "rbxassetid://10709812632",
                ["lucide-corner-left-up"] = "rbxassetid://10709812784",
                ["lucide-corner-right-down"] = "rbxassetid://10709812939",
                ["lucide-corner-right-up"] = "rbxassetid://10709813094",
                ["lucide-corner-up-left"] = "rbxassetid://10709813185",
                ["lucide-corner-up-right"] = "rbxassetid://10709813281",
                ["lucide-cpu"] = "rbxassetid://10709813383",
                ["lucide-croissant"] = "rbxassetid://10709818125",
                ["lucide-crop"] = "rbxassetid://10709818245",
                ["lucide-cross"] = "rbxassetid://10709818399",
                ["lucide-crosshair"] = "rbxassetid://10709818534",
                ["lucide-crown"] = "rbxassetid://10709818626",
                ["lucide-cup-soda"] = "rbxassetid://10709818763",
                ["lucide-curly-braces"] = "rbxassetid://10709818847",
                ["lucide-currency"] = "rbxassetid://10709818931",
                ["lucide-database"] = "rbxassetid://10709818996",
                ["lucide-delete"] = "rbxassetid://10709819059",
                ["lucide-diamond"] = "rbxassetid://10709819149",
                ["lucide-dice-1"] = "rbxassetid://10709819266",
                ["lucide-dice-2"] = "rbxassetid://10709819361",
                ["lucide-dice-3"] = "rbxassetid://10709819508",
                ["lucide-dice-4"] = "rbxassetid://10709819670",
                ["lucide-dice-5"] = "rbxassetid://10709819801",
                ["lucide-dice-6"] = "rbxassetid://10709819896",
                ["lucide-dices"] = "rbxassetid://10723343321",
                ["lucide-diff"] = "rbxassetid://10723343416",
                ["lucide-disc"] = "rbxassetid://10723343537",
                ["lucide-divide"] = "rbxassetid://10723343805",
                ["lucide-divide-circle"] = "rbxassetid://10723343636",
                ["lucide-divide-square"] = "rbxassetid://10723343737",
                ["lucide-dollar-sign"] = "rbxassetid://10723343958",
                ["lucide-download"] = "rbxassetid://10723344270",
                ["lucide-download-cloud"] = "rbxassetid://10723344088",
                ["lucide-droplet"] = "rbxassetid://10723344432",
                ["lucide-droplets"] = "rbxassetid://10734883356",
                ["lucide-drumstick"] = "rbxassetid://10723344737",
                ["lucide-edit"] = "rbxassetid://10734883598",
                ["lucide-edit-2"] = "rbxassetid://10723344885",
                ["lucide-edit-3"] = "rbxassetid://10723345088",
                ["lucide-egg"] = "rbxassetid://10723345518",
                ["lucide-egg-fried"] = "rbxassetid://10723345347",
                ["lucide-electricity"] = "rbxassetid://10723345749",
                ["lucide-electricity-off"] = "rbxassetid://10723345643",
                ["lucide-equal"] = "rbxassetid://10723345990",
                ["lucide-equal-not"] = "rbxassetid://10723345866",
                ["lucide-eraser"] = "rbxassetid://10723346158",
                ["lucide-euro"] = "rbxassetid://10723346372",
                ["lucide-expand"] = "rbxassetid://10723346553",
                ["lucide-external-link"] = "rbxassetid://10723346684",
                ["lucide-eye"] = "rbxassetid://10723346959",
                ["lucide-eye-off"] = "rbxassetid://10723346871",
                ["lucide-factory"] = "rbxassetid://10723347051",
                ["lucide-fan"] = "rbxassetid://10723354359",
                ["lucide-fast-forward"] = "rbxassetid://10723354521",
                ["lucide-feather"] = "rbxassetid://10723354671",
                ["lucide-figma"] = "rbxassetid://10723354801",
                ["lucide-file"] = "rbxassetid://10723374641",
                ["lucide-file-archive"] = "rbxassetid://10723354921",
                ["lucide-file-audio"] = "rbxassetid://10723355148",
                ["lucide-file-audio-2"] = "rbxassetid://10723355026",
                ["lucide-file-axis-3d"] = "rbxassetid://10723355272",
                ["lucide-file-badge"] = "rbxassetid://10723355622",
                ["lucide-file-badge-2"] = "rbxassetid://10723355451",
                ["lucide-file-bar-chart"] = "rbxassetid://10723355887",
                ["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
                ["lucide-file-box"] = "rbxassetid://10723355989",
                ["lucide-file-check"] = "rbxassetid://10723356210",
                ["lucide-file-check-2"] = "rbxassetid://10723356100",
                ["lucide-file-clock"] = "rbxassetid://10723356329",
                ["lucide-file-code"] = "rbxassetid://10723356507",
                ["lucide-file-cog"] = "rbxassetid://10723356830",
                ["lucide-file-cog-2"] = "rbxassetid://10723356676",
                ["lucide-file-diff"] = "rbxassetid://10723357039",
                ["lucide-file-digit"] = "rbxassetid://10723357151",
                ["lucide-file-down"] = "rbxassetid://10723357322",
                ["lucide-file-edit"] = "rbxassetid://10723357495",
                ["lucide-file-heart"] = "rbxassetid://10723357637",
                ["lucide-file-image"] = "rbxassetid://10723357790",
                ["lucide-file-input"] = "rbxassetid://10723357933",
                ["lucide-file-json"] = "rbxassetid://10723364435",
                ["lucide-file-json-2"] = "rbxassetid://10723364361",
                ["lucide-file-key"] = "rbxassetid://10723364605",
                ["lucide-file-key-2"] = "rbxassetid://10723364515",
                ["lucide-file-line-chart"] = "rbxassetid://10723364725",
                ["lucide-file-lock"] = "rbxassetid://10723364957",
                ["lucide-file-lock-2"] = "rbxassetid://10723364861",
                ["lucide-file-minus"] = "rbxassetid://10723365254",
                ["lucide-file-minus-2"] = "rbxassetid://10723365086",
                ["lucide-file-output"] = "rbxassetid://10723365457",
                ["lucide-file-pie-chart"] = "rbxassetid://10723365598",
                ["lucide-file-plus"] = "rbxassetid://10723365877",
                ["lucide-file-plus-2"] = "rbxassetid://10723365766",
                ["lucide-file-question"] = "rbxassetid://10723365987",
                ["lucide-file-scan"] = "rbxassetid://10723366167",
                ["lucide-file-search"] = "rbxassetid://10723366550",
                ["lucide-file-search-2"] = "rbxassetid://10723366340",
                ["lucide-file-signature"] = "rbxassetid://10723366741",
                ["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
                ["lucide-file-symlink"] = "rbxassetid://10723367098",
                ["lucide-file-terminal"] = "rbxassetid://10723367244",
                ["lucide-file-text"] = "rbxassetid://10723367380",
                ["lucide-file-type"] = "rbxassetid://10723367606",
                ["lucide-file-type-2"] = "rbxassetid://10723367509",
                ["lucide-file-up"] = "rbxassetid://10723367734",
                ["lucide-file-video"] = "rbxassetid://10723373884",
                ["lucide-file-video-2"] = "rbxassetid://10723367834",
                ["lucide-file-volume"] = "rbxassetid://10723374172",
                ["lucide-file-volume-2"] = "rbxassetid://10723374030",
                ["lucide-file-warning"] = "rbxassetid://10723374276",
                ["lucide-file-x"] = "rbxassetid://10723374544",
                ["lucide-file-x-2"] = "rbxassetid://10723374378",
                ["lucide-files"] = "rbxassetid://10723374759",
                ["lucide-film"] = "rbxassetid://10723374981",
                ["lucide-filter"] = "rbxassetid://10723375128",
                ["lucide-fingerprint"] = "rbxassetid://10723375250",
                ["lucide-flag"] = "rbxassetid://10723375890",
                ["lucide-flag-off"] = "rbxassetid://10723375443",
                ["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
                ["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
                ["lucide-flame"] = "rbxassetid://10723376114",
                ["lucide-flashlight"] = "rbxassetid://10723376471",
                ["lucide-flashlight-off"] = "rbxassetid://10723376365",
                ["lucide-flask-conical"] = "rbxassetid://10734883986",
                ["lucide-flask-round"] = "rbxassetid://10723376614",
                ["lucide-flip-horizontal"] = "rbxassetid://10723376884",
                ["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
                ["lucide-flip-vertical"] = "rbxassetid://10723377138",
                ["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
                ["lucide-flower"] = "rbxassetid://10747830374",
                ["lucide-flower-2"] = "rbxassetid://10723377305",
                ["lucide-focus"] = "rbxassetid://10723377537",
                ["lucide-folder"] = "rbxassetid://10723387563",
                ["lucide-folder-archive"] = "rbxassetid://10723384478",
                ["lucide-folder-check"] = "rbxassetid://10723384605",
                ["lucide-folder-clock"] = "rbxassetid://10723384731",
                ["lucide-folder-closed"] = "rbxassetid://10723384893",
                ["lucide-folder-cog"] = "rbxassetid://10723385213",
                ["lucide-folder-cog-2"] = "rbxassetid://10723385036",
                ["lucide-folder-down"] = "rbxassetid://10723385338",
                ["lucide-folder-edit"] = "rbxassetid://10723385445",
                ["lucide-folder-heart"] = "rbxassetid://10723385545",
                ["lucide-folder-input"] = "rbxassetid://10723385721",
                ["lucide-folder-key"] = "rbxassetid://10723385848",
                ["lucide-folder-lock"] = "rbxassetid://10723386005",
                ["lucide-folder-minus"] = "rbxassetid://10723386127",
                ["lucide-folder-open"] = "rbxassetid://10723386277",
                ["lucide-folder-output"] = "rbxassetid://10723386386",
                ["lucide-folder-plus"] = "rbxassetid://10723386531",
                ["lucide-folder-search"] = "rbxassetid://10723386787",
                ["lucide-folder-search-2"] = "rbxassetid://10723386674",
                ["lucide-folder-symlink"] = "rbxassetid://10723386930",
                ["lucide-folder-tree"] = "rbxassetid://10723387085",
                ["lucide-folder-up"] = "rbxassetid://10723387265",
                ["lucide-folder-x"] = "rbxassetid://10723387448",
                ["lucide-folders"] = "rbxassetid://10723387721",
                ["lucide-form-input"] = "rbxassetid://10723387841",
                ["lucide-forward"] = "rbxassetid://10723388016",
                ["lucide-frame"] = "rbxassetid://10723394389",
                ["lucide-framer"] = "rbxassetid://10723394565",
                ["lucide-frown"] = "rbxassetid://10723394681",
                ["lucide-fuel"] = "rbxassetid://10723394846",
                ["lucide-function-square"] = "rbxassetid://10723395041",
                ["lucide-gamepad"] = "rbxassetid://10723395457",
                ["lucide-gamepad-2"] = "rbxassetid://10723395215",
                ["lucide-gauge"] = "rbxassetid://10723395708",
                ["lucide-gavel"] = "rbxassetid://10723395896",
                ["lucide-gem"] = "rbxassetid://10723396000",
                ["lucide-ghost"] = "rbxassetid://10723396107",
                ["lucide-gift"] = "rbxassetid://10723396402",
                ["lucide-gift-card"] = "rbxassetid://10723396225",
                ["lucide-git-branch"] = "rbxassetid://10723396676",
                ["lucide-git-branch-plus"] = "rbxassetid://10723396542",
                ["lucide-git-commit"] = "rbxassetid://10723396812",
                ["lucide-git-compare"] = "rbxassetid://10723396954",
                ["lucide-git-fork"] = "rbxassetid://10723397049",
                ["lucide-git-merge"] = "rbxassetid://10723397165",
                ["lucide-git-pull-request"] = "rbxassetid://10723397431",
                ["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
                ["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
                ["lucide-glass"] = "rbxassetid://10723397788",
                ["lucide-glass-2"] = "rbxassetid://10723397529",
                ["lucide-glass-water"] = "rbxassetid://10723397678",
                ["lucide-glasses"] = "rbxassetid://10723397895",
                ["lucide-globe"] = "rbxassetid://10723404337",
                ["lucide-globe-2"] = "rbxassetid://10723398002",
                ["lucide-grab"] = "rbxassetid://10723404472",
                ["lucide-graduation-cap"] = "rbxassetid://10723404691",
                ["lucide-grape"] = "rbxassetid://10723404822",
                ["lucide-grid"] = "rbxassetid://10723404936",
                ["lucide-grip-horizontal"] = "rbxassetid://10723405089",
                ["lucide-grip-vertical"] = "rbxassetid://10723405236",
                ["lucide-hammer"] = "rbxassetid://10723405360",
                ["lucide-hand"] = "rbxassetid://10723405649",
                ["lucide-hand-metal"] = "rbxassetid://10723405508",
                ["lucide-hard-drive"] = "rbxassetid://10723405749",
                ["lucide-hard-hat"] = "rbxassetid://10723405859",
                ["lucide-hash"] = "rbxassetid://10723405975",
                ["lucide-haze"] = "rbxassetid://10723406078",
                ["lucide-headphones"] = "rbxassetid://10723406165",
                ["lucide-heart"] = "rbxassetid://10723406885",
                ["lucide-heart-crack"] = "rbxassetid://10723406299",
                ["lucide-heart-handshake"] = "rbxassetid://10723406480",
                ["lucide-heart-off"] = "rbxassetid://10723406662",
                ["lucide-heart-pulse"] = "rbxassetid://10723406795",
                ["lucide-help-circle"] = "rbxassetid://10723406988",
                ["lucide-hexagon"] = "rbxassetid://10723407092",
                ["lucide-highlighter"] = "rbxassetid://10723407192",
                ["lucide-history"] = "rbxassetid://10723407335",
                ["lucide-home"] = "rbxassetid://10723407389",
                ["lucide-hourglass"] = "rbxassetid://10723407498",
                ["lucide-ice-cream"] = "rbxassetid://10723414308",
                ["lucide-image"] = "rbxassetid://10723415040",
                ["lucide-image-minus"] = "rbxassetid://10723414487",
                ["lucide-image-off"] = "rbxassetid://10723414677",
                ["lucide-image-plus"] = "rbxassetid://10723414827",
                ["lucide-import"] = "rbxassetid://10723415205",
                ["lucide-inbox"] = "rbxassetid://10723415335",
                ["lucide-indent"] = "rbxassetid://10723415494",
                ["lucide-indian-rupee"] = "rbxassetid://10723415642",
                ["lucide-infinity"] = "rbxassetid://10723415766",
                ["lucide-info"] = "rbxassetid://10723415903",
                ["lucide-inspect"] = "rbxassetid://10723416057",
                ["lucide-italic"] = "rbxassetid://10723416195",
                ["lucide-japanese-yen"] = "rbxassetid://10723416363",
                ["lucide-joystick"] = "rbxassetid://10723416527",
                ["lucide-key"] = "rbxassetid://10723416652",
                ["lucide-keyboard"] = "rbxassetid://10723416765",
                ["lucide-lamp"] = "rbxassetid://10723417513",
                ["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
                ["lucide-lamp-desk"] = "rbxassetid://10723417016",
                ["lucide-lamp-floor"] = "rbxassetid://10723417131",
                ["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
                ["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
                ["lucide-landmark"] = "rbxassetid://10723417608",
                ["lucide-languages"] = "rbxassetid://10723417703",
                ["lucide-laptop"] = "rbxassetid://10723423881",
                ["lucide-laptop-2"] = "rbxassetid://10723417797",
                ["lucide-lasso"] = "rbxassetid://10723424235",
                ["lucide-lasso-select"] = "rbxassetid://10723424058",
                ["lucide-laugh"] = "rbxassetid://10723424372",
                ["lucide-layers"] = "rbxassetid://10723424505",
                ["lucide-layout"] = "rbxassetid://10723425376",
                ["lucide-layout-dashboard"] = "rbxassetid://10723424646",
                ["lucide-layout-grid"] = "rbxassetid://10723424838",
                ["lucide-layout-list"] = "rbxassetid://10723424963",
                ["lucide-layout-template"] = "rbxassetid://10723425187",
                ["lucide-leaf"] = "rbxassetid://10723425539",
                ["lucide-library"] = "rbxassetid://10723425615",
                ["lucide-life-buoy"] = "rbxassetid://10723425685",
                ["lucide-lightbulb"] = "rbxassetid://10723425852",
                ["lucide-lightbulb-off"] = "rbxassetid://10723425762",
                ["lucide-line-chart"] = "rbxassetid://10723426393",
                ["lucide-link"] = "rbxassetid://10723426722",
                ["lucide-link-2"] = "rbxassetid://10723426595",
                ["lucide-link-2-off"] = "rbxassetid://10723426513",
                ["lucide-list"] = "rbxassetid://10723433811",
                ["lucide-list-checks"] = "rbxassetid://10734884548",
                ["lucide-list-end"] = "rbxassetid://10723426886",
                ["lucide-list-minus"] = "rbxassetid://10723426986",
                ["lucide-list-music"] = "rbxassetid://10723427081",
                ["lucide-list-ordered"] = "rbxassetid://10723427199",
                ["lucide-list-plus"] = "rbxassetid://10723427334",
                ["lucide-list-start"] = "rbxassetid://10723427494",
                ["lucide-list-video"] = "rbxassetid://10723427619",
                ["lucide-list-x"] = "rbxassetid://10723433655",
                ["lucide-loader"] = "rbxassetid://10723434070",
                ["lucide-loader-2"] = "rbxassetid://10723433935",
                ["lucide-locate"] = "rbxassetid://10723434557",
                ["lucide-locate-fixed"] = "rbxassetid://10723434236",
                ["lucide-locate-off"] = "rbxassetid://10723434379",
                ["lucide-lock"] = "rbxassetid://10723434711",
                ["lucide-log-in"] = "rbxassetid://10723434830",
                ["lucide-log-out"] = "rbxassetid://10723434906",
                ["lucide-luggage"] = "rbxassetid://10723434993",
                ["lucide-magnet"] = "rbxassetid://10723435069",
                ["lucide-mail"] = "rbxassetid://10734885430",
                ["lucide-mail-check"] = "rbxassetid://10723435182",
                ["lucide-mail-minus"] = "rbxassetid://10723435261",
                ["lucide-mail-open"] = "rbxassetid://10723435342",
                ["lucide-mail-plus"] = "rbxassetid://10723435443",
                ["lucide-mail-question"] = "rbxassetid://10723435515",
                ["lucide-mail-search"] = "rbxassetid://10734884739",
                ["lucide-mail-warning"] = "rbxassetid://10734885015",
                ["lucide-mail-x"] = "rbxassetid://10734885247",
                ["lucide-mails"] = "rbxassetid://10734885614",
                ["lucide-map"] = "rbxassetid://10734886202",
                ["lucide-map-pin"] = "rbxassetid://10734886004",
                ["lucide-map-pin-off"] = "rbxassetid://10734885803",
                ["lucide-maximize"] = "rbxassetid://10734886735",
                ["lucide-maximize-2"] = "rbxassetid://10734886496",
                ["lucide-medal"] = "rbxassetid://10734887072",
                ["lucide-megaphone"] = "rbxassetid://10734887454",
                ["lucide-megaphone-off"] = "rbxassetid://10734887311",
                ["lucide-meh"] = "rbxassetid://10734887603",
                ["lucide-menu"] = "rbxassetid://10734887784",
                ["lucide-message-circle"] = "rbxassetid://10734888000",
                ["lucide-message-square"] = "rbxassetid://10734888228",
                ["lucide-mic"] = "rbxassetid://10734888864",
                ["lucide-mic-2"] = "rbxassetid://10734888430",
                ["lucide-mic-off"] = "rbxassetid://10734888646",
                ["lucide-microscope"] = "rbxassetid://10734889106",
                ["lucide-microwave"] = "rbxassetid://10734895076",
                ["lucide-milestone"] = "rbxassetid://10734895310",
                ["lucide-minimize"] = "rbxassetid://10734895698",
                ["lucide-minimize-2"] = "rbxassetid://10734895530",
                ["lucide-minus"] = "rbxassetid://10734896206",
                ["lucide-minus-circle"] = "rbxassetid://10734895856",
                ["lucide-minus-square"] = "rbxassetid://10734896029",
                ["lucide-monitor"] = "rbxassetid://10734896881",
                ["lucide-monitor-off"] = "rbxassetid://10734896360",
                ["lucide-monitor-speaker"] = "rbxassetid://10734896512",
                ["lucide-moon"] = "rbxassetid://10734897102",
                ["lucide-more-horizontal"] = "rbxassetid://10734897250",
                ["lucide-more-vertical"] = "rbxassetid://10734897387",
                ["lucide-mountain"] = "rbxassetid://10734897956",
                ["lucide-mountain-snow"] = "rbxassetid://10734897665",
                ["lucide-mouse"] = "rbxassetid://10734898592",
                ["lucide-mouse-pointer"] = "rbxassetid://10734898476",
                ["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
                ["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
                ["lucide-move"] = "rbxassetid://10734900011",
                ["lucide-move-3d"] = "rbxassetid://10734898756",
                ["lucide-move-diagonal"] = "rbxassetid://10734899164",
                ["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
                ["lucide-move-horizontal"] = "rbxassetid://10734899414",
                ["lucide-move-vertical"] = "rbxassetid://10734899821",
                ["lucide-music"] = "rbxassetid://10734905958",
                ["lucide-music-2"] = "rbxassetid://10734900215",
                ["lucide-music-3"] = "rbxassetid://10734905665",
                ["lucide-music-4"] = "rbxassetid://10734905823",
                ["lucide-navigation"] = "rbxassetid://10734906744",
                ["lucide-navigation-2"] = "rbxassetid://10734906332",
                ["lucide-navigation-2-off"] = "rbxassetid://10734906144",
                ["lucide-navigation-off"] = "rbxassetid://10734906580",
                ["lucide-network"] = "rbxassetid://10734906975",
                ["lucide-newspaper"] = "rbxassetid://10734907168",
                ["lucide-octagon"] = "rbxassetid://10734907361",
                ["lucide-option"] = "rbxassetid://10734907649",
                ["lucide-outdent"] = "rbxassetid://10734907933",
                ["lucide-package"] = "rbxassetid://10734909540",
                ["lucide-package-2"] = "rbxassetid://10734908151",
                ["lucide-package-check"] = "rbxassetid://10734908384",
                ["lucide-package-minus"] = "rbxassetid://10734908626",
                ["lucide-package-open"] = "rbxassetid://10734908793",
                ["lucide-package-plus"] = "rbxassetid://10734909016",
                ["lucide-package-search"] = "rbxassetid://10734909196",
                ["lucide-package-x"] = "rbxassetid://10734909375",
                ["lucide-paint-bucket"] = "rbxassetid://10734909847",
                ["lucide-paintbrush"] = "rbxassetid://10734910187",
                ["lucide-paintbrush-2"] = "rbxassetid://10734910030",
                ["lucide-palette"] = "rbxassetid://10734910430",
                ["lucide-palmtree"] = "rbxassetid://10734910680",
                ["lucide-paperclip"] = "rbxassetid://10734910927",
                ["lucide-party-popper"] = "rbxassetid://10734918735",
                ["lucide-pause"] = "rbxassetid://10734919336",
                ["lucide-pause-circle"] = "rbxassetid://10735024209",
                ["lucide-pause-octagon"] = "rbxassetid://10734919143",
                ["lucide-pen-tool"] = "rbxassetid://10734919503",
                ["lucide-pencil"] = "rbxassetid://10734919691",
                ["lucide-percent"] = "rbxassetid://10734919919",
                ["lucide-person-standing"] = "rbxassetid://10734920149",
                ["lucide-phone"] = "rbxassetid://10734921524",
                ["lucide-phone-call"] = "rbxassetid://10734920305",
                ["lucide-phone-forwarded"] = "rbxassetid://10734920508",
                ["lucide-phone-incoming"] = "rbxassetid://10734920694",
                ["lucide-phone-missed"] = "rbxassetid://10734920845",
                ["lucide-phone-off"] = "rbxassetid://10734921077",
                ["lucide-phone-outgoing"] = "rbxassetid://10734921288",
                ["lucide-pie-chart"] = "rbxassetid://10734921727",
                ["lucide-piggy-bank"] = "rbxassetid://10734921935",
                ["lucide-pin"] = "rbxassetid://10734922324",
                ["lucide-pin-off"] = "rbxassetid://10734922180",
                ["lucide-pipette"] = "rbxassetid://10734922497",
                ["lucide-pizza"] = "rbxassetid://10734922774",
                ["lucide-plane"] = "rbxassetid://10734922971",
                ["lucide-play"] = "rbxassetid://10734923549",
                ["lucide-play-circle"] = "rbxassetid://10734923214",
                ["lucide-plus"] = "rbxassetid://10734924532",
                ["lucide-plus-circle"] = "rbxassetid://10734923868",
                ["lucide-plus-square"] = "rbxassetid://10734924219",
                ["lucide-podcast"] = "rbxassetid://10734929553",
                ["lucide-pointer"] = "rbxassetid://10734929723",
                ["lucide-pound-sterling"] = "rbxassetid://10734929981",
                ["lucide-power"] = "rbxassetid://10734930466",
                ["lucide-power-off"] = "rbxassetid://10734930257",
                ["lucide-printer"] = "rbxassetid://10734930632",
                ["lucide-puzzle"] = "rbxassetid://10734930886",
                ["lucide-quote"] = "rbxassetid://10734931234",
                ["lucide-radio"] = "rbxassetid://10734931596",
                ["lucide-radio-receiver"] = "rbxassetid://10734931402",
                ["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
                ["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
                ["lucide-recycle"] = "rbxassetid://10734932295",
                ["lucide-redo"] = "rbxassetid://10734932822",
                ["lucide-redo-2"] = "rbxassetid://10734932586",
                ["lucide-refresh-ccw"] = "rbxassetid://10734933056",
                ["lucide-refresh-cw"] = "rbxassetid://10734933222",
                ["lucide-refrigerator"] = "rbxassetid://10734933465",
                ["lucide-regex"] = "rbxassetid://10734933655",
                ["lucide-repeat"] = "rbxassetid://10734933966",
                ["lucide-repeat-1"] = "rbxassetid://10734933826",
                ["lucide-reply"] = "rbxassetid://10734934252",
                ["lucide-reply-all"] = "rbxassetid://10734934132",
                ["lucide-rewind"] = "rbxassetid://10734934347",
                ["lucide-rocket"] = "rbxassetid://10734934585",
                ["lucide-rocking-chair"] = "rbxassetid://10734939942",
                ["lucide-rotate-3d"] = "rbxassetid://10734940107",
                ["lucide-rotate-ccw"] = "rbxassetid://10734940376",
                ["lucide-rotate-cw"] = "rbxassetid://10734940654",
                ["lucide-rss"] = "rbxassetid://10734940825",
                ["lucide-ruler"] = "rbxassetid://10734941018",
                ["lucide-russian-ruble"] = "rbxassetid://10734941199",
                ["lucide-sailboat"] = "rbxassetid://10734941354",
                ["lucide-save"] = "rbxassetid://10734941499",
                ["lucide-scale"] = "rbxassetid://10734941912",
                ["lucide-scale-3d"] = "rbxassetid://10734941739",
                ["lucide-scaling"] = "rbxassetid://10734942072",
                ["lucide-scan"] = "rbxassetid://10734942565",
                ["lucide-scan-face"] = "rbxassetid://10734942198",
                ["lucide-scan-line"] = "rbxassetid://10734942351",
                ["lucide-scissors"] = "rbxassetid://10734942778",
                ["lucide-screen-share"] = "rbxassetid://10734943193",
                ["lucide-screen-share-off"] = "rbxassetid://10734942967",
                ["lucide-scroll"] = "rbxassetid://10734943448",
                ["lucide-search"] = "rbxassetid://10734943674",
                ["lucide-send"] = "rbxassetid://10734943902",
                ["lucide-separator-horizontal"] = "rbxassetid://10734944115",
                ["lucide-separator-vertical"] = "rbxassetid://10734944326",
                ["lucide-server"] = "rbxassetid://10734949856",
                ["lucide-server-cog"] = "rbxassetid://10734944444",
                ["lucide-server-crash"] = "rbxassetid://10734944554",
                ["lucide-server-off"] = "rbxassetid://10734944668",
                ["lucide-settings"] = "rbxassetid://10734950309",
                ["lucide-settings-2"] = "rbxassetid://10734950020",
                ["lucide-share"] = "rbxassetid://10734950813",
                ["lucide-share-2"] = "rbxassetid://10734950553",
                ["lucide-sheet"] = "rbxassetid://10734951038",
                ["lucide-shield"] = "rbxassetid://10734951847",
                ["lucide-shield-alert"] = "rbxassetid://10734951173",
                ["lucide-shield-check"] = "rbxassetid://10734951367",
                ["lucide-shield-close"] = "rbxassetid://10734951535",
                ["lucide-shield-off"] = "rbxassetid://10734951684",
                ["lucide-shirt"] = "rbxassetid://10734952036",
                ["lucide-shopping-bag"] = "rbxassetid://10734952273",
                ["lucide-shopping-cart"] = "rbxassetid://10734952479",
                ["lucide-shovel"] = "rbxassetid://10734952773",
                ["lucide-shower-head"] = "rbxassetid://10734952942",
                ["lucide-shrink"] = "rbxassetid://10734953073",
                ["lucide-shrub"] = "rbxassetid://10734953241",
                ["lucide-shuffle"] = "rbxassetid://10734953451",
                ["lucide-sidebar"] = "rbxassetid://10734954301",
                ["lucide-sidebar-close"] = "rbxassetid://10734953715",
                ["lucide-sidebar-open"] = "rbxassetid://10734954000",
                ["lucide-sigma"] = "rbxassetid://10734954538",
                ["lucide-signal"] = "rbxassetid://10734961133",
                ["lucide-signal-high"] = "rbxassetid://10734954807",
                ["lucide-signal-low"] = "rbxassetid://10734955080",
                ["lucide-signal-medium"] = "rbxassetid://10734955336",
                ["lucide-signal-zero"] = "rbxassetid://10734960878",
                ["lucide-siren"] = "rbxassetid://10734961284",
                ["lucide-skip-back"] = "rbxassetid://10734961526",
                ["lucide-skip-forward"] = "rbxassetid://10734961809",
                ["lucide-skull"] = "rbxassetid://10734962068",
                ["lucide-slack"] = "rbxassetid://10734962339",
                ["lucide-slash"] = "rbxassetid://10734962600",
                ["lucide-slice"] = "rbxassetid://10734963024",
                ["lucide-sliders"] = "rbxassetid://10734963400",
                ["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
                ["lucide-smartphone"] = "rbxassetid://10734963940",
                ["lucide-smartphone-charging"] = "rbxassetid://10734963671",
                ["lucide-smile"] = "rbxassetid://10734964441",
                ["lucide-smile-plus"] = "rbxassetid://10734964188",
                ["lucide-snowflake"] = "rbxassetid://10734964600",
                ["lucide-sofa"] = "rbxassetid://10734964852",
                ["lucide-sort-asc"] = "rbxassetid://10734965115",
                ["lucide-sort-desc"] = "rbxassetid://10734965287",
                ["lucide-speaker"] = "rbxassetid://10734965419",
                ["lucide-sprout"] = "rbxassetid://10734965572",
                ["lucide-square"] = "rbxassetid://10734965702",
                ["lucide-star"] = "rbxassetid://10734966248",
                ["lucide-star-half"] = "rbxassetid://10734965897",
                ["lucide-star-off"] = "rbxassetid://10734966097",
                ["lucide-stethoscope"] = "rbxassetid://10734966384",
                ["lucide-sticker"] = "rbxassetid://10734972234",
                ["lucide-sticky-note"] = "rbxassetid://10734972463",
                ["lucide-stop-circle"] = "rbxassetid://10734972621",
                ["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
                ["lucide-stretch-vertical"] = "rbxassetid://10734973130",
                ["lucide-strikethrough"] = "rbxassetid://10734973290",
                ["lucide-subscript"] = "rbxassetid://10734973457",
                ["lucide-sun"] = "rbxassetid://10734974297",
                ["lucide-sun-dim"] = "rbxassetid://10734973645",
                ["lucide-sun-medium"] = "rbxassetid://10734973778",
                ["lucide-sun-moon"] = "rbxassetid://10734973999",
                ["lucide-sun-snow"] = "rbxassetid://10734974130",
                ["lucide-sunrise"] = "rbxassetid://10734974522",
                ["lucide-sunset"] = "rbxassetid://10734974689",
                ["lucide-superscript"] = "rbxassetid://10734974850",
                ["lucide-swiss-franc"] = "rbxassetid://10734975024",
                ["lucide-switch-camera"] = "rbxassetid://10734975214",
                ["lucide-sword"] = "rbxassetid://10734975486",
                ["lucide-swords"] = "rbxassetid://10734975692",
                ["lucide-syringe"] = "rbxassetid://10734975932",
                ["lucide-table"] = "rbxassetid://10734976230",
                ["lucide-table-2"] = "rbxassetid://10734976097",
                ["lucide-tablet"] = "rbxassetid://10734976394",
                ["lucide-tag"] = "rbxassetid://10734976528",
                ["lucide-tags"] = "rbxassetid://10734976739",
                ["lucide-target"] = "rbxassetid://10734977012",
                ["lucide-tent"] = "rbxassetid://10734981750",
                ["lucide-terminal"] = "rbxassetid://10734982144",
                ["lucide-terminal-square"] = "rbxassetid://10734981995",
                ["lucide-text-cursor"] = "rbxassetid://10734982395",
                ["lucide-text-cursor-input"] = "rbxassetid://10734982297",
                ["lucide-thermometer"] = "rbxassetid://10734983134",
                ["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
                ["lucide-thermometer-sun"] = "rbxassetid://10734982771",
                ["lucide-thumbs-down"] = "rbxassetid://10734983359",
                ["lucide-thumbs-up"] = "rbxassetid://10734983629",
                ["lucide-ticket"] = "rbxassetid://10734983868",
                ["lucide-timer"] = "rbxassetid://10734984606",
                ["lucide-timer-off"] = "rbxassetid://10734984138",
                ["lucide-timer-reset"] = "rbxassetid://10734984355",
                ["lucide-toggle-left"] = "rbxassetid://10734984834",
                ["lucide-toggle-right"] = "rbxassetid://10734985040",
                ["lucide-tornado"] = "rbxassetid://10734985247",
                ["lucide-toy-brick"] = "rbxassetid://10747361919",
                ["lucide-train"] = "rbxassetid://10747362105",
                ["lucide-trash"] = "rbxassetid://10747362393",
                ["lucide-trash-2"] = "rbxassetid://10747362241",
                ["lucide-tree-deciduous"] = "rbxassetid://10747362534",
                ["lucide-tree-pine"] = "rbxassetid://10747362748",
                ["lucide-trees"] = "rbxassetid://10747363016",
                ["lucide-trending-down"] = "rbxassetid://10747363205",
                ["lucide-trending-up"] = "rbxassetid://10747363465",
                ["lucide-triangle"] = "rbxassetid://10747363621",
                ["lucide-trophy"] = "rbxassetid://10747363809",
                ["lucide-truck"] = "rbxassetid://10747364031",
                ["lucide-tv"] = "rbxassetid://10747364593",
                ["lucide-tv-2"] = "rbxassetid://10747364302",
                ["lucide-type"] = "rbxassetid://10747364761",
                ["lucide-umbrella"] = "rbxassetid://10747364971",
                ["lucide-underline"] = "rbxassetid://10747365191",
                ["lucide-undo"] = "rbxassetid://10747365484",
                ["lucide-undo-2"] = "rbxassetid://10747365359",
                ["lucide-unlink"] = "rbxassetid://10747365771",
                ["lucide-unlink-2"] = "rbxassetid://10747397871",
                ["lucide-unlock"] = "rbxassetid://10747366027",
                ["lucide-upload"] = "rbxassetid://10747366434",
                ["lucide-upload-cloud"] = "rbxassetid://10747366266",
                ["lucide-usb"] = "rbxassetid://10747366606",
                ["lucide-user"] = "rbxassetid://10747373176",
                ["lucide-user-check"] = "rbxassetid://10747371901",
                ["lucide-user-cog"] = "rbxassetid://10747372167",
                ["lucide-user-minus"] = "rbxassetid://10747372346",
                ["lucide-user-plus"] = "rbxassetid://10747372702",
                ["lucide-user-x"] = "rbxassetid://10747372992",
                ["lucide-users"] = "rbxassetid://10747373426",
                ["lucide-utensils"] = "rbxassetid://10747373821",
                ["lucide-utensils-crossed"] = "rbxassetid://10747373629",
                ["lucide-venetian-mask"] = "rbxassetid://10747374003",
                ["lucide-verified"] = "rbxassetid://10747374131",
                ["lucide-vibrate"] = "rbxassetid://10747374489",
                ["lucide-vibrate-off"] = "rbxassetid://10747374269",
                ["lucide-video"] = "rbxassetid://10747374938",
                ["lucide-video-off"] = "rbxassetid://10747374721",
                ["lucide-view"] = "rbxassetid://10747375132",
                ["lucide-voicemail"] = "rbxassetid://10747375281",
                ["lucide-volume"] = "rbxassetid://10747376008",
                ["lucide-volume-1"] = "rbxassetid://10747375450",
                ["lucide-volume-2"] = "rbxassetid://10747375679",
                ["lucide-volume-x"] = "rbxassetid://10747375880",
                ["lucide-wallet"] = "rbxassetid://10747376205",
                ["lucide-wand"] = "rbxassetid://10747376565",
                ["lucide-wand-2"] = "rbxassetid://10747376349",
                ["lucide-watch"] = "rbxassetid://10747376722",
                ["lucide-waves"] = "rbxassetid://10747376931",
                ["lucide-webcam"] = "rbxassetid://10747381992",
                ["lucide-wifi"] = "rbxassetid://10747382504",
                ["lucide-wifi-off"] = "rbxassetid://10747382268",
                ["lucide-wind"] = "rbxassetid://10747382750",
                ["lucide-wrap-text"] = "rbxassetid://10747383065",
                ["lucide-wrench"] = "rbxassetid://10747383470",
                ["lucide-x"] = "rbxassetid://10747384394",
                ["lucide-x-circle"] = "rbxassetid://10747383819",
                ["lucide-x-octagon"] = "rbxassetid://10747384037",
                ["lucide-x-square"] = "rbxassetid://10747384217",
                ["lucide-zoom-in"] = "rbxassetid://10747384552",
                ["lucide-zoom-out"] = "rbxassetid://10747384679"
            }
        }
    end,
    [30] = function()
        local c, W, a3, a4, a5 = b(30)
        local a6 = {
            SingleMotor = a3(W.SingleMotor),
            GroupMotor = a3(W.GroupMotor),
            Instant = a3(W.Instant),
            Linear = a3(W.Linear),
            Spring = a3(W.Spring),
            isMotor = a3(W.isMotor)
        }
        return a6
    end,
    [31] = function()
        local c, W, a3, a4, a5 = b(31)
        local a6, a7, a8, a9 = game:GetService "RunService", a3(W.Parent.Signal), function()
            end, {}
        a9.__index = a9
        function a9.new()
            return setmetatable({_onStep = a7.new(), _onStart = a7.new(), _onComplete = a7.new()}, a9)
        end
        function a9.onStep(aa, d)
            return aa._onStep:connect(d)
        end
        function a9.onStart(aa, d)
            return aa._onStart:connect(d)
        end
        function a9.onComplete(aa, d)
            return aa._onComplete:connect(d)
        end
        function a9.start(aa)
            if not aa._connection then
                aa._connection =
                    a6.RenderStepped:Connect(
                    function(d)
                        aa:step(d)
                    end
                )
            end
        end
        function a9.stop(aa)
            if aa._connection then
                aa._connection:Disconnect()
                aa._connection = nil
            end
        end
        a9.destroy = a9.stop
        a9.step = a8
        a9.getValue = a8
        a9.setGoal = a8
        function a9.__tostring(aa)
            return "Motor"
        end
        return a9
    end,
    [32] = function()
        local c, W, a3, a4, a5 = b(32)
        return function()
            local a6, a7 = game:GetService "RunService", a3(W.Parent.BaseMotor)
            describe(
                "connection management",
                function()
                    local a8 = a7.new()
                    it(
                        "should hook up connections on :start()",
                        function()
                            a8:start()
                            expect(typeof(a8._connection)).to.equal "RBXScriptConnection"
                        end
                    )
                    it(
                        "should remove connections on :stop() or :destroy()",
                        function()
                            a8:stop()
                            expect(a8._connection).to.equal(nil)
                        end
                    )
                end
            )
            it(
                "should call :step() with deltaTime",
                function()
                    local a8, a9 = a7.new()
                    function a8.step(aa, ...)
                        a9 = {...}
                        a8:stop()
                    end
                    a8:start()
                    local aa = a6.RenderStepped:Wait()
                    a6.RenderStepped:Wait()
                    expect(a9).to.be.ok()
                    expect(a9[1]).to.equal(aa)
                end
            )
        end
    end,
    [33] = function()
        local c, W, a3, a4, a5 = b(33)
        local a6, a7, a8 = a3(W.Parent.BaseMotor), a3(W.Parent.SingleMotor), a3(W.Parent.isMotor)
        local a9 = setmetatable({}, a6)
        a9.__index = a9
        local aa = function(aa)
            if a8(aa) then
                return aa
            end
            local d = typeof(aa)
            if d == "number" then
                return a7.new(aa, false)
            elseif d == "table" then
                return a9.new(aa, false)
            end
            error(("Unable to convert %q to motor; type %s is unsupported"):format(aa, d), 2)
        end
        function a9.new(d, e)
            assert(d, "Missing argument #1: initialValues")
            assert(typeof(d) == "table", "initialValues must be a table!")
            assert(
                not d.step,
                [[initialValues contains disallowed property "step". Did you mean to put a table of values here?]]
            )
            local f = setmetatable(a6.new(), a9)
            if e ~= nil then
                f._useImplicitConnections = e
            else
                f._useImplicitConnections = true
            end
            f._complete = true
            f._motors = {}
            for g, h in pairs(d) do
                f._motors[g] = aa(h)
            end
            return f
        end
        function a9.step(d, e)
            if d._complete then
                return true
            end
            local f = true
            for g, h in pairs(d._motors) do
                local i = h:step(e)
                if not i then
                    f = false
                end
            end
            d._onStep:fire(d:getValue())
            if f then
                if d._useImplicitConnections then
                    d:stop()
                end
                d._complete = true
                d._onComplete:fire()
            end
            return f
        end
        function a9.setGoal(d, e)
            assert(
                not e.step,
                [[goals contains disallowed property "step". Did you mean to put a table of goals here?]]
            )
            d._complete = false
            d._onStart:fire()
            for f, g in pairs(e) do
                local h = assert(d._motors[f], ("Unknown motor for key %s"):format(f))
                h:setGoal(g)
            end
            if d._useImplicitConnections then
                d:start()
            end
        end
        function a9.getValue(d)
            local e = {}
            for f, g in pairs(d._motors) do
                e[f] = g:getValue()
            end
            return e
        end
        function a9.__tostring(d)
            return "Motor(Group)"
        end
        return a9
    end,
    [34] = function()
        local c, W, a3, a4, a5 = b(34)
        return function()
            local a6, a7, a8 = a3(W.Parent.GroupMotor), a3(W.Parent.Instant), a3(W.Parent.Spring)
            it(
                "should complete when all child motors are complete",
                function()
                    local a9 = a6.new({A = 1, B = 2}, false)
                    expect(a9._complete).to.equal(true)
                    a9:setGoal {A = a7.new(3), B = a8.new(4, {frequency = 7.5, dampingRatio = 1})}
                    expect(a9._complete).to.equal(false)
                    a9:step(1.6666666666666665E-2)
                    expect(a9._complete).to.equal(false)
                    for aa = 1, 30 do
                        a9:step(1.6666666666666665E-2)
                    end
                    expect(a9._complete).to.equal(true)
                end
            )
            it(
                "should start when the goal is set",
                function()
                    local a9, aa = a6.new({A = 0}, false), false
                    a9:onStart(
                        function()
                            aa = not aa
                        end
                    )
                    a9:setGoal {A = a7.new(1)}
                    expect(aa).to.equal(true)
                    a9:setGoal {A = a7.new(1)}
                    expect(aa).to.equal(false)
                end
            )
            it(
                "should properly return all values",
                function()
                    local a9 = a6.new({A = 1, B = 2}, false)
                    local aa = a9:getValue()
                    expect(aa.A).to.equal(1)
                    expect(aa.B).to.equal(2)
                end
            )
            it(
                "should error when a goal is given to GroupMotor.new",
                function()
                    local a9 =
                        pcall(
                        function()
                            a6.new(a7.new(0))
                        end
                    )
                    expect(a9).to.equal(false)
                end
            )
            it(
                [[should error when a single goal is provided to GroupMotor:step]],
                function()
                    local a9 =
                        pcall(
                        function()
                            a6.new {a = 1}:setGoal(a7.new(0))
                        end
                    )
                    expect(a9).to.equal(false)
                end
            )
        end
    end,
    [35] = function()
        local c, W, a3, a4, a5 = b(35)
        local a6 = {}
        a6.__index = a6
        function a6.new(a7)
            return setmetatable({_targetValue = a7}, a6)
        end
        function a6.step(a7)
            return {complete = true, value = a7._targetValue}
        end
        return a6
    end,
    [36] = function()
        local c, W, a3, a4, a5 = b(36)
        return function()
            local a6 = a3(W.Parent.Instant)
            it(
                "should return a completed state with the provided value",
                function()
                    local a7 = a6.new(1.23)
                    local a8 = a7:step(0.1, {value = 0, complete = false})
                    expect(a8.complete).to.equal(true)
                    expect(a8.value).to.equal(1.23)
                end
            )
        end
    end,
    [37] = function()
        local c, W, a3, a4, a5 = b(37)
        local a6 = {}
        a6.__index = a6
        function a6.new(a7, a8)
            assert(a7, "Missing argument #1: targetValue")
            a8 = a8 or {}
            return setmetatable({_targetValue = a7, _velocity = a8.velocity or 1}, a6)
        end
        function a6.step(a7, a8, a9)
            local aa, d, e = a8.value, a7._velocity, a7._targetValue
            local f = a9 * d
            local g = f >= math.abs(e - aa)
            aa = aa + f * (e > aa and 1 or -1)
            if g then
                aa = a7._targetValue
                d = 0
            end
            return {complete = g, value = aa, velocity = d}
        end
        return a6
    end,
    [38] = function()
        local c, W, a3, a4, a5 = b(38)
        return function()
            local a6, a7 = a3(W.Parent.SingleMotor), a3(W.Parent.Linear)
            describe(
                "completed state",
                function()
                    local a8, a9 = a6.new(0, false), a7.new(1, {velocity = 1})
                    a8:setGoal(a9)
                    for aa = 1, 60 do
                        a8:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(a8._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(a8._state.value).to.equal(1)
                        end
                    )
                end
            )
            describe(
                "uncompleted state",
                function()
                    local a8, a9 = a6.new(0, false), a7.new(1, {velocity = 1})
                    a8:setGoal(a9)
                    for aa = 1, 59 do
                        a8:step(1.6666666666666665E-2)
                    end
                    it(
                        "should be uncomplete",
                        function()
                            expect(a8._state.complete).to.equal(false)
                        end
                    )
                end
            )
            describe(
                "negative velocity",
                function()
                    local a8, a9 = a6.new(1, false), a7.new(0, {velocity = 1})
                    a8:setGoal(a9)
                    for aa = 1, 60 do
                        a8:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(a8._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(a8._state.value).to.equal(0)
                        end
                    )
                end
            )
        end
    end,
    [39] = function()
        local c, W, a3, a4, a5 = b(39)
        local a6 = {}
        a6.__index = a6
        function a6.new(a7, a8)
            return setmetatable({signal = a7, connected = true, _handler = a8}, a6)
        end
        function a6.disconnect(a7)
            if a7.connected then
                a7.connected = false
                for a8, a9 in pairs(a7.signal._connections) do
                    if a9 == a7 then
                        table.remove(a7.signal._connections, a8)
                        return
                    end
                end
            end
        end
        local a7 = {}
        a7.__index = a7
        function a7.new()
            return setmetatable({_connections = {}, _threads = {}}, a7)
        end
        function a7.fire(a8, ...)
            for a9, aa in pairs(a8._connections) do
                aa._handler(...)
            end
            for d, e in pairs(a8._threads) do
                coroutine.resume(e, ...)
            end
            a8._threads = {}
        end
        function a7.connect(a8, aa)
            local d = a6.new(a8, aa)
            table.insert(a8._connections, d)
            return d
        end
        function a7.wait(a8)
            table.insert(a8._threads, coroutine.running())
            return coroutine.yield()
        end
        return a7
    end,
    [40] = function()
        local c, W, a3, a4, a5 = b(40)
        return function()
            local a6 = a3(W.Parent.Signal)
            it(
                "should invoke all connections, instantly",
                function()
                    local a7, a8, aa = a6.new()
                    a7:connect(
                        function(d)
                            a8 = d
                        end
                    )
                    a7:connect(
                        function(d)
                            aa = d
                        end
                    )
                    a7:fire "hello"
                    expect(a8).to.equal "hello"
                    expect(aa).to.equal "hello"
                end
            )
            it(
                "should return values when :wait() is called",
                function()
                    local a7 = a6.new()
                    spawn(
                        function()
                            a7:fire(123, "hello")
                        end
                    )
                    local a8, aa = a7:wait()
                    expect(a8).to.equal(123)
                    expect(aa).to.equal "hello"
                end
            )
            it(
                "should properly handle disconnections",
                function()
                    local a7, a8 = a6.new(), false
                    local aa =
                        a7:connect(
                        function()
                            a8 = true
                        end
                    )
                    aa:disconnect()
                    a7:fire()
                    expect(a8).to.equal(false)
                end
            )
        end
    end,
    [41] = function()
        local c, W, a3, a4, a5 = b(41)
        local a6 = a3(W.Parent.BaseMotor)
        local a7 = setmetatable({}, a6)
        a7.__index = a7
        function a7.new(a8, aa)
            assert(a8, "Missing argument #1: initialValue")
            assert(typeof(a8) == "number", "initialValue must be a number!")
            local d = setmetatable(a6.new(), a7)
            if aa ~= nil then
                d._useImplicitConnections = aa
            else
                d._useImplicitConnections = true
            end
            d._goal = nil
            d._state = {complete = true, value = a8}
            return d
        end
        function a7.step(a8, aa)
            if a8._state.complete then
                return true
            end
            local d = a8._goal:step(a8._state, aa)
            a8._state = d
            a8._onStep:fire(d.value)
            if d.complete then
                if a8._useImplicitConnections then
                    a8:stop()
                end
                a8._onComplete:fire()
            end
            return d.complete
        end
        function a7.getValue(a8)
            return a8._state.value
        end
        function a7.setGoal(a8, aa)
            a8._state.complete = false
            a8._goal = aa
            a8._onStart:fire()
            if a8._useImplicitConnections then
                a8:start()
            end
        end
        function a7.__tostring(a8)
            return "Motor(Single)"
        end
        return a7
    end,
    [42] = function()
        local c, W, a3, a4, a5 = b(42)
        return function()
            local a6, a7 = a3(W.Parent.SingleMotor), a3(W.Parent.Instant)
            it(
                "should assign new state on step",
                function()
                    local a8 = a6.new(0, false)
                    a8:setGoal(a7.new(5))
                    a8:step(1.6666666666666665E-2)
                    expect(a8._state.complete).to.equal(true)
                    expect(a8._state.value).to.equal(5)
                end
            )
            it(
                [[should invoke onComplete listeners when the goal is completed]],
                function()
                    local a8, aa = a6.new(0, false), false
                    a8:onComplete(
                        function()
                            aa = true
                        end
                    )
                    a8:setGoal(a7.new(5))
                    a8:step(1.6666666666666665E-2)
                    expect(aa).to.equal(true)
                end
            )
            it(
                "should start when the goal is set",
                function()
                    local a8, aa = a6.new(0, false), false
                    a8:onStart(
                        function()
                            aa = not aa
                        end
                    )
                    a8:setGoal(a7.new(5))
                    expect(aa).to.equal(true)
                    a8:setGoal(a7.new(5))
                    expect(aa).to.equal(false)
                end
            )
        end
    end,
    [43] = function()
        local c, W, a3, a4, a5 = b(43)
        local a6, a7, a8, aa = 0.001, 0.001, 0.0001, {}
        aa.__index = aa
        function aa.new(d, e)
            assert(d, "Missing argument #1: targetValue")
            e = e or {}
            return setmetatable(
                {_targetValue = d, _frequency = e.frequency or 4, _dampingRatio = e.dampingRatio or 1},
                aa
            )
        end
        function aa.step(d, e, f)
            local g, h, i, j, k = d._dampingRatio, d._frequency * 2 * math.pi, d._targetValue, e.value, e.velocity or 0
            local l, m, n, o = j - i, math.exp(-g * h * f)
            if g == 1 then
                n = (l * (1 + h * f) + k * f) * m + i
                o = (k * (1 - h * f) - l * h * h * f) * m
            elseif g < 1 then
                local p = math.sqrt(1 - g * g)
                local q, t, u = math.cos(h * p * f), math.sin(h * p * f)
                if p > a8 then
                    u = t / p
                else
                    local v = f * h
                    u = v + (v * v * p * p * p * p / 20 - p * p) * v * v * v / 6
                end
                local v
                if h * p > a8 then
                    v = t / (h * p)
                else
                    local w = h * p
                    v = f + (f * f * w * w * w * w / 20 - w * w) * f * f * f / 6
                end
                n = (l * (q + g * u) + k * v) * m + i
                o = (k * (q - u * g) - l * u * h) * m
            else
                local p = math.sqrt(g * g - 1)
                local q, t = -h * (g - p), -h * (g + p)
                local u = (k - l * q) / (2 * h * p)
                local v = l - u
                local w, x = v * math.exp(q * f), u * math.exp(t * f)
                n = w + x + i
                o = w * q + x * t
            end
            local p = math.abs(o) < a6 and math.abs(n - i) < a7
            return {complete = p, value = p and i or n, velocity = o}
        end
        return aa
    end,
    [44] = function()
        local c, W, a3, a4, a5 = b(44)
        return function()
            local a6, a7 = a3(W.Parent.SingleMotor), a3(W.Parent.Spring)
            describe(
                "completed state",
                function()
                    local a8, aa = a6.new(0, false), a7.new(1, {frequency = 2, dampingRatio = 0.75})
                    a8:setGoal(aa)
                    for d = 1, 100 do
                        a8:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(a8._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(a8._state.value).to.equal(1)
                        end
                    )
                end
            )
            it(
                "should inherit velocity",
                function()
                    local a8 = a6.new(0, false)
                    a8._state = {complete = false, value = 0, velocity = -5}
                    local aa = a7.new(1, {frequency = 2, dampingRatio = 1})
                    a8:setGoal(aa)
                    a8:step(1.6666666666666665E-2)
                    expect(a8._state.velocity < 0).to.equal(true)
                end
            )
        end
    end,
    [45] = function()
        local c, W, a3, a4, a5 = b(45)
        local a6 = function(a6)
            local a7 = tostring(a6):match "^Motor%((.+)%)$"
            if a7 then
                return true, a7
            else
                return false
            end
        end
        return a6
    end,
    [46] = function()
        local c, W, a3, a4, a5 = b(46)
        return function()
            local a6, a7, a8 = a3(W.Parent.isMotor), a3(W.Parent.SingleMotor), a3(W.Parent.GroupMotor)
            local aa, d = a7.new(0), a8.new {}
            it(
                "should properly detect motors",
                function()
                    expect(a6(aa)).to.equal(true)
                    expect(a6(d)).to.equal(true)
                end
            )
            it(
                "shouldn't detect things that aren't motors",
                function()
                    expect(a6 {}).to.equal(false)
                end
            )
            it(
                "should return the proper motor type",
                function()
                    local e, f = a6(aa)
                    local g, h = a6(d)
                    expect(f).to.equal "Single"
                    expect(h).to.equal "Group"
                end
            )
        end
    end,
    [47] = function()
        local c, W, a3, a4, a5 = b(47)
        local a6 = {
            Names = {
                "Twilight",
                "Autumn Glow",
                "Starry Night",
                "Deep Ocean",
                "Forest Serenity",
                "Crimson Shadow",
                "Celestial Serenity",
                "Aurora Borealis",
                "Galactic Glow"
            }
        }
        for a7, a8 in next, W:GetChildren() do
            local aa = a3(a8)
            a6[aa.Name] = aa
        end
        return a6
    end,
    [48] = function()
        local c, W, a3, a4, a5 = b(48)
        return {
            Name = "Forest Serenity",
            Accent = Color3.fromRGB(50, 120, 60),
            AcrylicMain = Color3.fromRGB(10, 30, 10),
            AcrylicBorder = Color3.fromRGB(30, 70, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(20, 50, 20), Color3.fromRGB(15, 40, 15)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(30, 70, 40),
            Tab = Color3.fromRGB(60, 100, 70),
            Element = Color3.fromRGB(80, 120, 90),
            ElementBorder = Color3.fromRGB(30, 50, 30),
            InElementBorder = Color3.fromRGB(50, 80, 60),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(80, 120, 90),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(80, 120, 90),
            DropdownFrame = Color3.fromRGB(100, 140, 110),
            DropdownHolder = Color3.fromRGB(30, 50, 40),
            DropdownBorder = Color3.fromRGB(20, 30, 20),
            DropdownOption = Color3.fromRGB(80, 120, 90),
            Keybind = Color3.fromRGB(80, 120, 90),
            Input = Color3.fromRGB(100, 140, 110),
            InputFocused = Color3.fromRGB(10, 20, 10),
            InputIndicator = Color3.fromRGB(70, 100, 80),
            Dialog = Color3.fromRGB(30, 50, 40),
            DialogHolder = Color3.fromRGB(20, 30, 20),
            DialogHolderLine = Color3.fromRGB(15, 20, 15),
            DialogButton = Color3.fromRGB(30, 50, 40),
            DialogButtonBorder = Color3.fromRGB(50, 80, 60),
            DialogBorder = Color3.fromRGB(40, 60, 50),
            DialogInput = Color3.fromRGB(40, 70, 50),
            DialogInputLine = Color3.fromRGB(100, 140, 110),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(80, 120, 90),
            HoverChange = 0.04
        }
    end,
    [49] = function()
        local c, W, a3, a4, a5 = b(49)
        return {
            Name = "Deep Ocean",
            Accent = Color3.fromRGB(0, 120, 150),
            AcrylicMain = Color3.fromRGB(10, 20, 30),
            AcrylicBorder = Color3.fromRGB(20, 40, 60),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 25, 35), Color3.fromRGB(10, 20, 30)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(20, 40, 60),
            Tab = Color3.fromRGB(30, 60, 90),
            Element = Color3.fromRGB(40, 80, 120),
            ElementBorder = Color3.fromRGB(20, 40, 60),
            InElementBorder = Color3.fromRGB(30, 60, 90),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(40, 80, 120),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(40, 80, 120),
            DropdownFrame = Color3.fromRGB(50, 100, 150),
            DropdownHolder = Color3.fromRGB(15, 30, 45),
            DropdownBorder = Color3.fromRGB(10, 20, 30),
            DropdownOption = Color3.fromRGB(40, 80, 120),
            Keybind = Color3.fromRGB(40, 80, 120),
            Input = Color3.fromRGB(50, 100, 150),
            InputFocused = Color3.fromRGB(10, 20, 30),
            InputIndicator = Color3.fromRGB(35, 70, 105),
            Dialog = Color3.fromRGB(15, 30, 45),
            DialogHolder = Color3.fromRGB(10, 20, 30),
            DialogHolderLine = Color3.fromRGB(5, 10, 15),
            DialogButton = Color3.fromRGB(15, 30, 45),
            DialogButtonBorder = Color3.fromRGB(20, 40, 60),
            DialogBorder = Color3.fromRGB(15, 30, 45),
            DialogInput = Color3.fromRGB(20, 40, 60),
            DialogInputLine = Color3.fromRGB(50, 100, 150),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(40, 80, 120),
            HoverChange = 0.04
        }
    end,
    [50] = function()
        local c, W, a3, a4, a5 = b(54)
        return {
            Name = "Twilight",
            Accent = Color3.fromRGB(100, 50, 150),
            AcrylicMain = Color3.fromRGB(15, 11, 38),
            AcrylicBorder = Color3.fromRGB(40, 20, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 5, 25), Color3.fromRGB(10, 0, 20)),
            AcrylicNoise = 0.95,
            TitleBarLine = Color3.fromRGB(40, 20, 60),
            Tab = Color3.fromRGB(60, 30, 90),
            Element = Color3.fromRGB(80, 40, 120),
            ElementBorder = Color3.fromRGB(30, 15, 45),
            InElementBorder = Color3.fromRGB(70, 35, 105),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(142, 139, 151), -- สี่ค่าเริ่ม ต้นToggle
            ToggleToggled = Color3.fromRGB(126, 88, 230), --สี เมื่อเป็น true
            SliderRail = Color3.fromRGB(80, 40, 120),
            DropdownFrame = Color3.fromRGB(120, 60, 180),
            DropdownHolder = Color3.fromRGB(40, 20, 60),
            DropdownBorder = Color3.fromRGB(30, 15, 45),
            DropdownOption = Color3.fromRGB(80, 40, 120),
            Keybind = Color3.fromRGB(80, 40, 120),
            Input = Color3.fromRGB(120, 60, 180),
            InputFocused = Color3.fromRGB(10, 20, 30),
            InputIndicator = Color3.fromRGB(100, 70, 130),
            Dialog = Color3.fromRGB(40, 20, 60),
            DialogHolder = Color3.fromRGB(30, 15, 45),
            DialogHolderLine = Color3.fromRGB(15, 11, 38),
            DialogButton = Color3.fromRGB(40, 20, 60),
            DialogButtonBorder = Color3.fromRGB(60, 30, 90),
            DialogBorder = Color3.fromRGB(50, 25, 75),
            DialogInput = Color3.fromRGB(40, 20, 60),
            DialogInputLine = Color3.fromRGB(120, 60, 180),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(80, 40, 120),
            HoverChange = 0.07
        }
    end,
    [51] = function()
        local c, W, a3, a4, a5 = b(51)
        return {
            Name = "Autumn Glow",
            Accent = Color3.fromRGB(230, 120, 50),
            AcrylicMain = Color3.fromRGB(40, 20, 10),
            AcrylicBorder = Color3.fromRGB(90, 60, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 30, 10), Color3.fromRGB(40, 20, 5)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(80, 50, 20),
            Tab = Color3.fromRGB(120, 80, 40),
            Element = Color3.fromRGB(150, 100, 50),
            ElementBorder = Color3.fromRGB(80, 40, 20),
            InElementBorder = Color3.fromRGB(100, 60, 30),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(150, 100, 50),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(150, 100, 50),
            DropdownFrame = Color3.fromRGB(170, 120, 70),
            DropdownHolder = Color3.fromRGB(60, 30, 15),
            DropdownBorder = Color3.fromRGB(40, 20, 10),
            DropdownOption = Color3.fromRGB(150, 100, 50),
            Keybind = Color3.fromRGB(150, 100, 50),
            Input = Color3.fromRGB(170, 120, 70),
            InputFocused = Color3.fromRGB(30, 15, 5),
            InputIndicator = Color3.fromRGB(140, 90, 45),
            Dialog = Color3.fromRGB(60, 30, 15),
            DialogHolder = Color3.fromRGB(40, 20, 10),
            DialogHolderLine = Color3.fromRGB(20, 10, 5),
            DialogButton = Color3.fromRGB(60, 30, 15),
            DialogButtonBorder = Color3.fromRGB(90, 60, 30),
            DialogBorder = Color3.fromRGB(70, 40, 20),
            DialogInput = Color3.fromRGB(80, 40, 20),
            DialogInputLine = Color3.fromRGB(170, 120, 70),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(150, 100, 50),
            HoverChange = 0.04
        }
    end,
    [52] = function()
        local c, W, a3, a4, a5 = b(52)
        return {
            Name = "Starry Night",
            Accent = Color3.fromRGB(30, 50, 120),
            AcrylicMain = Color3.fromRGB(10, 10, 20),
            AcrylicBorder = Color3.fromRGB(30, 30, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(20, 20, 40), Color3.fromRGB(10, 10, 20)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(30, 30, 50),
            Tab = Color3.fromRGB(50, 50, 90),
            Element = Color3.fromRGB(70, 70, 120),
            ElementBorder = Color3.fromRGB(40, 40, 70),
            InElementBorder = Color3.fromRGB(50, 50, 90),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(70, 70, 120),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(70, 70, 120),
            DropdownFrame = Color3.fromRGB(90, 90, 130),
            DropdownHolder = Color3.fromRGB(20, 20, 40),
            DropdownBorder = Color3.fromRGB(10, 10, 20),
            DropdownOption = Color3.fromRGB(70, 70, 120),
            Keybind = Color3.fromRGB(70, 70, 120),
            Input = Color3.fromRGB(90, 90, 130),
            InputFocused = Color3.fromRGB(5, 5, 10),
            InputIndicator = Color3.fromRGB(60, 60, 110),
            Dialog = Color3.fromRGB(20, 20, 40),
            DialogHolder = Color3.fromRGB(10, 10, 20),
            DialogHolderLine = Color3.fromRGB(5, 5, 10),
            DialogButton = Color3.fromRGB(20, 20, 40),
            DialogButtonBorder = Color3.fromRGB(40, 40, 70),
            DialogBorder = Color3.fromRGB(30, 30, 50),
            DialogInput = Color3.fromRGB(40, 40, 70),
            DialogInputLine = Color3.fromRGB(90, 90, 130),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(70, 70, 120),
            HoverChange = 0.04
        }
    end,
    [53] = function()
        local c, W, a3, a4, a5 = b(53)
        return {
            Name = "Crimson Shadow",
            Accent = Color3.fromRGB(120, 0, 0),
            AcrylicMain = Color3.fromRGB(20, 10, 10),
            AcrylicBorder = Color3.fromRGB(70, 30, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 10, 10), Color3.fromRGB(30, 0, 0)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(60, 20, 20),
            Tab = Color3.fromRGB(80, 40, 40),
            Element = Color3.fromRGB(90, 45, 45),
            ElementBorder = Color3.fromRGB(50, 20, 20),
            InElementBorder = Color3.fromRGB(60, 30, 30),
            ElementTransparency = 0.86,
            ToggleSlider = Color3.fromRGB(90, 45, 45),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(90, 45, 45),
            DropdownFrame = Color3.fromRGB(110, 60, 60),
            DropdownHolder = Color3.fromRGB(40, 10, 10),
            DropdownBorder = Color3.fromRGB(25, 0, 0),
            DropdownOption = Color3.fromRGB(90, 45, 45),
            Keybind = Color3.fromRGB(90, 45, 45),
            Input = Color3.fromRGB(110, 60, 60),
            InputFocused = Color3.fromRGB(15, 10, 10),
            InputIndicator = Color3.fromRGB(80, 50, 50),
            Dialog = Color3.fromRGB(40, 10, 10),
            DialogHolder = Color3.fromRGB(30, 0, 0),
            DialogHolderLine = Color3.fromRGB(20, 0, 0),
            DialogButton = Color3.fromRGB(40, 10, 10),
            DialogButtonBorder = Color3.fromRGB(70, 30, 30),
            DialogBorder = Color3.fromRGB(40, 20, 20),
            DialogInput = Color3.fromRGB(50, 10, 10),
            DialogInputLine = Color3.fromRGB(110, 60, 60),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(90, 45, 45),
            HoverChange = 0.04
        }
    end,
    [54] = function()
        local c, W, a3, a4, a5 = b(54)
        return {
            Name = "Celestial Serenity",
            Accent = Color3.fromRGB(70, 100, 180),
            AcrylicMain = Color3.fromRGB(20, 30, 60),
            AcrylicBorder = Color3.fromRGB(40, 60, 100),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(30, 40, 80), Color3.fromRGB(15, 20, 40)),
            AcrylicNoise = 0.88,
            TitleBarLine = Color3.fromRGB(40, 60, 100),
            Tab = Color3.fromRGB(50, 80, 140),
            Element = Color3.fromRGB(60, 90, 160),
            ElementBorder = Color3.fromRGB(30, 50, 90),
            InElementBorder = Color3.fromRGB(50, 70, 120),
            ElementTransparency = 0.85,
            ToggleSlider = Color3.fromRGB(60, 90, 160),
            ToggleToggled = Color3.fromRGB(10, 10, 20),
            SliderRail = Color3.fromRGB(60, 90, 160),
            DropdownFrame = Color3.fromRGB(80, 110, 180),
            DropdownHolder = Color3.fromRGB(25, 40, 70),
            DropdownBorder = Color3.fromRGB(15, 25, 45),
            DropdownOption = Color3.fromRGB(60, 90, 160),
            Keybind = Color3.fromRGB(60, 90, 160),
            Input = Color3.fromRGB(80, 110, 180),
            InputFocused = Color3.fromRGB(15, 20, 40),
            InputIndicator = Color3.fromRGB(70, 100, 160),
            Dialog = Color3.fromRGB(25, 40, 70),
            DialogHolder = Color3.fromRGB(15, 25, 45),
            DialogHolderLine = Color3.fromRGB(10, 15, 30),
            DialogButton = Color3.fromRGB(25, 40, 70),
            DialogButtonBorder = Color3.fromRGB(40, 60, 100),
            DialogBorder = Color3.fromRGB(35, 50, 80),
            DialogInput = Color3.fromRGB(30, 45, 75),
            DialogInputLine = Color3.fromRGB(80, 110, 180),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(60, 90, 160),
            HoverChange = 0.06
        }
    end,
    [55] = function()
        local c, W, a3, a4, a5 = b(55)
        return {
            Name = "Aurora Borealis",
            Accent = Color3.fromRGB(50, 120, 180),
            AcrylicMain = Color3.fromRGB(10, 30, 40),
            AcrylicBorder = Color3.fromRGB(20, 50, 70),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 40, 60), Color3.fromRGB(10, 25, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(20, 50, 70),
            Tab = Color3.fromRGB(30, 70, 100),
            Element = Color3.fromRGB(40, 90, 130),
            ElementBorder = Color3.fromRGB(20, 60, 80),
            InElementBorder = Color3.fromRGB(30, 80, 110),
            ElementTransparency = 0.85,
            ToggleSlider = Color3.fromRGB(40, 90, 130),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(40, 90, 130),
            DropdownFrame = Color3.fromRGB(60, 120, 160),
            DropdownHolder = Color3.fromRGB(15, 50, 70),
            DropdownBorder = Color3.fromRGB(10, 30, 40),
            DropdownOption = Color3.fromRGB(40, 90, 130),
            Keybind = Color3.fromRGB(40, 90, 130),
            Input = Color3.fromRGB(60, 120, 160),
            InputFocused = Color3.fromRGB(10, 30, 40),
            InputIndicator = Color3.fromRGB(50, 110, 150),
            Dialog = Color3.fromRGB(15, 50, 70),
            DialogHolder = Color3.fromRGB(10, 30, 40),
            DialogHolderLine = Color3.fromRGB(5, 20, 30),
            DialogButton = Color3.fromRGB(15, 50, 70),
            DialogButtonBorder = Color3.fromRGB(30, 70, 100),
            DialogBorder = Color3.fromRGB(25, 60, 80),
            DialogInput = Color3.fromRGB(20, 50, 70),
            DialogInputLine = Color3.fromRGB(60, 120, 160),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(40, 90, 130),
            HoverChange = 0.05
        }
    end,
    [56] = function()
        local c, W, a3, a4, a5 = b(56)
        return {
            Name = "Galactic Glow",
            Accent = Color3.fromRGB(120, 50, 150),
            AcrylicMain = Color3.fromRGB(30, 20, 50),
            AcrylicBorder = Color3.fromRGB(60, 40, 80),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 30, 70), Color3.fromRGB(20, 15, 35)),
            AcrylicNoise = 0.88,
            TitleBarLine = Color3.fromRGB(60, 40, 80),
            Tab = Color3.fromRGB(90, 60, 110),
            Element = Color3.fromRGB(120, 80, 150),
            ElementBorder = Color3.fromRGB(50, 30, 70),
            InElementBorder = Color3.fromRGB(110, 70, 130),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(120, 80, 150),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(120, 80, 150),
            DropdownFrame = Color3.fromRGB(150, 100, 180),
            DropdownHolder = Color3.fromRGB(40, 25, 60),
            DropdownBorder = Color3.fromRGB(30, 20, 50),
            DropdownOption = Color3.fromRGB(120, 80, 150),
            Keybind = Color3.fromRGB(120, 80, 150),
            Input = Color3.fromRGB(150, 100, 180),
            InputFocused = Color3.fromRGB(20, 15, 35),
            InputIndicator = Color3.fromRGB(130, 90, 160),
            Dialog = Color3.fromRGB(40, 25, 60),
            DialogHolder = Color3.fromRGB(30, 20, 50),
            DialogHolderLine = Color3.fromRGB(15, 10, 30),
            DialogButton = Color3.fromRGB(40, 25, 60),
            DialogButtonBorder = Color3.fromRGB(60, 40, 80),
            DialogBorder = Color3.fromRGB(50, 30, 70),
            DialogInput = Color3.fromRGB(40, 25, 60),
            DialogInputLine = Color3.fromRGB(150, 100, 180),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(120, 80, 150),
            HoverChange = 0.06
        }
    end
}
do
    local W, a3, a4, a5, a6, a7, a8, aa, d, f, g, h, i, j, k, l =
        task,
        setmetatable,
        error,
        newproxy,
        getmetatable,
        next,
        table,
        unpack,
        coroutine,
        script,
        type,
        require,
        pcall,
        getfenv,
        setfenv,
        rawget
    local m, n, o, p, q, t, u, v, w, x, y = a8.insert, a8.remove, a8.freeze or function(m)
                return m
            end, W and W.defer or function(m, ...)
                local n = d.create(m)
                d.resume(n, ...)
                return n
            end, "0.0.0-venv", {}, {}, {}, {}, {}, {}
    local z, A = {GetChildren = function(z)
                local A, B = y[z], {}
                for C in a7, A do
                    m(B, C)
                end
                return B
            end, FindFirstChild = function(z, A)
                if not A then
                    a4("Argument 1 missing or nil", 2)
                end
                for B in a7, y[z] do
                    if B.Name == A then
                        return B
                    end
                end
                return
            end, GetFullName = function(z)
                local A, B = z.Name, z.Parent
                while B do
                    A = B.Name .. "." .. A
                    B = B.Parent
                end
                return "VirtualEnv." .. A
            end}, {}
    for B, C in a7, z do
        A[B] = function(D, ...)
            if not y[D] then
                a4("Expected ':' not '.' calling member function " .. B, 1)
            end
            return C(D, ...)
        end
    end
    local D = function(D, E, F)
        local I, J, K, L, M = a3({}, {__mode = "k"}), function(I)
                a4(I .. " is not a valid (virtual) member of " .. D .. ' "' .. E .. '"', 1)
            end, function(I)
                a4("Unable to assign (virtual) property " .. I .. ". Property is read only", 1)
            end, a5(true)
        local N = a6(L)
        N.__index = function(O, P)
            if P == "ClassName" then
                return D
            elseif P == "Name" then
                return E
            elseif P == "Parent" then
                return F
            elseif D == "StringValue" and P == "Value" then
                return M
            else
                local Q = A[P]
                if Q then
                    return Q
                end
            end
            for Q in a7, I do
                if Q.Name == P then
                    return Q
                end
            end
            J(P)
        end
        N.__newindex = function(O, P, Q)
            if P == "ClassName" then
                K(P)
            elseif P == "Name" then
                E = Q
            elseif P == "Parent" then
                if Q == L then
                    return
                end
                if F ~= nil then
                    y[F][L] = nil
                end
                F = Q
                if Q ~= nil then
                    y[Q][L] = true
                end
            elseif D == "StringValue" and P == "Value" then
                M = Q
            else
                J(P)
            end
        end
        N.__tostring = function()
            return E
        end
        y[L] = I
        if F ~= nil then
            y[F][L] = true
        end
        return L
    end
    local function E(F, I)
        local J, K, L, M = F[1], F[2], F[3], F[4]
        local N = n(L, 1)
        local O = D(K, N, I)
        t[J] = O
        if L then
            for P, Q in a7, L do
                O[P] = Q
            end
        end
        if M then
            for P, Q in a7, M do
                E(Q, O)
            end
        end
        return O
    end
    local F = {}
    for I, J in a7, a do
        m(F, E(J))
    end
    for K, L in a7, c do
        local M = t[K]
        u[M] = L
        local N = M.ClassName
        if N == "LocalScript" or N == "Script" then
            m(w, M)
        end
    end
    local M = function(M)
        local N, O = M.ClassName, v[M]
        if O and N == "ModuleScript" then
            return aa(O)
        end
        local P = u[M]
        if not P then
            return
        end
        if N == "LocalScript" or N == "Script" then
            P()
            return
        else
            local Q = {P()}
            v[M] = Q
            return aa(Q)
        end
    end
    function b(N)
        local O = t[N]
        local P = u[O]
        if not P then
            return
        end
        local Q, R, S, T, U, V, X = false, o {Version = q, Script = f, Shared = x, GetScript = function()
                    return f
                end, GetShared = function()
                    return x
                end}, O, function(Q, ...)
                if y[Q] and Q.ClassName == "ModuleScript" and u[Q] then
                    return M(Q)
                end
                return h(Q, ...)
            end
        local Y, Z = function(Y, ...)
                if not Q then
                    X()
                end
                if g(Y) == "number" and Y >= 0 then
                    if Y == 0 then
                        return V
                    else
                        Y = Y + 1
                        local Z, _ = i(j, Y)
                        if Z and _ == U then
                            return V
                        end
                    end
                end
                return j(Y, ...)
            end, function(Y, Z, ...)
                if not Q then
                    X()
                end
                if g(Y) == "number" and Y >= 0 then
                    if Y == 0 then
                        return k(V, Z)
                    else
                        Y = Y + 1
                        local _, a0 = i(j, Y)
                        if _ and a0 == U then
                            return k(V, Z)
                        end
                    end
                end
                return k(Y, Z, ...)
            end
        function X()
            U = j(0)
            local _ = {maui = R, script = S, require = T, getfenv = Y, setfenv = Z}
            V =
                a3(
                {},
                {__index = function(a0, a1)
                        local a2 = l(V, a1)
                        if a2 ~= nil then
                            return a2
                        end
                        local G = _[a1]
                        if G ~= nil then
                            return G
                        end
                        return U[a1]
                    end}
            )
            k(P, V)
            Q = true
        end
        return R, S, T, Y, Z
    end
    for N, O in a7, w do
        p(M, O)
    end
    do
        local P
        for Q, R in a7, F do
            if R.ClassName == "ModuleScript" and R.Name == "MainModule" then
                P = R
                break
            end
        end
        if P then
            if getfenv().ECL_SECRET_ENV_MAIN then
                return M(P)
            end
        end
    end
end
