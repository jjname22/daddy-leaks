--[[
    Made by samet

    Assign different flags to each element to prevent from configs overriding eachother
    Example script is at the bottom

    Documentation:
    function Library:Window(Data: table
        Name/name: string,
        Size/size: UDim2
    )

    function Window:Page(Data: table
        Name/name: string,
        Columns/columns: number,
        SubTabs/subtabs: boolean
    )

    function Page:SubPage(Data: table
        Icon/icon: string,
        Columns/columns: number
    )

    function Page:Section(Data: table
        Name/name: string,
        Side/side: number,
    )

    function Page:MultiSection(Data: table
        Sections/sections: table,
        Side/side: number
    )

    function Page:ScrollableSection(Data: table
        Name/name: string,
        Side/side: number,
        Size/size: number
    )

    function Section:Divider()

    function Section:Label(Data: table
        Name/name: string,
        Alignment/alignment: string
    )

    function Section:Toggle(Data: table
        Name/name: string,
        Default/default: boolean,
        Flag/flag: string,
        Callback/callback: function
    )

    function Section:Button(Data: table
        Name/name: string,
        Callback/callback: function
    )

    function Section:Slider(Data: table
        Name/name: string,
        Min/min: number,
        Max/max: number,
        Decimals/decimals: number,
        Default/default: number,
        Suffix/suffix: string,
        Flag/flag: string,
        Callback/callback: function
    )

    function Section:Textbox(Data: table
        Name/name: string,
        Default/default: string,
        Placeholder/placeholder: string,
        Flag/flag: string,
        Callback/callback: function
    )

    function Section:Dropdown(Data: table
        Name/name: string,
        Items/items: table,
        Default/default: string,
        Flag/flag: string,
        Multi/multi: boolean,
        Callback/callback: function
    )

    function Section:Listbox(Data: table
        Size/size: number,
        Items/items: table,
        Default/default: string,
        Multi/multi: boolean,
        Flag/flag: string,
        Callback/callback: function
    )

    function Label:Keybind(Data: table
        Name/name: string,
        Mode/mode: string,
        Default/default: EnumItem,
        Flag/flag: string,
        Callback/callback: function
    )

    function Label:Colorpicker(Data: table
        Name/name: string,
        Default/default: Color3,
        Alpha/alpha: boolean,
        Flag/flag: string,
        Callback/callback: function
    )

    function Toggle:Colorpicker(Data: table
        Name/name: string,
        Default/default: Color3,
        Alpha/alpha: boolean,
        Flag/flag: string,
        Callback/callback: function
    )

    function Toggle:Keybind(Data: table
        Name/name: string,
        Mode/mode: string,
        Default/default: EnumItem,
        Flag/flag: string,
        Callback/callback: function
    )

    function Sections:Textbox(Data: table
        Name/name: string,
        Default/default: string,
        Placeholder/placeholder: string,
        Flag/flag: string,
        Callback/callback: function
    )

    function Library:Watermark(Name: string)
    function Library:Notification(Text: string, Duration: number, Color: Color3, Icon: table)
    function Library:KeybindList()
]]

local LoadingTick = os.clock()

if getgenv().Library then 
    getgenv().Library:Unload()
end

local Library do
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local Workspace = game:GetService("Workspace")
    local HttpService = game:GetService("HttpService")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local CoreGui = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")

    gethui = gethui or function()
        return CoreGui
    end

    local LocalPlayer = Players.LocalPlayer
    local Camera = Workspace.CurrentCamera
    local Mouse = LocalPlayer:GetMouse()

    local FromRGB = Color3.fromRGB
    local FromHSV = Color3.fromHSV
    local FromHex = Color3.fromHex

    local RGBSequence = ColorSequence.new
    local RGBSequenceKeypoint = ColorSequenceKeypoint.new

    local NumSequence = NumberSequence.new
    local NumSequenceKeypoint = NumberSequenceKeypoint.new

    local UDim2New = UDim2.new
    local UDim2FromOffset = UDim2.fromOffset
    local UDimNew = UDim.new
    local Vector2New = Vector2.new

    local InstanceNew = Instance.new

    local MathClamp = math.clamp
    local MathFloor = math.floor

    local TableInsert = table.insert
    local TableFind = table.find
    local TableRemove = table.remove
    local TableConcat = table.concat
    local TableUnpack = table.unpack

    local StringFormat = string.format
    local StringFind = string.find
    local StringGSub = string.gsub

    local IsMobile = UserInputService.TouchEnabled or false

    Library = {
        Flags = { },
        
        Theme = {
            ["Background"] = FromHex("#14100f"),
            ["Inline"] = FromHex("#191614"),
            ["Page Background"] = FromHex("#28201e"),
            ["Border"] = FromHex("#120f0e"),
            ["Outline"] = FromHex("#211c1b"),
            ["Accent"] = FromHex("#ffb29d"),
            ["Element"] = FromHex("#242221"),
            ["Hovered Element"] = FromHex("#322f2f"),
            ["Text"] = FromHex("#979797"),
            ["Text Border"] = FromRGB(0, 0, 0)
        },

        MenuKeybind = Enum.KeyCode.Z, 

        Tween = {
            Time = 0.3,
            Style = Enum.EasingStyle.Exponential,
            Direction = Enum.EasingDirection.Out
        },

        Folders = {
            Directory = "scriptname",
            Configs = "scriptname/Configs",
            Assets = "scriptname/Assets"
        },

        Images = { -- you're welcome to reupload the images and replace it with your own links
            ["Saturation"] = {"Saturation.png", "https://github.com/sametexe001/images/blob/main/saturation.png?raw=true" },
            ["Value"] = { "Value.png", "https://github.com/sametexe001/images/blob/main/value.png?raw=true" },
            ["Hue"] = { "Hue.png", "https://github.com/sametexe001/images/blob/main/hue.png?raw=true" },
            ["Scrollbar"] =  { "Scrollbar.png", "https://github.com/sametexe001/images/blob/main/scrollbar.png?raw=true" },
            ["Checkers"] = { "Checkers.png", "https://github.com/sametexe001/images/blob/main/checkers.png?raw=true" },
            ["Resize"] = { "Resize.png", "https://github.com/sametexe001/images/blob/main/resize.png?raw=true" },
        },

        -- Ignore below
        Pages = { },
        Sections = { },
        Connections = { },
        Threads = { },
        ThemeMap = { },
        ThemeItems = { },

        SetFlags = { },

        UnnamedConnections = 0,
        UnnamedFlags = 0,

        Holder = nil,
        NotifHolder = nil,
        Font = nil,
        KeyList = nil,

        CurrentColorpicker = nil
    }

    Library.__index = Library
    Library.Sections.__index = Library.Sections
    Library.Pages.__index = Library.Pages

    local Keys = {
        ["Unknown"]           = "Unknown",
        ["Backspace"]         = "Back",
        ["Tab"]               = "Tab",
        ["Clear"]             = "Clear",
        ["Return"]            = "Return",
        ["Pause"]             = "Pause",
        ["Escape"]            = "Escape",
        ["Space"]             = "Space",
        ["QuotedDouble"]      = '"',
        ["Hash"]              = "#",
        ["Dollar"]            = "$",
        ["Percent"]           = "%",
        ["Ampersand"]         = "&",
        ["Quote"]             = "'",
        ["LeftParenthesis"]   = "(",
        ["RightParenthesis"]  = " )",
        ["Asterisk"]          = "*",
        ["Plus"]              = "+",
        ["Comma"]             = ",",
        ["Minus"]             = "-",
        ["Period"]            = ".",
        ["Slash"]             = "`",
        ["Three"]             = "3",
        ["Seven"]             = "7",
        ["Eight"]             = "8",
        ["Colon"]             = ":",
        ["Semicolon"]         = ";",
        ["LessThan"]          = "<",
        ["GreaterThan"]       = ">",
        ["Question"]          = "?",
        ["Equals"]            = "=",
        ["At"]                = "@",
        ["LeftBracket"]       = "LeftBracket",
        ["RightBracket"]      = "RightBracked",
        ["BackSlash"]         = "BackSlash",
        ["Caret"]             = "^",
        ["Underscore"]        = "_",
        ["Backquote"]         = "`",
        ["LeftCurly"]         = "{",
        ["Pipe"]              = "|",
        ["RightCurly"]        = "}",
        ["Tilde"]             = "~",
        ["Delete"]            = "Delete",
        ["End"]               = "End",
        ["KeypadZero"]        = "Keypad0",
        ["KeypadOne"]         = "Keypad1",
        ["KeypadTwo"]         = "Keypad2",
        ["KeypadThree"]       = "Keypad3",
        ["KeypadFour"]        = "Keypad4",
        ["KeypadFive"]        = "Keypad5",
        ["KeypadSix"]         = "Keypad6",
        ["KeypadSeven"]       = "Keypad7",
        ["KeypadEight"]       = "Keypad8",
        ["KeypadNine"]        = "Keypad9",
        ["KeypadPeriod"]      = "KeypadP",
        ["KeypadDivide"]      = "KeypadD",
        ["KeypadMultiply"]    = "KeypadM",
        ["KeypadMinus"]       = "KeypadM",
        ["KeypadPlus"]        = "KeypadP",
        ["KeypadEnter"]       = "KeypadE",
        ["KeypadEquals"]      = "KeypadE",
        ["Insert"]            = "Insert",
        ["Home"]              = "Home",
        ["PageUp"]            = "PageUp",
        ["PageDown"]          = "PageDown",
        ["RightShift"]        = "RightShift",
        ["LeftShift"]         = "LeftShift",
        ["RightControl"]      = "RightControl",
        ["LeftControl"]       = "LeftControl",
        ["LeftAlt"]           = "LeftAlt",
        ["RightAlt"]          = "RightAlt"
    }

    -- Files 
    for _, FileName in Library.Folders do
        if not isfolder(FileName) then
            makefolder(FileName)
        end
    end

    if not isfile(Library.Folders.Directory .. "/autoload.json") then
        writefile(Library.Folders.Directory .. "/autoload.json", "")
    end

    for _, ImageData in Library.Images do
        local ImageName = ImageData[1]
        local ImageLink = ImageData[2]
        
        if not isfile(Library.Folders.Assets .. "/" .. ImageName) then
            writefile(Library.Folders.Assets .. "/" .. ImageName, game:HttpGet(ImageLink))
        end
    end

    local Tween = { } do
        Tween.__index = Tween

        Tween.Create = function(self, Item, Info, Goal, IsRawItem)
            Item = IsRawItem and Item or Item.Instance
            Info = Info or TweenInfo.new(Library.Tween.Time, Library.Tween.Style, Library.Tween.Direction)

            local NewTween = {
                Tween = TweenService:Create(Item, Info, Goal),
                Info = Info,
                Goal = Goal,
                Item = Item
            }

            NewTween.Tween:Play()

            setmetatable(NewTween, Tween)

            return NewTween
        end

        Tween.Get = function(self)
            if not self.Tween then 
                return
            end

            return self.Tween, self.Info, self.Goal
        end

        Tween.Pause = function(self)
            if not self.Tween then 
                return
            end

            self.Tween:Pause()
        end

        Tween.Play = function(self)
            if not self.Tween then 
                return
            end

            self.Tween:Play()
        end

        Tween.Clean = function(self)
            if not self.Tween then 
                return
            end

            Tween:Pause()
            self = nil
        end
    end

    local Instances = { } do
        Instances.__index = Instances

        Instances.Create = function(self, Class, Properties)
            local NewItem = {
                Instance = InstanceNew(Class),
                Properties = Properties,
                Class = Class
            }

            setmetatable(NewItem, Instances)

            for Property, Value in NewItem.Properties do
                NewItem.Instance[Property] = Value
            end

            return NewItem
        end

        Instances.FadeItem = function(self, Visibility, Speed)
            local Item = self.Instance

            if Visibility == true then 
                Item.Visible = true
            end

            local Descendants = Item:GetDescendants()
            TableInsert(Descendants, Item)

            local NewTween

            for Index, Value in Descendants do 
                local TransparencyProperty = Tween:GetProperty(Value)

                if not TransparencyProperty then 
                    continue
                end

                if type(TransparencyProperty) == "table" then 
                    for _, Property in TransparencyProperty do 
                        NewTween = Tween:FadeItem(Value, Property, not Visibility, Speed)
                    end
                else
                    NewTween = Tween:FadeItem(Value, TransparencyProperty, not Visibility, Speed)
                end
            end
        end

        Instances.AddToTheme = function(self, Properties)
            if not self.Instance then 
                return
            end

            Library:AddToTheme(self, Properties)
        end

        Instances.ChangeItemTheme = function(self, Properties)
            if not self.Instance then 
                return
            end

            Library:ChangeItemTheme(self, Properties)
        end

        Instances.Connect = function(self, Event, Callback, Name)
            if not self.Instance then 
                return
            end

            if not self.Instance[Event] then 
                return
            end

            if IsMobile then 
                if Event == "MouseButton1Down" or Event == "MouseButton1Click" then
                    Event = "TouchTap"
                elseif Event == "MouseButton2Down" or Event == "MouseButton2Click" then
                    Event = "TouchLongPress"
                end
            end

            return Library:Connect(self.Instance[Event], Callback, Name)
        end

        Instances.Tween = function(self, Info, Goal)
            if not self.Instance then 
                return
            end

            return Tween:Create(self, Info, Goal)
        end

        Instances.Disconnect = function(self, Name)
            if not self.Instance then 
                return
            end

            return Library:Disconnect(Name)
        end

        Instances.Clean = function(self)
            if not self.Instance then 
                return
            end

            self.Instance:Destroy()
            self = nil
        end

        Instances.MakeDraggable = function(self)
            if not self.Instance then 
                return
            end
        
            local Gui = self.Instance
            local Dragging = false 
            local DragStart
            local StartPosition 
        
            local Set = function(Input)
                local DragDelta = Input.Position - DragStart
                local NewX = StartPosition.X.Offset + DragDelta.X
                local NewY = StartPosition.Y.Offset + DragDelta.Y

                local ScreenSize = Gui.Parent.AbsoluteSize
                local GuiSize = Gui.AbsoluteSize
        
                NewX = MathClamp(NewX, 0, ScreenSize.X - GuiSize.X)
                NewY = MathClamp(NewY, 0, ScreenSize.Y - GuiSize.Y)
        
                self:Tween(TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(0, NewX, 0, NewY)})
            end
        
            local InputChanged
        
            self:Connect("InputBegan", function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    DragStart = Input.Position
                    StartPosition = Gui.Position
        
                    if InputChanged then 
                        return
                    end
        
                    InputChanged = Input.Changed:Connect(function()
                        if Input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                            InputChanged:Disconnect()
                            InputChanged = nil
                        end
                    end)
                end
            end)
        
            Library:Connect(UserInputService.InputChanged, function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
                    if Dragging then
                        Set(Input)
                    end
                end
            end)
        
            return Dragging
        end

        Instances.MakeResizeable = function(self, Minimum, Maximum)
            if not self.Instance then 
                return
            end

            local Gui = self.Instance

            local Resizing = false 
            local CurrentSide = nil

            local StartMouse = nil 
            local StartPosition = nil 
            local StartSize = nil
            
            local EdgeThickness = 2

            local MakeEdge = function(Name, Position, Size)
                local Button = Instances:Create("TextButton", {
                    Name = "\0",
                    Size = Size,
                    Position = Position,
                    BackgroundColor3 = FromRGB(166, 147, 243),
                    BackgroundTransparency = 1,
                    Text = "",
                    BorderSizePixel = 0,
                    AutoButtonColor = false,
                    Parent = Gui,
                    ZIndex = 99999,
                })  Button:AddToTheme({BackgroundColor3 = "Accent"})

                return Button
            end

            local Edges = {
                {Button = MakeEdge(
                    "Left", 
                    UDim2New(0, 0, 0, 0), 
                    UDim2New(0, EdgeThickness, 1, 0)), 
                    Side = "L"
                },

                {Button = MakeEdge(
                    "Right", 
                    UDim2New(1, -EdgeThickness, 0, 0), 
                    UDim2New(0, EdgeThickness, 1, 0)), 
                    Side = "R"
                },

                {Button = MakeEdge(
                    "Top", UDim2New(0, 0, 0, 0), 
                    UDim2New(1, 0, 0, EdgeThickness)), 
                    Side = "T"
                },

                {Button = MakeEdge(
                    "Bottom", 
                    UDim2New(0, 0, 1, -EdgeThickness), 
                    UDim2New(1, 0, 0, EdgeThickness)), 
                    Side = "B"
                },
            }

            local BeginResizing = function(Side)
                Resizing = true 
                CurrentSide = Side 

                StartMouse = UserInputService:GetMouseLocation()

                -- store offsets, not absolute screen pos
                StartPosition = Vector2New(Gui.Position.X.Offset, Gui.Position.Y.Offset)
                StartSize = Vector2New(Gui.Size.X.Offset, Gui.Size.Y.Offset)
                
                for Index, Value in Edges do 
                    Value.Button.Instance.BackgroundTransparency = (Value.Side == Side) and 0 or 1
                end
            end

            local EndResizing = function()
                Resizing = false 
                CurrentSide = nil

                for Index, Value in Edges do 
                    Value.Button.Instance.BackgroundTransparency = 1
                end
            end

            for Index, Value in Edges do 
                Value.Button:Connect("InputBegan", function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                        BeginResizing(Value.Side)
                    end
                end)
            end

            Library:Connect(UserInputService.InputEnded, function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                    if Resizing then
                        EndResizing()
                    end
                end
            end)

            Library:Connect(RunService.RenderStepped, function()
                if not Resizing or not CurrentSide then 
                    return 
                end

                local MouseLocation = UserInputService:GetMouseLocation()
                local dx = MouseLocation.X - StartMouse.X
                local dy = MouseLocation.Y - StartMouse.Y
            
                local x, y = StartPosition.X, StartPosition.Y
                local w, h = StartSize.X, StartSize.Y

                if CurrentSide == "L" then
                    x = StartPosition.X + dx
                    w = StartSize.X - dx
                elseif CurrentSide == "R" then
                    w = StartSize.X + dx
                elseif CurrentSide == "T" then
                    y = StartPosition.Y + dy
                    h = StartSize.Y - dy
                elseif CurrentSide == "B" then
                    h = StartSize.Y + dy
                end
            
                if w < Minimum.X then
                    if CurrentSide == "L" then
                        x = x - (Minimum.X - w)
                    end
                    w = Minimum.X
                end
                if h < Minimum.Y then
                    if CurrentSide == "T" then
                        y = y - (Minimum.Y - h)
                    end
                    h = Minimum.Y
                end
            
                self:Tween(TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2FromOffset(x, y)})
                self:Tween(TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2FromOffset(w, h)})
            end)
        end

        Instances.OnHover = function(self, Function)
            if not self.Instance then 
                return
            end
            
            return Library:Connect(self.Instance.MouseEnter, Function)
        end

        Instances.OnHoverLeave = function(self, Function)
            if not self.Instance then 
                return
            end
            
            return Library:Connect(self.Instance.MouseLeave, Function)
        end
    end

    local CustomFont = { } do
        function CustomFont:New(Name, Weight, Style, Data)
            if isfile(Library.Folders.Assets .. "/" .. Name .. ".json") then
                return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
            end

            if not isfile(Library.Folders.Assets .. "/" .. Name .. ".ttf") then 
                writefile(Library.Folders.Assets .. "/" .. Name .. ".ttf", game:HttpGet(Data.Url))
            end

            local FontData = {
                name = Name,
                faces = { {
                    name = "Regular",
                    weight = Weight,
                    style = Style,
                    assetId = getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".ttf")
                } }
            }

            writefile(Library.Folders.Assets .. "/" .. Name .. ".json", HttpService:JSONEncode(FontData))
            return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
        end

        function CustomFont:Get(Name)
            if isfile(Library.Folders.Assets .. "/" .. Name .. ".json") then
                return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
            end
        end

        CustomFont:New("Windows-XP-Tahoma", 200, "Regular", {
            Url = "https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/windows-xp-tahoma.ttf"
        })

        Library.Font = CustomFont:Get("Windows-XP-Tahoma")
    end

    Library.Holder = Instances:Create("ScreenGui", {
        Parent = gethui(),
        Name = "\0",
        ResetOnSpawn = false
    })

    Library.NotifHolder = Instances:Create("Frame", {
        Parent = Library.Holder.Instance,
        BorderColor3 = FromRGB(0, 0, 0),
        AnchorPoint = Vector2New(0.5, 0),
        BackgroundTransparency = 1,
        Position = UDim2New(0.5, 0, 0, 0),
        Name = "\0",
        Size = UDim2New(0.34, 0, 1, -14),
        BorderSizePixel = 0,
        BackgroundColor3 = FromRGB(255, 255, 255)
    }) 
    
    Instances:Create("UIListLayout", {
        Parent = Library.NotifHolder.Instance,
        VerticalAlignment = Enum.VerticalAlignment.Top,
        SortOrder = Enum.SortOrder.LayoutOrder,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Padding = UDimNew(0, 10)
    }) 

    Library.GetImage = function(self, Image)
        local ImageData = self.Images[Image]

        if not ImageData then 
            return
        end

        return getcustomasset(self.Folders.Assets .. "/" .. ImageData[1])
    end

    Library.Round = function(self, Number, Float)
        local Multiplier = 1 / (Float or 1)
        return MathFloor(Number * Multiplier) / Multiplier
    end

    Library.GetTransparencyPropertyFromItem = function(self, Item)
        if Item:IsA("Frame") then
            return { "BackgroundTransparency" }
        elseif Item:IsA("TextLabel") or Item:IsA("TextButton") then
            return { "TextTransparency", "BackgroundTransparency" }
        elseif Item:IsA("ImageLabel") or Item:IsA("ImageButton") then
            return { "BackgroundTransparency", "ImageTransparency" }
        elseif Item:IsA("ScrollingFrame") then
            return { "BackgroundTransparency", "ScrollBarImageTransparency" }
        elseif Item:IsA("TextBox") then
            return { "TextTransparency", "BackgroundTransparency" }
        elseif Item:IsA("UIStroke") then 
            return { "Transparency" }
        end
    end

    Library.FadeItem = function(self, Item, Property, Visibility, Speed)
        local OldTransparency = Item[Property]
        Item[Property] = Visibility and 1 or OldTransparency

        local NewTween = Tween:Create(Item, TweenInfo.new(Speed or Library.Tween.Time, Library.Tween.Style, Library.Tween.Direction), {
            [Property] = Visibility and OldTransparency or 1
        }, true)

        Library:Connect(NewTween.Tween.Completed, function()
            if not Visibility then 
                task.wait()
                Item[Property] = OldTransparency
            end
        end)

        return NewTween
    end

    Library.Unload = function(self)
        for Index, Value in self.Connections do 
            Value.Connection:Disconnect()
        end

        for Index, Value in self.Threads do 
            coroutine.close(Value)
        end

        if self.Holder then 
            self.Holder:Clean()
        end

        Library = nil 
        getgenv().Library = nil
    end

    Library.Thread = function(self, Function)
        local NewThread = coroutine.create(Function)
        
        coroutine.wrap(function()
            coroutine.resume(NewThread)
        end)()

        TableInsert(self.Threads, NewThread)

        return NewThread
    end
    
    Library.SafeCall = function(self, Function, ...)
        local Arguements = { ... }
        local Success, Result = pcall(Function, TableUnpack(Arguements))

        if not Success then
            Library:Notification("Error caught in function, report this to the devs:\n"..Result, 5, FromRGB(255, 0, 0))
            warn(Result)
            return false
        end

        return Success
    end

    Library.Connect = function(self, Event, Callback, Name)
        Name = Name or StringFormat("Connection_%s_%s", self.UnnamedConnections + 1, HttpService:GenerateGUID(false))

        local NewConnection = {
            Event = Event,
            Callback = Callback,
            Name = Name,
            Connection = nil
        }

        Library:Thread(function()
            NewConnection.Connection = Event:Connect(Callback)
        end)

        TableInsert(self.Connections, NewConnection)
        return NewConnection
    end

    Library.Disconnect = function(self, Name)
        for _, Connection in self.Connections do 
            if Connection.Name == Name then
                Connection.Connection:Disconnect()
                break
            end
        end
    end

    Library.NextFlag = function(self)
        local FlagNumber = self.UnnamedFlags + 1
        return StringFormat("Flag Number %s %s", FlagNumber, HttpService:GenerateGUID(false))
    end

    Library.AddToTheme = function(self, Item, Properties)
        Item = Item.Instance or Item 

        local ThemeData = {
            Item = Item,
            Properties = Properties,
        }

        for Property, Value in ThemeData.Properties do
            if type(Value) == "string" then
                Item[Property] = self.Theme[Value]
            end
        end

        TableInsert(self.ThemeItems, ThemeData)
        self.ThemeMap[Item] = ThemeData
    end

    Library.GetConfig = function(self)
        local Config = { } 

        local Success, Result = Library:SafeCall(function()
            for Index, Value in Library.Flags do 
                if type(Value) == "table" and Value.Key then
                    Config[Index] = {Key = tostring(Value.Key), Mode = Value.Mode}
                elseif type(Value) == "table" and Value.Color then
                    Config[Index] = {Color = "#" .. Value.HexValue, Alpha = Value.Alpha}
                else
                    Config[Index] = Value
                end
            end
        end)

        return HttpService:JSONEncode(Config)
    end

    Library.LoadConfig = function(self, Config)
        local Decoded = HttpService:JSONDecode(Config)

        local Success, Result = Library:SafeCall(function()
            for Index, Value in Decoded do 
                local SetFunction = Library.SetFlags[Index]

                if not SetFunction then
                    continue
                end

                if type(Value) == "table" and Value.Key then 
                    SetFunction(Value)
                elseif type(Value) == "table" and Value.Color then
                    SetFunction(Value.Color, Value.Alpha)
                else
                    SetFunction(Value)
                end
            end
        end)

        if Success then 
            Library:Notification("Successfully loaded config", 5, Color3.fromRGB(0, 255, 0))
        end
    end

    Library.DeleteConfig = function(self, Config)
        if isfile(Library.Folders.Configs .. "/" .. Config) then 
            delfile(Library.Folders.Configs .. "/" .. Config)
            Library:Notification("Deleted config " .. Config .. ".json", 5, Color3.fromRGB(0, 255, 0))
        end
    end

    Library.SaveConfig = function(self, Config)
        if isfile(Library.Folders.Directory .. "/" .. Library.Folders.Configs .. "/" .. Config .. ".json") then
            writefile(Library.Folders.Directory .. "/" .. Library.Folders.Configs .. "/" .. Config .. ".json", Library:GetConfig())
            Library:Notification("Saved config " .. Config .. ".json", 5, Color3.fromRGB(0, 255, 0))
        end
    end

    Library.RefreshConfigsList = function(self, Element)
        local CurrentList = { }
        local List = { }

        local ConfigFolderName = StringGSub(Library.Folders.Configs, Library.Folders.Directory .. "/", "")

        for Index, Value in listfiles(Library.Folders.Configs) do
            local FileName = StringGSub(Value, Library.Folders.Directory .. "\\" .. ConfigFolderName .. "\\", "")
            List[Index] = FileName
        end

        local IsNew = #List ~= CurrentList

        if not IsNew then
            for Index = 1, #List do
                if List[Index] ~= CurrentList[Index] then
                    IsNew = true
                    break
                end
            end
        else
            CurrentList = List
            Element:Refresh(CurrentList)
        end
    end

    Library.ChangeItemTheme = function(self, Item, Properties)
        Item = Item.Instance or Item

        if not self.ThemeMap[Item] then 
            return
        end

        self.ThemeMap[Item].Properties = Properties
        self.ThemeMap[Item] = self.ThemeMap[Item]
    end

    Library.ChangeTheme = function(self, Theme, Color)
        self.Theme[Theme] = Color

        for _, Item in self.ThemeItems do
            for Property, Value in Item.Properties do
                if type(Value) == "string" and Value == Theme then
                    Item.Item[Property] = Color
                end
            end
        end
    end

    Library.IsMouseOverFrame = function(self, Frame)
        Frame = Frame.Instance

        local MousePosition = Vector2New(Mouse.X, Mouse.Y)

        return MousePosition.X >= Frame.AbsolutePosition.X and MousePosition.X <= Frame.AbsolutePosition.X + Frame.AbsoluteSize.X 
        and MousePosition.Y >= Frame.AbsolutePosition.Y and MousePosition.Y <= Frame.AbsolutePosition.Y + Frame.AbsoluteSize.Y
    end

    Library.Watermark = function(self, Name)
        local Watermark = { } 

        local Items = { } do 
            Items["Watermark"] = Instances:Create("Frame", {
                Parent = Library.Holder.Instance,
                Size = UDim2New(0, 0, 0, 20),
                Name = "\0",
                Position = UDim2New(0, 15, 0, 15),
                BorderColor3 = FromRGB(10, 10, 10),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["Watermark"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})

            Items["Watermark"]:MakeDraggable()
            
            Instances:Create("UIStroke", {
                Parent = Items["Watermark"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Instances:Create("UIPadding", {
                Parent = Items["Watermark"].Instance,
                PaddingTop = UDimNew(0, 2),
                PaddingRight = UDimNew(0, 5),
                PaddingLeft = UDimNew(0, 5)
            }) 
            
            Items["Title"] = Instances:Create("TextLabel", {
                Parent = Items["Watermark"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Name,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 15),
                BackgroundTransparency = 1,
                Position = UDim2New(0, 0, 0, 1),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Title"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Title"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["Watermark"].Instance,
                Name = "\0",
                Position = UDim2New(0, -5, 0, -2),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 10, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            })             
        end

        function Watermark:SetVisibility(Bool)
            Items["Watermark"].Instance.Visible = Bool
        end
        
        return Watermark
    end

    Library.Notification = function(self, Text, Duration, Color, Icon)
        local Items = { } do
            Items["Notification"] = Instances:Create("Frame", {
                Parent = Library.NotifHolder.Instance,
                Name = "\0",
                Size = UDim2New(0, 0, 0, 22),
                BorderColor3 = FromRGB(10, 10, 10),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["Notification"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Notification"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"}) 
            
            Instances:Create("UIPadding", {
                Parent = Items["Notification"].Instance,
                PaddingTop = UDimNew(0, 1),
                PaddingRight = UDimNew(0, 8),
                PaddingLeft = UDimNew(0, 5)
            }) 
            
            Items["Title"] = Instances:Create("TextLabel", {
                Parent = Items["Notification"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Text,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 15),
                BackgroundTransparency = 1,
                Position = UDim2New(0, 13, 0, 2),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Title"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Title"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["Notification"].Instance,
                Name = "\0",
                Position = UDim2New(0, -5, 0, -1),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 13, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = Color
            })  
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            })
            
            Items["Icon"] = Instances:Create("ImageLabel", {
                Parent = Items["Notification"].Instance,
                ImageColor3 = FromRGB(255, 255, 255),
                ScaleType = Enum.ScaleType.Fit,
                BorderColor3 = FromRGB(0, 0, 0),
                Name = "\0",
                Image = "rbxassetid://94324346713012",
                BackgroundTransparency = 1,
                Position = UDim2New(0, -2, 0, 3),
                Size = UDim2New(0, 13, 0, 13),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 

            if not Icon then 
                Items["Icon"]:Clean()
                Items["Title"].Instance.Position = UDim2New(0, 1, 0, 2)
            else
                Items["Icon"].Instance.Image = Icon[1]
                Items["Icon"].Instance.ImageColor3 = Icon[2] or FromRGB(255, 255, 255)
            end
        end

        Items["Notification"].Instance.BackgroundTransparency = 1
        Items["Notification"].Instance.Size = UDim2New(0, 0, 0, 0)
        for Index, Value in Items["Notification"].Instance:GetDescendants() do
            if Value:IsA("UIStroke") then 
                Value.Transparency = 1
            elseif Value:IsA("TextLabel") then 
                Value.TextTransparency = 1
            elseif Value:IsA("ImageLabel") then 
                Value.ImageTransparency = 1
            elseif Value:IsA("Frame") then 
                Value.BackgroundTransparency = 1
            end
        end

        Library:Thread(function()
            Items["Notification"]:Tween(nil, {BackgroundTransparency = 0, Size = UDim2New(0, 0, 0, 22)})
            
            task.wait(0.06)

            for Index, Value in Items["Notification"].Instance:GetDescendants() do
                if Value:IsA("UIStroke") then
                    Tween:Create(Value, nil, {Transparency = 0}, true)
                elseif Value:IsA("TextLabel") then
                    Tween:Create(Value, nil, {TextTransparency = 0}, true)
                elseif Value:IsA("ImageLabel") then
                    Tween:Create(Value, nil, {ImageTransparency = 0}, true)
                elseif Value:IsA("Frame") then
                    Tween:Create(Value, nil, {BackgroundTransparency = 0}, true)
                end
            end

            task.delay(Duration + 0.1, function()
                for Index, Value in Items["Notification"].Instance:GetDescendants() do
                    if Value:IsA("UIStroke") then
                        Tween:Create(Value, nil, {Transparency = 1}, true)
                    elseif Value:IsA("TextLabel") then
                        Tween:Create(Value, nil, {TextTransparency = 1}, true)
                    elseif Value:IsA("ImageLabel") then
                        Tween:Create(Value, nil, {ImageTransparency = 1}, true)
                    elseif Value:IsA("Frame") then
                        Tween:Create(Value, nil, {BackgroundTransparency = 1}, true)
                    end
                end

                task.wait(0.06)

                Items["Notification"]:Tween(nil, {BackgroundTransparency = 1, Size = UDim2New(0, 0, 0, 0)})

                task.wait(0.5)
                Items["Notification"]:Clean()
            end)
        end)
    end

    Library.KeybindList = function(self)
        local KeybindList = { }
        self.KeyList = KeybindList

        local Items = { } do
            Items["KeybindList"] = Instances:Create("Frame", {
                Parent = Library.Holder.Instance,
                BorderColor3 = FromRGB(10, 10, 10),
                AnchorPoint = Vector2New(0, 0.5),
                Name = "\0",
                Position = UDim2New(0, 15, 0.5, 0),
                Size = UDim2New(0, 0, 0, 18),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.XY,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["KeybindList"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})

            Items["KeybindList"]:MakeDraggable()
            
            Instances:Create("UIStroke", {
                Parent = Items["KeybindList"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["KeybindList"].Instance,
                Name = "\0",
                Position = UDim2New(0, -5, 0, -5),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 10, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            }) 
            
            Instances:Create("UIPadding", {
                Parent = Items["KeybindList"].Instance,
                PaddingTop = UDimNew(0, 5),
                PaddingBottom = UDimNew(0, 5),
                PaddingRight = UDimNew(0, 5),
                PaddingLeft = UDimNew(0, 5)
            }) 
            
            Items["Title"] = Instances:Create("TextLabel", {
                Parent = Items["KeybindList"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "Keybinds",
                Name = "\0",
                Size = UDim2New(0, 100, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2New(0, 0, 0, -1),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Title"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Title"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Content"] = Instances:Create("Frame", {
                Parent = Items["KeybindList"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 5, 0, 19),
                BorderColor3 = FromRGB(0, 0, 0),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.XY,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIListLayout", {
                Parent = Items["Content"].Instance,
                Padding = UDimNew(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder
            }) 
        end

        function KeybindList:Add(Mode, Name, Key)
            local NewKey = Instances:Create("TextLabel", {
                Parent = Items["Content"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "(" .. Mode .. ") " .. Name .. " - " .. Key,
                Name = "\0",
                Size = UDim2New(0, 0, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  NewKey:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = NewKey.Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
        
            function NewKey:Set(Mode, Name, Key)
                NewKey.Instance.Text = "(" .. Mode .. ") " .. Name .. " - " .. Key
            end

            function NewKey:SetStatus(Status)
                if Status == "Active" then 
                    NewKey:Tween(nil, {TextColor3 = Library.Theme.Accent})
                    NewKey:ChangeItemTheme({TextColor3 = "Accent"})
                else 
                    NewKey:Tween(nil, {TextColor3 = Library.Theme.Text})
                    NewKey:ChangeItemTheme({TextColor3 = "Text"})
                end
            end

            return NewKey
        end

        function KeybindList:SetVisibility(Bool)
            Items["KeybindList"].Instance.Visible = Bool
        end

        return KeybindList
    end

    Library.CreateColorpicker = function(self, Data)
        local Colorpicker = {
            Hue = 0,
            Saturation = 0,
            Value = 0,

            Alpha = 0,

            HexValue = "",
            
            IsOpen = false,

            Color = FromRGB(0, 0, 0),

            Class = "Colorpicker"
        }

        Library.Flags[Data.Flag] = { }

        local Items = { } do
            Items["ColorpickerButton"] = Instances:Create("TextButton", {
                Parent = Data.Parent.Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                AnchorPoint = Vector2New(1, 0.5),
                Name = "\0",
                Position = UDim2New(1, 0, 0.5, 0),
                Size = UDim2New(0, 20, 0, 10),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 0, 0)
            }) 


            Colorpicker.CalculateCount = function(self, Index, YScale, YOffset)
                local MaxButtonsAdded = 5

                local Column = Index % MaxButtonsAdded
            
                local ButtonSize = Items["ColorpickerButton"].Instance.AbsoluteSize
                local Spacing = 4
            
                local XPosition = (ButtonSize.X + Spacing) * Column - Spacing - 21
            
                Items["ColorpickerButton"].Instance.Position = UDim2New(1, -XPosition, YScale or 0.5, YOffset or 0)
            end

            Colorpicker:CalculateCount(Data.Count)
            
            Instances:Create("UIStroke", {
                Parent = Items["ColorpickerButton"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Instances:Create("UIGradient", {
                Parent = Items["ColorpickerButton"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            })             

            Items["ColorpickerWindow"] = Instances:Create("TextButton", {
                Parent = Library.Holder.Instance,
                AutoButtonColor = false,
                Text = "",
                Name = "\0",
                Position = UDim2New(0, Data.Parent.Instance.AbsolutePosition.X, 0, Data.Parent.Instance.AbsolutePosition.Y + 15),
                BorderColor3 = FromRGB(10, 10, 10),
                Visible = false,
                Size = UDim2New(0, 238, 0, 224),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["ColorpickerWindow"]:AddToTheme({BackgroundColor3 = "Background"})
            
            Items["ColorpickerWindow"]:MakeDraggable()
            Items["ColorpickerWindow"]:MakeResizeable(Vector2New(200, 180), Vector2New(9999, 9999))

            Instances:Create("UIStroke", {
                Parent = Items["ColorpickerWindow"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Title"] = Instances:Create("TextLabel", {
                Parent = Items["ColorpickerWindow"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Data.Name,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2New(0, -2, 0, -3),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Title"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Title"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["ColorpickerWindow"].Instance,
                Name = "\0",
                Position = UDim2New(0, -6, 0, -6),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 12, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            }) 
            
            Instances:Create("UIPadding", {
                Parent = Items["ColorpickerWindow"].Instance,
                PaddingTop = UDimNew(0, 6),
                PaddingBottom = UDimNew(0, 6),
                PaddingRight = UDimNew(0, 6),
                PaddingLeft = UDimNew(0, 6)
            }) 
            
            Items["Palette"] = Instances:Create("TextButton", {
                Parent = Items["ColorpickerWindow"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                Name = "\0",
                Position = UDim2New(0, 0, 0, 15),
                Size = UDim2New(1, -26, 1, -40),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 0, 0)
            }) 
            
            Items["Saturation"] = Instances:Create("ImageLabel", {
                Parent = Items["Palette"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                Image = Library:GetImage("Saturation"),
                BackgroundTransparency = 1,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Value"] = Instances:Create("ImageLabel", {
                Parent = Items["Palette"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                Image = Library:GetImage("Value"),
                BackgroundTransparency = 1,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["Palette"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["PaletteDragger"] = Instances:Create("Frame", {
                Parent = Items["Palette"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(0, 2, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["PaletteDragger"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Hue"] = Instances:Create("ImageButton", {
                Parent = Items["ColorpickerWindow"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                AutoButtonColor = false,
                AnchorPoint = Vector2New(1, 0),
                Image = Library:GetImage("Hue"),
                Name = "\0",
                Position = UDim2New(1, 0, 0, 15),
                Size = UDim2New(0, 18, 1, -15),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["HueDragger"] = Instances:Create("Frame", {
                Parent = Items["Hue"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 1),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["HueDragger"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Hue"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Alpha"] = Instances:Create("TextButton", {
                Parent = Items["ColorpickerWindow"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                Size = UDim2New(1, -26, 0, 18),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 0, 0)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["Alpha"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Checkers"] = Instances:Create("ImageLabel", {
                Parent = Items["Alpha"].Instance,
                ScaleType = Enum.ScaleType.Tile,
                BorderColor3 = FromRGB(0, 0, 0),
                Image = Library:GetImage("Checkers"),
                TileSize = UDim2New(0, 6, 0, 6),
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIGradient", {
                Parent = Items["Checkers"].Instance,
                Transparency = NumSequence{NumSequenceKeypoint(0, 1), NumSequenceKeypoint(1, 0)}
            }) 
            
            Instances:Create("UIGradient", {
                Parent = Items["Alpha"].Instance,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(0, 0, 0))}
            }) 
            
            Items["AlphaDragger"] = Instances:Create("Frame", {
                Parent = Items["Alpha"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(0, 1, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["AlphaDragger"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
        end

        local SlidingPalette = false
        local SlidingHue = false
        local SlidingAlpha = false

        local Debounce = false

        function Colorpicker:SetOpen(Bool)
            if Debounce then 
                return 
            end

            Colorpicker.IsOpen = Bool

            Debounce = true 

            if Bool then 
                Items["ColorpickerWindow"].Instance.Visible = true
                Items["ColorpickerWindow"].Instance.Position = UDim2New(0, Data.Parent.Instance.AbsolutePosition.X, 0, Data.Parent.Instance.AbsolutePosition.Y + 15)

                if Library.CurrentColorpicker then
                    Library.CurrentColorpicker:SetOpen(false)
                    Library.CurrentColorpicker = nil 
                end

                if not Library.CurrentColorpicker then 
                    Library.CurrentColorpicker = Colorpicker
                end
            else
                Library.CurrentColorpicker = nil
            end

            local Descendants = Items["ColorpickerWindow"].Instance:GetDescendants()
            TableInsert(Descendants, Items["ColorpickerWindow"].Instance)

            local NewTween
            for Index, Value in Descendants do 
                local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                if not ValueIndex then 
                    continue
                end

                if not StringFind(Value.ClassName, "UI") then 
                    Value.ZIndex = Bool and 10001 or 1
                end

                if type(ValueIndex) == "table" then
                    for _, Property in ValueIndex do 
                        NewTween = Library:FadeItem(Value, Property, Bool, Data.FadeSpeed)
                    end
                else
                    NewTween = Library:FadeItem(Value, ValueIndex, Bool, Data.FadeSpeed)
                end
            end

            Library:Connect(NewTween.Tween.Completed, function()
                Debounce = false
                Items["ColorpickerWindow"].Instance.Visible = Bool
            end)
        end

        function Colorpicker:Get()
            return Colorpicker.Value
        end

        function Colorpicker:SetVisibility(Bool)
           Data.Parent.Instance.Visible = Bool 
        end

        function Colorpicker:Set(Color, Alpha)
            if type(Color) == "table" then 
                Color = FromRGB(Color[1], Color[2], Color[3])
                Alpha = Color[4]
            elseif type(Color) == "string" then 
                Color = FromHex(Color)
            end

            self.Hue, self.Saturation, self.Value = Color:ToHSV()
            self.Alpha = Alpha or 0

            self.Color = FromHSV(self.Hue, self.Saturation, self.Value)
            self.HexValue = self.Color:ToHex()

            Library.Flags[Data.Flag] = {
                Color = self.Color,
                HexValue =  self.HexValue,
                Alpha = self.Alpha
            }

            local ColorPositionX = MathClamp(1 - self.Saturation, 0, 0.989)
            local ColorPositionY = MathClamp(1 - self.Value, 0, 0.989)

            Items["PaletteDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(ColorPositionX, 0, ColorPositionY, 0)})

            local HuePositionY = MathClamp(self.Hue, 0, 0.994)

            Items["HueDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(0, 0, HuePositionY, 0)})

            local AlphaPositionX = MathClamp(self.Alpha, 0, 0.994)

            Items["AlphaDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(AlphaPositionX, 0, 0, 0)})

            self:Update()
        end

        function Colorpicker:Update(IsFromAlpha)
            self.Color = FromHSV(self.Hue, self.Saturation, self.Value)
            self.HexValue = self.Color:ToHex()

            Library.Flags[Data.Flag] = {
                Color = self.Color,
                HexValue =  self.HexValue,
                Alpha = self.Alpha
            }

            Items["ColorpickerButton"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = self.Color})
            Items["Palette"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = FromHSV(self.Hue, 1, 1)})

            if not IsFromAlpha then 
                Items["Alpha"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = self.Color})
            end

            if Data.Callback then 
                Library:SafeCall(Data.Callback, self.Color, self.Alpha)
            end
        end

        function Colorpicker:SlidePalette(Input)
            if not Input or not SlidingPalette then 
                return
            end

            local ValueX = MathClamp(1 - (Input.Position.X - Items["Palette"].Instance.AbsolutePosition.X) / Items["Palette"].Instance.AbsoluteSize.X, 0, 1)
            local ValueY = MathClamp(1 - (Input.Position.Y - Items["Palette"].Instance.AbsolutePosition.Y) / Items["Palette"].Instance.AbsoluteSize.Y, 0, 1)

            self.Saturation = ValueX
            self.Value = ValueY

            local SlideX = MathClamp((Input.Position.X - Items["Palette"].Instance.AbsolutePosition.X) / Items["Palette"].Instance.AbsoluteSize.X, 0, 0.989)
            local SlideY = MathClamp((Input.Position.Y - Items["Palette"].Instance.AbsolutePosition.Y) / Items["Palette"].Instance.AbsoluteSize.Y, 0, 0.989)

            Items["PaletteDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(SlideX, 0, SlideY, 0)})
            self:Update()            
        end

        function Colorpicker:SlideHue(Input)
            if not Input or not SlidingHue then 
                return
            end

            local ValueY = MathClamp((Input.Position.Y - Items["Hue"].Instance.AbsolutePosition.Y) / Items["Hue"].Instance.AbsoluteSize.Y, 0, 1)

            self.Hue = ValueY

            local PositionY = MathClamp((Input.Position.Y - Items["Hue"].Instance.AbsolutePosition.Y) / Items["Hue"].Instance.AbsoluteSize.Y, 0, 0.994)

            Items["HueDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(0, 0, PositionY, 0)})
            self:Update()
        end

        function Colorpicker:SlideAlpha(Input)
            if not Input or not SlidingAlpha then 
                return
            end

            local ValueX = MathClamp((Input.Position.X - Items["Alpha"].Instance.AbsolutePosition.X) / Items["Alpha"].Instance.AbsoluteSize.X, 0, 1)
            
            self.Alpha = ValueX

            local PositionX = MathClamp((Input.Position.X - Items["Alpha"].Instance.AbsolutePosition.X) / Items["Alpha"].Instance.AbsoluteSize.X, 0, 0.994)

            Items["AlphaDragger"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(PositionX, 0, 0, 0)})
            self:Update(true)
        end

        Items["ColorpickerButton"]:Connect("MouseButton1Down", function()
            Colorpicker:SetOpen(not Colorpicker.IsOpen)
        end)

        local PaletteChanged

        Items["Palette"]:Connect("InputBegan", function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                SlidingPalette = true
                Colorpicker:SlidePalette(Input)

                if PaletteChanged then
                    return
                end

                PaletteChanged = Input.Changed:Connect(function()
                    if Input.UserInputState == Enum.UserInputState.End then
                        SlidingPalette = false

                        PaletteChanged:Disconnect()
                        PaletteChanged = nil
                    end
                end) 
            end
        end)

        local HueChanged

        Items["Hue"]:Connect("InputBegan", function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                SlidingHue = true
                Colorpicker:SlideHue(Input)

                if HueChanged then
                    return
                end

                HueChanged = Input.Changed:Connect(function()
                    if Input.UserInputState == Enum.UserInputState.End then
                        SlidingHue = false

                        HueChanged:Disconnect()
                        HueChanged = nil
                    end
                end)
            end
        end)

        local AlphaChanged

        Items["Alpha"]:Connect("InputBegan", function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                SlidingAlpha = true
                Colorpicker:SlideAlpha(Input)
                
                if AlphaChanged then
                    return
                end

                AlphaChanged = Input.Changed:Connect(function()
                    if Input.UserInputState == Enum.UserInputState.End then
                        SlidingAlpha = false

                        AlphaChanged:Disconnect()
                        AlphaChanged = nil
                    end
                end)
            end
        end)

        Library:Connect(UserInputService.InputChanged, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
                if SlidingPalette then
                    Colorpicker:SlidePalette(Input)
                end

                if SlidingHue then
                    Colorpicker:SlideHue(Input)
                end

                if SlidingAlpha then
                    Colorpicker:SlideAlpha(Input)
                end
            end
        end)

        Library:Connect(UserInputService.InputBegan, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                if not Colorpicker.IsOpen  then
                    return
                end

                if Library:IsMouseOverFrame(Items["ColorpickerWindow"]) then
                    return
                end

                Colorpicker:SetOpen(false)
            end
        end)

        if Data.Default then 
            Colorpicker:Set(Data.Default, Data.Alpha)
        end

        Library.SetFlags[Data.Flag] = function(Color, Alpha)
            Colorpicker:Set(Color, Alpha)
        end

        return Colorpicker
    end

    Library.CreateKeybind = function(self, Data)
        local Keybind = {
            Key = nil,
            Value = "",
            Mode = "",

            Toggled = false,
            IsOpen = false,

            Picking = false,

            Class = "Keybind"
        }

        Library.Flags[Data.Flag] = { }

        local KeyListItem

        local Items = { } do 
            Items["KeyButton"] = Instances:Create("TextButton", {
                Parent = Data.Parent.Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(27, 27, 32),
                Text = "",
                AutoButtonColor = false,
                AnchorPoint = Vector2New(1, 0),
                Size = UDim2New(0, 0, 1, 1),
                Name = "\0",
                Position = UDim2New(1, 0, 0, 0),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 14,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["KeyButton"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Outline"})

            if Library.KeyList then 
                KeyListItem = Library.KeyList:Add(Keybind.Mode, Data.Name, Keybind.Value)
            end
            
            Instances:Create("UIStroke", {
                Parent = Items["KeyButton"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(10, 10, 10)
            }):AddToTheme({Color = "Border"})
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["KeyButton"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "MB2",
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 1, 0, 0),
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Instances:Create("UIPadding", {
                Parent = Items["KeyButton"].Instance,
                PaddingRight = UDimNew(0, 3),
                PaddingLeft = UDimNew(0, 3),
                PaddingBottom = UDimNew(0, 2)
            })             

            Items["Window"] = Instances:Create("Frame", {
                Parent = Data.Parent.Instance,
                BorderColor3 = FromRGB(10, 10, 10),
                AnchorPoint = Vector2New(1, 0),
                Name = "\0",
                Position = UDim2New(1, 0, 1, 5),
                Size = UDim2New(0, 50, 0, 48),
                BorderSizePixel = 2,
                Visible = false,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["Window"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Window"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Toggle"] = Instances:Create("TextButton", {
                Parent = Items["Window"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(235, 157, 255),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "Toggle",
                AutoButtonColor = false,
                Name = "\0",
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                Position = UDim2New(0, 1, 0, 0),
                Size = UDim2New(1, 0, 0, 15),
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Toggle"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Toggle"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Hold"] = Instances:Create("TextButton", {
                Parent = Items["Window"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "Hold",
                AutoButtonColor = false,
                Name = "\0",
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                Position = UDim2New(0, 1, 0, 15),
                Size = UDim2New(1, 0, 0, 15),
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Hold"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Hold"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Always"] = Instances:Create("TextButton", {
                Parent = Items["Window"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "Always",
                AutoButtonColor = false,
                Name = "\0",
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                Position = UDim2New(0, 1, 0, 30),
                Size = UDim2New(1, 0, 0, 15),
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Always"]:AddToTheme({TextColor3 = "Text"})
             
            Instances:Create("UIStroke", {
                Parent = Items["Always"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
        end

        local Modes = {
            ["Toggle"] = Items["Toggle"],
            ["Hold"] = Items["Hold"],
            ["Always"] = Items["Always"]
        }

        local Update = function()
            if KeyListItem then
                KeyListItem:Set(Keybind.Mode, Data.Name, Keybind.Value)
                KeyListItem:SetStatus(Keybind.Toggled and "Active" or "Inactive")
            end
        end

        function Keybind:Get()
           return Keybind.Toggled, Keybind.Key, Keybind.Mode 
        end

        function Keybind:SetVisibility(Bool)
            Data.Parent.Instance.Visible = Bool
        end

        local Debounce = false

        function Keybind:SetOpen(Bool)
            Keybind.IsOpen = Bool

            if Bool then 
                Debounce = true
                Items["Window"].Instance.Visible = true
                Items["Window"].Instance.ZIndex = 16
                Items["Window"]:Tween(nil, {BackgroundTransparency = 0})

                task.wait(0.1)

                for Index, Value in Items["Window"].Instance:GetDescendants() do 
                    if Value:IsA("UIStroke") then
                        Tween:Create(Value, nil, {Transparency = 0}, true)
                    elseif Value:IsA("TextButton") then
                        Tween:Create(Value, nil, {TextTransparency = 0}, true)
                        Value.ZIndex = 16
                    end
                end
            else 
                for Index, Value in Items["Window"].Instance:GetDescendants() do 
                    if Value:IsA("UIStroke") then
                        Tween:Create(Value, nil, {Transparency = 1}, true)
                    elseif Value:IsA("TextButton") then
                        Tween:Create(Value, nil, {TextTransparency = 1}, true)
                        Value.ZIndex = 1
                    end
                end

                task.wait(0.1)

                Items["Window"]:Tween(nil, {BackgroundTransparency = 1})
                Items["Window"].Instance.ZIndex = 1
                task.wait(0.1)
                Items["Window"].Instance.Visible = false
            end

            Debounce = false
        end

        function Keybind:Set(Key)
            if StringFind(tostring(Key), "Enum") then 
                Keybind.Key = tostring(Key)

                Key = Key.Name == "Backspace" and "None" or Key.Name

                local KeyString = Keys[Keybind.Key] or StringGSub(Key, "Enum.", "") or "None"
                local TextToDisplay = StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "") or "None"

                Keybind.Value = TextToDisplay
                Items["Text"].Instance.Text = TextToDisplay
    
                if Data.Callback then 
                    Library:SafeCall(Data.Callback, Keybind.Toggled)
                end
           elseif TableFind({"Toggle", "Hold", "Always"}, Key) then 
                Keybind.Mode = Key
                
                Keybind:SetMode(Key)

                if Data.Callback then 
                    Library:SafeCall(Data.Callback, Keybind.Toggled)
                end
            elseif type(Key) == "table" then 
                local RealKey = Key.Key == "Backspace" and "None" or Key.Key
                Keybind.Key = tostring(Key.Key)

                if Key.Mode then
                    Keybind.Mode = Key.Mode
                    Keybind:SetMode(Key.Mode)
                else
                    Keybind.Mode = "Toggle"
                    Keybind:SetMode("Toggle")
                end

                local KeyString = Keys[Keybind.Key] or StringGSub(tostring(RealKey), "Enum.", "") or RealKey
                local TextToDisplay = KeyString and StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "") or "None"

                TextToDisplay = StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "")

                Keybind.Value = TextToDisplay
                Items["Text"].Instance.Text = TextToDisplay

                if Keybind.Callback then 
                    Library:SafeCall(Keybind.Callback, Keybind.Toggled)
                end
            end

            Keybind.Picking = false
            Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Text})
            Items["Text"]:ChangeItemTheme({TextColor3 = "Text"})
            Items["Text"].Instance.Size = UDim2New(0, Items["Text"].Instance.TextBounds.X, 1, 1)
            Update()
        end

        function Keybind:SetMode(Mode)
            for Index, Value in Modes do 
                if Index == Mode then 
                    Value:Tween(nil, {TextColor3 = Library.Theme.Accent})
                    Value:ChangeItemTheme({TextColor3 = "Accent"})
                else
                    Value:Tween(nil, {TextColor3 = Library.Theme.Text})
                    Value:ChangeItemTheme({TextColor3 = "Text"})
                end
            end

            if Keybind.Mode == "Always" then 
                Keybind.Toggled = true
            else
                Keybind.Toggled = false
            end

            Library.Flags[Data.Flag] = {
                Mode = Keybind.Mode,
                Key = Keybind.Key,
                Toggled = Keybind.Toggled
            }

            if Data.Callback then 
                Library:SafeCall(Data.Callback, Keybind.Toggled)
            end

            Update()
        end

        function Keybind:Press(Bool)
            if Keybind.Mode == "Toggle" then
                Keybind.Toggled = not Keybind.Toggled
            elseif Keybind.Mode == "Hold" then
                Keybind.Toggled = Bool
            elseif Keybind.Mode == "Always" then
                Keybind.Toggled = true
            end

            Library.Flags[Data.Flag] = {
                Mode = Keybind.Mode,
                Key = Keybind.Key,
                Toggled = Keybind.Toggled
            }

            if Data.Callback then 
                Library:SafeCall(Data.Callback, Keybind.Toggled)
            end

            Update()
        end

        Items["KeyButton"]:Connect("MouseButton1Click", function()
            if Keybind.Picking then 
                return
            end

            Keybind.Picking = true

            Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Accent})
            Items["Text"]:ChangeItemTheme({TextColor3 = "Accent"})

            local InputBegan 
            InputBegan = UserInputService.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.Keyboard then 
                    Keybind:Set(Input.KeyCode)
                else
                    Keybind:Set(Input.UserInputType)
                end

                InputBegan:Disconnect()
                InputBegan = nil
            end)
        end)

        Items["KeyButton"]:Connect("MouseButton2Down", function()
            Keybind:SetOpen(not Keybind.IsOpen)
        end)

        Library:Connect(UserInputService.InputBegan, function(Input)
            if tostring(Input.KeyCode) == Keybind.Key or tostring(Input.UserInputType) == Keybind.Key then
                if Keybind.Mode == "Toggle" then 
                    Keybind:Press()
                elseif Keybind.Mode == "Hold" then 
                    Keybind:Press(true)
                end
            end

            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                if not Keybind.IsOpen then 
                    return 
                end

                if Library:IsMouseOverFrame(Items["Window"]) then
                    return
                end

                Keybind:SetOpen(false)
            end
        end)

        Library:Connect(UserInputService.InputEnded, function(Input)
            if tostring(Input.KeyCode) == Keybind.Key or tostring(Input.UserInputType) == Keybind.Key then
                if Keybind.Mode == "Hold" then 
                    Keybind:Press(false)
                end
            end
        end)

        Items["Toggle"]:Connect("MouseButton1Down", function()
            Keybind.Mode = "Toggle"
            Keybind:SetMode("Toggle")
        end)

        Items["Always"]:Connect("MouseButton1Down", function()
            Keybind.Mode = "Always"
            Keybind:SetMode("Always")
        end)

        Items["Hold"]:Connect("MouseButton1Down", function()
            Keybind.Mode = "Hold"
            Keybind:SetMode("Hold")
        end)

        if Data.Default then 
            Keybind:Set({
                Key = Data.Default,
                Mode = Data.Mode or "Toggle"
            })
        end

        Library.SetFlags[Data.Flag] = function(Value)
            Keybind:Set(Value)
        end

        return Keybind
    end

    Library.Window = function(self, Data)
        Data = Data or { }

        local Window = {
            Name = Data.Name or Data.name or "Window",
            Size = Data.Size or Data.size or UDim2New(0, 500, 0, 600),

            FadeSpeed = Data.FadeSpeed or Data.fadespeed or 0.25,

            Pages = { },
            SubPages = { },
            Elements = { },

            IsOpen = true
        }

        local Items = { } do 
            Items["MainFrame"] = Instances:Create("Frame", {
                Parent = Library.Holder.Instance,
                AnchorPoint = Vector2New(0, 0),
                Name = "\0",
                Position = UDim2New(0, 0, 0, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = Window.Size,
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["MainFrame"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})

            Items["MainFrame"].Instance.Position = UDim2New(0, Camera.ViewportSize.X / 4, 0, Camera.ViewportSize.Y / 4)

            Items["MainFrame"]:MakeDraggable()
            Items["MainFrame"]:MakeResizeable(Vector2New(Window.Size.X.Offset, Window.Size.Y.Offset), Vector2New(9999, 9999))

            if IsMobile then
                Instances:Create("UIScale", {
                    Parent = Library.Holder.Instance,
                    Scale = 0.7
                })
            end
            
            Items["AccentBorder"] = Instances:Create("UIStroke", {
                Parent = Items["MainFrame"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(235, 157, 255)
            })  Items["AccentBorder"]:AddToTheme({Color = "Accent"})
            
            Items["Title"] = Instances:Create("TextLabel", {
                Parent = Items["MainFrame"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Window.Name,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2New(0, 6, 0, 1),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Title"]:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = Items["Title"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Inline"] = Instances:Create("Frame", {
                Parent = Items["MainFrame"].Instance,
                Name = "\0",
                Position = UDim2New(0, 7, 0, 20),
                BorderColor3 = FromRGB(27, 27, 32),
                Size = UDim2New(1, -14, 1, -27),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["Inline"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Outline"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Inline"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                Color = Library.Theme.Border,
                Name = "\0"
            }):AddToTheme({Color = "Border"})
            
            Items["Pages"] = Instances:Create("Frame", {
                Parent = Items["Inline"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 7, 0, 7),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -14, 0, 19),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })
            
            Instances:Create("UIListLayout", {
                Parent = Items["Pages"].Instance,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = UDimNew(0, 6),
                SortOrder = Enum.SortOrder.LayoutOrder
            })

            Items["Content"] = Instances:Create("Frame", {
                Parent = Items["Inline"].Instance,
                Name = "\0",
                Position = UDim2New(0, 7, 0, 26),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(1, -14, 1, -33),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["Content"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
        
            Instances:Create("UIStroke", {
                Parent = Items["Content"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                Color = Library.Theme.Outline,
                Name = "\0"
            }):AddToTheme({Color = "Outline"})

            if IsMobile then
                Items["FloatingButton"] = Instances:Create("TextButton", {
                    Parent = Library.Holder.Instance,
                    Text = "",
                    AutoButtonColor = false,
                    Name = "\0",
                    Position = UDim2New(0.5, 0, 0, 20),
                    AnchorPoint = Vector2New(0.5, 0),
                    Visible = true,
                    BorderColor3 = FromRGB(0, 0, 0),
                    Size = UDim2New(0, 50, 0, 50),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 0,
                    ZIndex = 127,
                    BackgroundColor3 = Library.Theme.Background
                })  Items["FloatingButton"]:AddToTheme({BackgroundColor3 = "Background"})

                --
                local Gui = Items["FloatingButton"].Instance

                local Dragging = false 
                local DragStart
                local StartPosition 

                local Set = function(Input)
                    local DragDelta = Input.Position - DragStart
                    Items["FloatingButton"]:Tween(TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2New(StartPosition.X.Scale, StartPosition.X.Offset + DragDelta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + DragDelta.Y)})
                end

                Items["FloatingButton"]:Connect("InputBegan", function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                        Dragging = true

                        DragStart = Input.Position
                        StartPosition = Gui.Position

                        Input.Changed:Connect(function()
                            if Input.UserInputState == Enum.UserInputState.End then
                                Dragging = false
                            end
                        end)
                    end
                end)

                Library:Connect(UserInputService.InputChanged, function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
                        if Dragging then
                            Set(Input)
                        end
                    end
                end)

                Instances:Create("TextLabel", {
                    Parent = Items["FloatingButton"].Instance,
                    BorderColor3 = FromRGB(0, 0, 0),
                    Name = "\0",
                    TextSize = 12,
                    Text = "Close",
                    BackgroundTransparency = 1,
                    AnchorPoint = Vector2New(0.5, 0.5),
                    Position = UDim2New(0.5, 0, 0.5, 0),
                    ZIndex = 127,
                    Size = UDim2New(1, -25, 1, -25),
                    BorderSizePixel = 0,
                    TextColor3 = FromRGB(255, 255, 255),
                    FontFace = Library.Font,
                    TextTransparency = 0,
                    BackgroundColor3 = FromRGB(255, 255, 255)
                }):AddToTheme({TextColor3 = "Text"})

                Instances:Create("UICorner", {
                    Parent = Items["FloatingButton"].Instance,
                    CornerRadius = UDimNew(1, 0)
                }) 
            end
        end

        local Debounce = false

        function Window:SetOpen(Bool)
            if Debounce then 
                return 
            end

            Window.IsOpen = Bool

            Debounce = true 

            if Bool then 
                Items["MainFrame"].Instance.Visible = true
            end

            local Descendants = Items["MainFrame"].Instance:GetDescendants()
            TableInsert(Descendants, Items["MainFrame"].Instance)

            local NewTween
            for Index, Value in Descendants do 
                local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                if not ValueIndex then 
                    continue
                end

                if type(ValueIndex) == "table" then
                    for _, Property in ValueIndex do 
                        NewTween = Library:FadeItem(Value, Property, Bool, Window.FadeSpeed)
                    end
                else
                    NewTween = Library:FadeItem(Value, ValueIndex, Bool, Window.FadeSpeed)
                end
            end

            Library:Connect(NewTween.Tween.Completed, function()
                Debounce = false
                Items["MainFrame"].Instance.Visible = Bool
            end)
        end

        Library:Connect(UserInputService.InputBegan, function(Input)
            if tostring(Input.KeyCode) == Library.MenuKeybind or tostring(Input.UserInputType) == Library.MenuKeybind then
                Window:SetOpen(not Window.IsOpen)
            end
        end)

        if IsMobile then
            Items["FloatingButton"]:Connect("MouseButton1Down", function()
                Window:SetOpen(not Window.IsOpen)
            end)
        end

        Window.Elements = Items

        return setmetatable(Window, Library)
    end

    Library.Page = function(self, Data)
        Data = Data or { }

        local Page = {
            Window = self,

            Name = Data.Name or Data.name or "Page",
            Columns = Data.Columns or Data.columns or 2,

            HasSubtabs = Data.Subtabs or Data.subtabs or false,

            Active = false,
            ColumnsData = { },
            Elements = { }
        }

        local Items = { } do 
            Items["Inactive"] = Instances:Create("TextButton", {
                Parent = Page.Window.Elements["Pages"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Text = "",
                AutoButtonColor = false,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 2,
                TextSize = 14,
                BackgroundColor3 = FromRGB(30, 30, 35)
            })  Items["Inactive"]:AddToTheme({BackgroundColor3 = "Page Background", BorderColor3 = "Border"})

            Instances:Create("UIStroke", {
                Parent = Items["Inactive"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                Color = Library.Theme.Outline,
                Name = "\0"
            }):AddToTheme({Color = "Outline"})
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Inactive"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                TextTransparency = 0.47999998927116394,
                Text = Page.Name,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BackgroundTransparency = 1,
                Position = UDim2New(0, 0, 0, -1),
                BorderSizePixel = 0,
                BorderColor3 = FromRGB(0, 0, 0),
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Hide"] = Instances:Create("Frame", {
                Parent = Items["Inactive"].Instance,
                Visible = false,
                BorderColor3 = FromRGB(0, 0, 0),
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                Size = UDim2New(1, 0, 0, 3),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["Hide"]:AddToTheme({BackgroundColor3 = "Background"})
            
            Items["MiscPixel1"] = Instances:Create("Frame", {
                Parent = Items["Hide"].Instance,
                Size = UDim2New(0, 1, 0, 1),
                Name = "\0",
                Position = UDim2New(0, -1, 0, 1),
                BorderColor3 = FromRGB(0, 0, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(27, 27, 32)
            })  Items["MiscPixel1"]:AddToTheme({BackgroundColor3 = "Outline"})
            
            Items["MiscPixel2"] = Instances:Create("Frame", {
                Parent = Items["Hide"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                AnchorPoint = Vector2New(1, 0),
                Name = "\0",
                Position = UDim2New(1, 1, 0, 1),
                Size = UDim2New(0, 1, 0, 1),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(27, 27, 32)
            })  Items["MiscPixel2"]:AddToTheme({BackgroundColor3 = "Outline"})
            
            Items["UIGradient"] = Instances:Create("UIGradient", {
                Parent = Items["Inactive"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(108, 108, 108))}
            })            

            Items["Page"] = Instances:Create("Frame", {
                Parent = Page.Window.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255),
                Visible = false
            })
            
            if not Page.HasSubtabs then 
                Instances:Create("UIListLayout", {
                    Parent = Items["Page"].Instance,
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalFlex = Enum.UIFlexAlignment.Fill
                })
                
                for Index = 1, Page.Columns do
                    local NewColumn = Instances:Create("ScrollingFrame", {
                        Parent = Items["Page"].Instance,
                        ScrollBarImageColor3 = FromRGB(235, 157, 255),
                        Active = true,
                        AutomaticCanvasSize = Enum.AutomaticSize.Y,
                        ScrollBarThickness = 1,
                        Name = "\0",
                        BackgroundTransparency = 1,
                        Size = UDim2New(0, 100, 0, 100),
                        BackgroundColor3 = FromRGB(255, 255, 255),
                        BorderColor3 = FromRGB(0, 0, 0),
                        BorderSizePixel = 0,
                        BottomImage = Library:GetImage("Scrollbar"),
                        MidImage = Library:GetImage("Scrollbar"),
                        TopImage = Library:GetImage("Scrollbar"),
                        CanvasSize = UDim2New(0, 0, 0, 0)
                    })  NewColumn:AddToTheme({ScrollBarImageColor3 = "Accent"})
                    
                    Instances:Create("UIPadding", {
                        Parent = NewColumn.Instance,
                        PaddingTop = UDimNew(0, 6),
                        PaddingBottom = UDimNew(0, 6),
                        PaddingRight = UDimNew(0, 6),
                        PaddingLeft = UDimNew(0, 6)
                    })
                    
                    Instances:Create("UIListLayout", {
                        Parent = NewColumn.Instance,
                        Padding = UDimNew(0, 8),
                        SortOrder = Enum.SortOrder.LayoutOrder
                    }) 

                    Page.ColumnsData[Index] = NewColumn
                end
            else
                Items["Columns"] = Instances:Create("Frame", {
                    Parent = Items["Page"].Instance,
                    Name = "\0",
                    Position = UDim2New(0, 7, 0, 45),
                    BorderColor3 = FromRGB(10, 10, 10),
                    Size = UDim2New(1, -14, 1, -52),
                    BorderSizePixel = 2,
                    BackgroundColor3 = FromRGB(15, 15, 20)
                })  Items["Columns"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})

                Items["SubTabs"] = Instances:Create("Frame", {
                    Parent = Items["Page"].Instance,
                    Name = "\0",
                    BackgroundTransparency = 1,
                    Position = UDim2New(0, 7, 0, 7),
                    BorderColor3 = FromRGB(0, 0, 0),
                    Size = UDim2New(1, -14, 0, 35),
                    BorderSizePixel = 0,
                    BackgroundColor3 = FromRGB(255, 255, 255)
                }) 

                Instances:Create("UIListLayout", {
                    Parent = Items["SubTabs"].Instance,
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    Padding = UDimNew(0, 6),
                    SortOrder = Enum.SortOrder.LayoutOrder
                }) 
            end
        end

        local Debounce = false

        function Page:Turn(Bool)
            if Debounce then 
                return 
            end

            Page.Active = Bool

            Debounce = true 

            if Bool then 
                Items["Page"].Instance.Visible = true

                Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Accent, TextTransparency = 0})
                Items["Hide"].Instance.Visible = true

                Items["Text"]:ChangeItemTheme({TextColor3 = "Accent"})
            else
                Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Text, TextTransparency = 0.5})
                Items["Hide"].Instance.Visible = false

                Items["Text"]:ChangeItemTheme({TextColor3 = "Text"})
            end

            local Descendants = Items["Page"].Instance:GetDescendants()
            TableInsert(Descendants, Items["Page"].Instance)

            local NewTween
            for Index, Value in Descendants do 
                local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                if not ValueIndex then 
                    continue
                end

                if type(ValueIndex) == "table" then
                    for _, Property in ValueIndex do 
                        NewTween = Library:FadeItem(Value, Property, Bool, Page.Window.FadeSpeed or 0.5)
                    end
                else
                    NewTween = Library:FadeItem(Value, ValueIndex, Bool, Page.Window.FadeSpeed or 0.5)
                end
            end

            Library:Connect(NewTween.Tween.Completed, function()
                Debounce = false
                Items["Page"].Instance.Visible = Bool
            end)
        end

        Items["Inactive"]:Connect("MouseButton1Down", function()
            for Index, Value in Page.Window.Pages do
                Value:Turn(Value == Page)
            end
        end)

        if #Page.Window.Pages == 0 then 
            Page:Turn(true)
        end

        Page.Elements = Items

        TableInsert(Page.Window.Pages, Page)
        return setmetatable(Page, Library.Pages)
    end

    Library.Pages.SubPage = function(self, Data)
        Data = Data or { }

        local SubPage = {
            Window = self.Window,
            Page = self,

            Icon = Data.Icon or Data.icon or "9080568477801",
            Columns = Data.Columns or Data.columns or 2,

            Active = false,
            ColumnsData = { },
            Elements = { }
        }

        local Items = { } do
            Items["Inactive"] = Instances:Create("TextButton", {
                Parent = SubPage.Page.Elements["SubTabs"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Text = "",
                AutoButtonColor = false,
                Name = "\0",
                Size = UDim2New(1, 0, 1, -2),
                BorderSizePixel = 2,
                TextSize = 14,
                BackgroundColor3 = FromRGB(30, 30, 35)
            })  Items["Inactive"]:AddToTheme({BackgroundColor3 = "Page Background", BorderColor3 = "Border"})

            Instances:Create("UIStroke", {
                Parent = Items["Inactive"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})

            Items["Hide"] = Instances:Create("Frame", {
                Parent = Items["Inactive"].Instance,
                Visible = false,
                BorderColor3 = FromRGB(0, 0, 0),
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 2),
                Size = UDim2New(1, 0, 0, 2),
                ZIndex = 5,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["Hide"]:AddToTheme({BackgroundColor3 = "Background"})

            Items["MiscPixel1"] = Instances:Create("Frame", {
                Parent = Items["Hide"].Instance,
                Size = UDim2New(0, 1, 0, 1),
                Name = "\0",
                Position = UDim2New(0, -1, 0, 1),
                BorderColor3 = FromRGB(0, 0, 0),
                ZIndex = 5,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(27, 27, 32)
            }) 

            Items["MiscPixel2"] = Instances:Create("Frame", {
                Parent = Items["Hide"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                AnchorPoint = Vector2New(1, 0),
                Name = "\0",
                Position = UDim2New(1, 1, 0, 1),
                Size = UDim2New(0, 1, 0, 1),
                ZIndex = 5,
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(27, 27, 32)
            }) 

            Items["Icon"] = Instances:Create("ImageLabel", {
                Parent = Items["Inactive"].Instance,
                ScaleType = Enum.ScaleType.Fit,
                ImageTransparency = 0.35,
                BorderColor3 = FromRGB(0, 0, 0),
                Name = "\0",
                AnchorPoint = Vector2New(0.5, 0.5),
                Image = "rbxassetid://"..SubPage.Icon,
                BackgroundTransparency = 1,
                Position = UDim2New(0.5, 0, 0.5, 0),
                Size = UDim2New(0, 30, 0, 30),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Icon"]:AddToTheme({ImageColor3 = "Text"})

            Instances:Create("UIGradient", {
                Parent = Items["Inactive"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(138, 138, 138))}
            }) 

            Items["Subtab"] = Instances:Create("Frame", {
                Parent = SubPage.Page.Elements["Columns"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 

            Instances:Create("UIPadding", {
                Parent = Items["Subtab"].Instance,
                PaddingTop = UDimNew(0, 6),
                PaddingRight = UDimNew(0, 6),
                PaddingLeft = UDimNew(0, 6)
            }) 

            Instances:Create("UIListLayout", {
                Parent = Items["Subtab"].Instance,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                SortOrder = Enum.SortOrder.LayoutOrder,
                VerticalFlex = Enum.UIFlexAlignment.Fill
            }) 

            Instances:Create("UIStroke", {
                Parent = Items["Subtab"].Instance,
                Color = FromRGB(27, 27, 32),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Outline"})

            for Index = 1, SubPage.Columns do
                local NewColumn = Instances:Create("ScrollingFrame", {
                    Parent = Items["Subtab"].Instance,
                    ScrollBarImageColor3 = FromRGB(235, 157, 255),
                    Active = true,
                    AutomaticCanvasSize = Enum.AutomaticSize.Y,
                    ScrollBarThickness = 1,
                    Name = "\0",
                    BackgroundTransparency = 1,
                    Size = UDim2New(0, 100, 0, 100),
                    BackgroundColor3 = FromRGB(255, 255, 255),
                    BorderColor3 = FromRGB(0, 0, 0),
                    BorderSizePixel = 0,
                    CanvasSize = UDim2New(0, 0, 0, 0)
                })  NewColumn:AddToTheme({ScrollBarImageColor3 = "Accent"})

                Instances:Create("UIPadding", {
                    Parent = NewColumn.Instance,
                    PaddingTop = UDimNew(0, 6),
                    PaddingBottom = UDimNew(0, 6),
                    PaddingRight = UDimNew(0, 6),
                    PaddingLeft = UDimNew(0, 6)
                }) 

                Instances:Create("UIListLayout", {
                    Parent = NewColumn.Instance,
                    Padding = UDimNew(0, 8),
                    SortOrder = Enum.SortOrder.LayoutOrder
                }) 

                SubPage.ColumnsData[Index] = NewColumn
            end
        end

        local Debounce = false

        function SubPage:Turn(Bool)
            if Debounce then 
                return 
            end

            SubPage.Active = Bool

            Debounce = true 

            if Bool then 
                Items["Subtab"].Instance.Visible = true

                Items["Icon"]:Tween(nil, {ImageColor3 = Library.Theme.Accent, ImageTransparency = 0})
                Items["Hide"].Instance.Visible = true

                Items["Icon"]:ChangeItemTheme({ImageColor3 = "Accent"})

                Items["Inactive"].Instance.Size = UDim2New(1, 0, 1, 1)
            else
                Items["Icon"]:Tween(nil, {ImageColor3 = Library.Theme.Text, ImageTransparency = 0.35})
                Items["Hide"].Instance.Visible = false

                Items["Icon"]:ChangeItemTheme({ImageColor3 = "Text"})
                Items["Inactive"].Instance.Size = UDim2New(1, 0, 1, -2)
            end

            local Descendants = Items["Subtab"].Instance:GetDescendants()
            TableInsert(Descendants, Items["Subtab"].Instance)

            local NewTween
            for Index, Value in Descendants do 
                local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                if not ValueIndex then 
                    continue
                end

                if type(ValueIndex) == "table" then
                    for _, Property in ValueIndex do 
                        NewTween = Library:FadeItem(Value, Property, Bool, SubPage.Window.FadeSpeed or 0.5)
                    end
                else
                    NewTween = Library:FadeItem(Value, ValueIndex, Bool, SubPage.Window.FadeSpeed or 0.5)
                end
            end

            Library:Connect(NewTween.Tween.Completed, function()
                Debounce = false
                Items["Subtab"].Instance.Visible = Bool
            end)
        end

        Items["Inactive"]:Connect("MouseButton1Down", function()
            for Index, Value in SubPage.Window.SubPages do
                Value:Turn(Value == SubPage)
            end
        end)

        if #SubPage.Window.SubPages == 0 then 
            SubPage:Turn(true)
        end

        SubPage.Elements = Items

        TableInsert(SubPage.Window.SubPages, SubPage)
        return setmetatable(SubPage, Library.Pages)
    end

    Library.Pages.Section = function(self, Data)
        Data = Data or { }

        local Section = {
            Window = self.Window,
            Page = self,

            Name = Data.Name or Data.name or "Section",
            Side = Data.Side or Data.side or 1,

            Elements = { }
        }

        local Items = { } do 
            Items["Section"] = Instances:Create("Frame", {
                Parent = Section.Page.ColumnsData[Section.Side].Instance,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 25),
                BorderColor3 = FromRGB(27, 27, 32),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["Section"]:AddToTheme({BackgroundColor3 = "Inline", BorderColor3 = "Outline"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Section"].Instance,
                Color = FromRGB(10, 10, 10),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Border"})
            
            Instances:Create("UIPadding", {
                Parent = Items["Section"].Instance,
                PaddingBottom = UDimNew(0, 6)
            })
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["Section"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            })
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Section"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Section.Name,
                Name = "\0",
                Size = UDim2New(1, -12, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2New(0, 4, 0, 2),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Content"] = Instances:Create("Frame", {
                Parent = Items["Section"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 7, 0, 21),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -14, 1, -20),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })
            
            Instances:Create("UIListLayout", {
                Parent = Items["Content"].Instance,
                Padding = UDimNew(0, 6),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        end

        Section.Elements = Items

        return setmetatable(Section, Library.Sections)
    end

    Library.Pages.MultiSection = function(self, Data)
        local MultiSection = {
            Window = self.Window,
            Page = self,
            
            Sections = Data.Sections or Data.sections or { "Section 1", "Section 2", "Section 3" }, 
            Side = Data.Side or Data.side or 1,

            SectionContents = { },

            Elements = { }
        }

        local Items = { } do
            Items["MultiSection"] = Instances:Create("Frame", {
                Parent = MultiSection.Page.ColumnsData[MultiSection.Side].Instance,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 25),
                BorderColor3 = FromRGB(27, 27, 32),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["MultiSection"]:AddToTheme({BackgroundColor3 = "Inline", BorderColor3 = "Outline"})
            
            Instances:Create("UIStroke", {
                Parent = Items["MultiSection"].Instance,
                Color = FromRGB(10, 10, 10),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Border"})
            
            Instances:Create("UIPadding", {
                Parent = Items["MultiSection"].Instance,
                PaddingBottom = UDimNew(0, 6)
            }) 
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["MultiSection"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            }) 
            
            Items["Sections"] = Instances:Create("Frame", {
                Parent = Items["MultiSection"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 7, 0, 9),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -14, 0, 19),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Instances:Create("UIListLayout", {
                Parent = Items["Sections"].Instance,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = UDimNew(0, 5),
                SortOrder = Enum.SortOrder.LayoutOrder
            }) 

            Items["Content"] = Instances:Create("Frame", {
                Parent = Items["MultiSection"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 7, 0, 35),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(1, -14, 1, -33),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(15, 15, 20)
            }) 
        end

        for Index, Value in MultiSection.Sections do 
            local NewSection = {
                Window = MultiSection.Window,
                Page = MultiSection.Page,
                MultiSection = MultiSection,

                Name = Value,

                Elements = { },

                Active = false,
            }

            local SubItems = { } do 
                SubItems["Inactive"] = Instances:Create("TextButton", {
                    Parent = Items["Sections"].Instance,
                    FontFace = Library.Font,
                    TextColor3 = FromRGB(0, 0, 0),
                    BorderColor3 = FromRGB(10, 10, 10),
                    Text = "",
                    AutoButtonColor = false,
                    Name = "\0",
                    Size = UDim2New(1, 0, 1, 0),
                    BorderSizePixel = 2,
                    TextSize = 14,
                    BackgroundColor3 = FromRGB(30, 30, 35)
                })  SubItems["Inactive"]:AddToTheme({BackgroundColor3 = "Page Background", BorderColor3 = "Border"})

                SubItems["Text"] = Instances:Create("TextLabel", {
                    Parent = SubItems["Inactive"].Instance,
                    FontFace = Library.Font,
                    TextColor3 = FromRGB(215, 215, 215),
                    TextTransparency = 0.48,
                    Text = NewSection.Name,
                    Name = "\0",
                    Size = UDim2New(1, 0, 1, 0),
                    BackgroundTransparency = 1,
                    Position = UDim2New(0, 0, 0, -1),
                    BorderSizePixel = 0,
                    BorderColor3 = FromRGB(0, 0, 0),
                    TextSize = 12,
                    BackgroundColor3 = FromRGB(255, 255, 255)
                })  SubItems["Text"]:AddToTheme({TextColor3 = "Text"})

                Instances:Create("UIStroke", {
                    Parent = SubItems["Text"].Instance,
                    LineJoinMode = Enum.LineJoinMode.Miter,
                    Name = "\0"
                }):AddToTheme({Color = "Text Border"})

                SubItems["Hide"] = Instances:Create("Frame", {
                    Parent = SubItems["Inactive"].Instance,
                    Visible = false,
                    BorderColor3 = FromRGB(0, 0, 0),
                    AnchorPoint = Vector2New(0, 1),
                    Name = "\0",
                    Position = UDim2New(0, 0, 1, 0),
                    Size = UDim2New(1, 0, 0, 3),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = FromRGB(15, 15, 20)
                })  SubItems["Hide"]:AddToTheme({BackgroundColor3 = "Background"})

                SubItems["MiscPixel1"] = Instances:Create("Frame", {
                    Parent = SubItems["Hide"].Instance,
                    Size = UDim2New(0, 1, 0, 1),
                    Name = "\0",
                    Position = UDim2New(0, -1, 0, 1),
                    BorderColor3 = FromRGB(0, 0, 0),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = FromRGB(27, 27, 32)
                })  SubItems["MiscPixel1"]:AddToTheme({BackgroundColor3 = "Outline"})

                SubItems["MiscPixel2"] = Instances:Create("Frame", {
                    Parent = SubItems["Hide"].Instance,
                    BorderColor3 = FromRGB(0, 0, 0),
                    AnchorPoint = Vector2New(1, 0),
                    Name = "\0",
                    Position = UDim2New(1, 1, 0, 1),
                    Size = UDim2New(0, 1, 0, 1),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = FromRGB(27, 27, 32)
                })  SubItems["MiscPixel2"]:AddToTheme({BackgroundColor3 = "Outline"})

                Instances:Create("UIStroke", {
                    Parent = SubItems["Inactive"].Instance,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    LineJoinMode = Enum.LineJoinMode.Miter,
                    Name = "\0",
                    Color = FromRGB(27, 27, 32)
                }):AddToTheme({Color = "Outline"})

                Instances:Create("UIGradient", {
                    Parent = SubItems["Inactive"].Instance,
                    Rotation = 90,
                    Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(108, 108, 108))}
                }) 

                SubItems["Content"] = Instances:Create("Frame", {
                    Parent = Items["Content"].Instance,
                    BackgroundTransparency = 1,
                    Name = "\0",
                    BorderColor3 = FromRGB(0, 0, 0),
                    Size = UDim2New(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    Visible = false,
                    BackgroundColor3 = FromRGB(255, 255, 255)
                }) 
                
                Instances:Create("UIListLayout", {
                    Parent = SubItems["Content"].Instance,
                    Padding = UDimNew(0, 6),
                    SortOrder = Enum.SortOrder.LayoutOrder
                }) 
            end

            local Debounce = false

            function NewSection:Turn(Bool)
                if Debounce then 
                    return 
                end

                NewSection.Active = Bool

                Debounce = true 

                if Bool then 
                    SubItems["Content"].Instance.Visible = true

                    SubItems["Text"]:Tween(nil, {TextColor3 = Library.Theme.Accent, TextTransparency = 0})

                    SubItems["Text"]:ChangeItemTheme({TextColor3 = "Accent"})
                else
                    SubItems["Text"]:Tween(nil, {TextColor3 = Library.Theme.Text, TextTransparency = 0.5})

                    SubItems["Text"]:ChangeItemTheme({TextColor3 = "Text"})
                end

                local Descendants = SubItems["Content"].Instance:GetDescendants()
                TableInsert(Descendants, SubItems["Content"].Instance)

                local NewTween
                for Index, Value in Descendants do 
                    local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                    if not ValueIndex then 
                        continue
                    end

                    if type(ValueIndex) == "table" then
                        for _, Property in ValueIndex do 
                            NewTween = Library:FadeItem(Value, Property, Bool, MultiSection.Window.FadeSpeed or 0.5)
                        end
                    else
                        NewTween = Library:FadeItem(Value, ValueIndex, Bool, MultiSection.Window.FadeSpeed or 0.5)
                    end
                end

                Library:Connect(NewTween.Tween.Completed, function()
                    Debounce = false
                    SubItems["Content"].Instance.Visible = Bool
                end)
            end

            SubItems["Inactive"]:Connect("MouseButton1Down", function()
                for Index, Value in MultiSection.SectionContents do
                    Value:Turn(Value == NewSection)
                end
            end)

            if #MultiSection.SectionContents == 0 then 
                NewSection:Turn(true)
            end

            NewSection.Elements = SubItems

            MultiSection.SectionContents[#MultiSection.SectionContents+1] = setmetatable(NewSection, Library.Sections)
        end

        MultiSection.SectionContents[1]:Turn(true)
        MultiSection.Window.Sections[#MultiSection.Window.Sections+1] = MultiSection
        return TableUnpack(MultiSection.SectionContents)
    end

    Library.Pages.ScrollableSection = function(self, Data)
        Data = Data or { }

        local Section = {
            Window = self.Window,
            Page = self,

            Name = Data.Name or Data.name or "Section",
            Side = Data.Side or Data.side or 1,
            Size = Data.Size or Data.size or 175,

            Elements = { }
        }

        local Items = { } do 
            Items["Section"] = Instances:Create("Frame", {
                Parent = Section.Page.ColumnsData[Section.Side].Instance,
                Name = "\0",
                Size = UDim2New(1, 0, 0, Section.Size),
                BorderColor3 = FromRGB(27, 27, 32),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["Section"]:AddToTheme({BackgroundColor3 = "Inline", BorderColor3 = "Outline"})

            Items["Fade"] = Instances:Create("Frame", {
                Parent = Items["Section"].Instance,
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 20),
                AnchorPoint = Vector2New(0, 1),
                Position = UDim2New(0, 0, 1, 2),
                BorderSizePixel = 0,
                ZIndex = 15,
                BackgroundColor3 = FromRGB(27, 27, 32)
            })  Items["Fade"]:AddToTheme({BackgroundColor3 = "Inline"})

            Instances:Create("UIGradient", {
                Parent = Items["Fade"].Instance,
                Rotation = -90,
                Transparency = NumSequence{NumSequenceKeypoint(0, 0), NumSequenceKeypoint(0.718, 0.768750011920929), NumSequenceKeypoint(1, 1)}
            })
            
            Instances:Create("UIStroke", {
                Parent = Items["Section"].Instance,
                Color = FromRGB(10, 10, 10),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Border"})
            
            Instances:Create("UIPadding", {
                Parent = Items["Section"].Instance,
                PaddingBottom = UDimNew(0, 6)
            })
            
            Items["AccentLine"] = Instances:Create("Frame", {
                Parent = Items["Section"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["AccentLine"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["AccentLine"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(65, 65, 65))}
            })
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Section"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Section.Name,
                Name = "\0",
                Size = UDim2New(1, -12, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2New(0, 4, 0, 2),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Content"] = Instances:Create("ScrollingFrame", {
                Parent = Items["Section"].Instance,
                Name = "\0",
                ScrollBarThickness = 3,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                CanvasSize = UDim2New(0, 0, 0, 0),
                ScrollBarImageColor3 = FromRGB(235, 157, 255),
                MidImage = Library:GetImage("Scrollbar"),
                TopImage = Library:GetImage("Scrollbar"),
                BottomImage = Library:GetImage("Scrollbar"),
                Active = true,
                BackgroundTransparency = 1,
                ZIndex = 16,
                Position = UDim2New(0, 0, 0, 21),
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -5, 1, -20),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Content"]:AddToTheme({ScrollBarImageColor3 = "Accent"})

            Instances:Create("UIPadding", {
                Parent = Items["Content"].Instance,
                PaddingTop = UDimNew(0, 0),
                PaddingBottom = UDimNew(0, 8),
                PaddingRight = UDimNew(0, 11),
                PaddingLeft = UDimNew(0, 8)
            })
            
            Instances:Create("UIListLayout", {
                Parent = Items["Content"].Instance,
                Padding = UDimNew(0, 6),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        end

        Section.Elements = Items

        return setmetatable(Section, Library.Sections)
    end

    Library.Sections.Divider = function(self)
        local Divider = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
        }

        local Items = { } do
            Items["Divider"] = Instances:Create("Frame", {
                Parent = Divider.Section.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 10),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 

            Items["RealDivider"] = Instances:Create("Frame", {
                Parent = Items["Divider"].Instance,
                AnchorPoint = Vector2New(0, 0.5),
                Name = "\0",
                Position = UDim2New(0, 0, 0.5, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(1, 0, 0, 3),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(15, 15, 20)
            })  Items["RealDivider"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})

            Instances:Create("UIStroke", {
                Parent = Items["RealDivider"].Instance,
                Color = FromRGB(27, 27, 32),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Outline"})
        end
        
        function Divider:SetVisibility(Bool)
            Items["Divider"].Instance.Visible = Bool
        end

        return Divider
    end

    Library.Sections.Toggle = function(self, Data)
        Data = Data or { }

        local Toggle = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Name = Data.Name or Data.name or "Toggle",
            Flag = Data.Flag or Data.flag or Library:NextFlag(),
            Default = Data.Default or Data.default or false,
            Callback = Data.Callback or Data.callback or function() end,

            Value = false,
            Class = "Toggle",

            Count = 0
        }

        local Items = { } do 
            Items["Toggle"] = Instances:Create("TextButton", {
                Parent = Toggle.Section.Elements["Content"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                BackgroundTransparency = 1,
                Name = "\0",
                Size = UDim2New(1, 0, 0, 11),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Indicator"] = Instances:Create("Frame", {
                Parent = Items["Toggle"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(0, 10, 0, 10),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(33, 33, 36)
            })  Items["Indicator"]:AddToTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Indicator"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Instances:Create("UIGradient", {
                Parent = Items["Indicator"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Toggle"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                TextTransparency = 0.48,
                Text = Toggle.Name,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                Position = UDim2New(0, 18, 0, -1),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                BorderColor3 = FromRGB(0, 0, 0),
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            Items["Toggle"]:OnHover(function()
                if Toggle.Value then 
                    return 
                end

                Items["Indicator"]:Tween(nil, {BackgroundColor3 = Library.Theme["Hovered Element"]})
                Items["Indicator"]:ChangeItemTheme({BackgroundColor3 = "Hovered Element", BorderColor3 = "Border"})
            end)

            Items["Toggle"]:OnHoverLeave(function()
                if Toggle.Value then 
                    return 
                end

                Items["Indicator"]:Tween(nil, {BackgroundColor3 = Library.Theme["Element"]})
                Items["Indicator"]:ChangeItemTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})
            end)
        end
        
        function Toggle:Get()
            return Toggle.Value
        end

        function Toggle:Set(Bool)
            Toggle.Value = Bool or not Toggle.Value

            Library.Flags[Toggle.Flag] = Toggle.Value

            if Toggle.Value then 
                Items["Indicator"]:ChangeItemTheme({BackgroundColor3 = "Accent"})

                Items["Indicator"]:Tween(nil, {BackgroundColor3 = Library.Theme.Accent})
                Items["Text"]:Tween(nil, {TextTransparency = 0})
            else
                Items["Indicator"]:ChangeItemTheme({BackgroundColor3 = "Element"})

                Items["Indicator"]:Tween(nil, {BackgroundColor3 = Library.Theme.Element})
                Items["Text"]:Tween(nil, {TextTransparency = 0.48})
            end

            if Toggle.Callback then 
                Library:SafeCall(Toggle.Callback, Toggle.Value)
            end
        end

        function Toggle:SetVisiblity(Bool)
            Items["Toggle"].Instance.Visible = Bool
        end

        function Toggle:Colorpicker(Data)
            Data = Data or { }

            local Colorpicker = {
                Window = self.Window,
                Tab = self.Tab,
                Section = self.Section,

                Parent = Items["Toggle"],
                Name = Data.Name or Data.name or "Colorpicker",
                Flag = Data.Flag or Data.flag or Library:NextFlag(),
                Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
                Callback = Data.Callback or Data.callback or function() end,
                Alpha = Data.Alpha or Data.alpha or false,
                Count = Toggle.Count,

                FadeSpeed = self.Window.FadeSpeed
            }

            Toggle.Count += 1
            Colorpicker.Count = Toggle.Count

            local Extension = Library:CreateColorpicker(Colorpicker)
            Library.Flags[Colorpicker.Flag] = Extension

            return Colorpicker
        end

        function Toggle:Keybind(Data)
            Data = Data or { }

            local Keybind = {
                Window = self.Window,
                Tab = self.Tab,
                Section = self.Section,

                Parent = Items["Toggle"],
                Name = Data.Name or Data.name or "Keybind",
                Flag = Data.Flag or Data.flag or Library:NextFlag(),
                Default = Data.Default or Data.default or "MB2",
                Mode = Data.Mode or Data.mode or "Toggle",
                Callback = Data.Callback or Data.callback or function() end,
            }

            local Extension = Library:CreateKeybind(Keybind)
            Library.Flags[Keybind.Flag] = Extension

            return Keybind, Extension
        end

        Items["Toggle"]:Connect("MouseButton1Down", function()
            Toggle:Set()
        end)

        if Toggle.Default then 
            Toggle:Set(Toggle.Default)
        end

        Library.SetFlags[Toggle.Flag] = function(Value)
            Toggle:Set(Value)
        end

        return Toggle
    end

    Library.Sections.Button = function(self, Data)
        Data = Data or { }

        local Button = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Name = Data.Name or Data.name,
            Callback = Data.Callback or Data.callback or function() end,
        }

        local Items = { } do 
            Items["Button"] = Instances:Create("TextButton", {
                Parent = Button.Section.Elements["Content"].Instance,
                BorderColor3 = FromRGB(10, 10, 10),
                AutoButtonColor = false,
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                Size = UDim2New(1, 0, 0, 17),
                Selectable = false,
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(33, 33, 36)
            })  Items["Button"]:AddToTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})

            Instances:Create("UIGradient", {
                Parent = Items["Button"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["Button"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"}) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Button"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Button.Name,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BackgroundTransparency = 1,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2New(0, 0, 0, -1),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Items["TextBorder"] = Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            Items["Button"]:OnHover(function()
                Items["Button"]:Tween(nil, {BackgroundColor3 = Library.Theme["Hovered Element"]})
                Items["Button"]:ChangeItemTheme({BackgroundColor3 = "Hovered Element", BorderColor3 = "Border"})
            end)

            Items["Button"]:OnHoverLeave(function()
                Items["Button"]:Tween(nil, {BackgroundColor3 = Library.Theme["Element"]})
                Items["Button"]:ChangeItemTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})
            end)
        end

        function Button:Press()
            Library:SafeCall(Button.Callback)

            Items["Text"]:ChangeItemTheme({TextColor3 = "Accent"})
            Items["Button"]:ChangeItemTheme({BackgroundColor3 = "Accent"})

            Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Accent})
            Items["Button"]:Tween(nil, {BackgroundColor3 = Library.Theme.Accent})

            task.wait(0.1)

            Items["Text"]:ChangeItemTheme({TextColor3 = "Text"})
            Items["Button"]:ChangeItemTheme({BackgroundColor3 = "Element"})

            Items["Text"]:Tween(nil, {TextColor3 = Library.Theme.Text})
            Items["Button"]:Tween(nil, {BackgroundColor3 = Library.Theme.Element})
        end

        function Button:SetVisiblity(Bool)
            Items["Button"].Instance.Visible = Bool
        end

        Items["Button"]:Connect("MouseButton1Down", function()
            Button:Press()
        end)

        return Button
    end

    Library.Sections.Slider = function(self, Data)
        Data = Data or { }

        local Slider = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Name = Data.Name or Data.name or "Slider",
            Flag = Data.Flag or Data.flag or Library:NextFlag(),
            Min = Data.Min or Data.min or 0,
            Default = Data.Default or Data.default or 0,
            Max = Data.Max or Data.max or 100,
            Suffix = Data.Suffix or Data.suffix or "",
            Decimals = Data.Decimals or Data.decimals or 1,
            Callback = Data.Callback or Data.callback or function() end,
            Compact = Data.Compact or Data.compact or false,

            Value = 0,
            Sliding = false,
            Class = "Slider",
        }

        local Items = { } do 
            Items["Slider"] = Instances:Create("Frame", {
                Parent = Slider.Section.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 27),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Slider"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Slider.Name,
                Name = "\0",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = UDim2New(1, 0, 0, 13),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["RealSlider"] = Instances:Create("TextButton", {
                Parent = Items["Slider"].Instance,
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Text = "",
                AutoButtonColor = false,
                Size = UDim2New(1, 0, 0, 10),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(33, 33, 36)
            })  Items["RealSlider"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["RealSlider"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Instances:Create("UIGradient", {
                Parent = Items["RealSlider"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Items["Indicator"] = Instances:Create("Frame", {
                Parent = Items["RealSlider"].Instance,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(0.5, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(235, 157, 255)
            })  Items["Indicator"]:AddToTheme({BackgroundColor3 = "Accent"})
            
            Instances:Create("UIGradient", {
                Parent = Items["Indicator"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Items["Value"] = Instances:Create("TextLabel", {
                Parent = Items["RealSlider"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "50/100s",
                Name = "\0",
                BackgroundTransparency = 1,
                Position = UDim2New(0, 0, 0, -1),
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Value"]:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = Items["Value"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            if Slider.Compact then 
                Items["Value"]:Clean()
                Items["Value"] = nil

                Items["Slider"].Instance.Size = UDim2New(1,0,0,10)
                Items["Text"].Instance.Parent = Items["RealSlider"].Instance
                Items["Text"].Instance.Position = UDim2New(0,0,0,-2)
                Items["Text"].Instance.TextXAlignment = Enum.TextXAlignment.Center
            end

            Items["RealSlider"]:OnHover(function()
                Items["RealSlider"]:Tween(nil, {BackgroundColor3 = Library.Theme["Hovered Element"]})
                Items["RealSlider"]:ChangeItemTheme({BackgroundColor3 = "Hovered Element", BorderColor3 = "Border"})
            end)

            Items["RealSlider"]:OnHoverLeave(function()
                Items["RealSlider"]:Tween(nil, {BackgroundColor3 = Library.Theme["Background"]})
                Items["RealSlider"]:ChangeItemTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            end)
        end

        function Slider:Set(Value)
            Slider.Value = MathClamp(Library:Round(Value, Slider.Decimals), Slider.Min, Slider.Max)

            Library.Flags[Slider.Flag] = Slider.Value
            
            if Slider.Compact then
                Items["Text"].Instance.Text = `{Slider.Name}: {Slider.Value}{Slider.Suffix}`
            else
                Items["Value"].Instance.Text = `{Slider.Value}{Slider.Suffix}`
            end

            Items["Indicator"]:Tween(TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2New((Slider.Value - Slider.Min) / (Slider.Max - Slider.Min), 0, 1, 0)})

            if Slider.Callback then 
                Library:SafeCall(Slider.Callback, Slider.Value)
            end
        end

        function Slider:Get()
            return Slider.Value
        end

        function Slider:SetVisibility(Bool)
            Items["Slider"].Instance.Visible = Bool
        end

        Items["RealSlider"]:Connect("MouseButton1Down", function()
            Slider.Sliding = true

            local MousePos = UserInputService:GetMouseLocation()

            local SizeX = (MousePos.X - Items["RealSlider"].Instance.AbsolutePosition.X) / Items["RealSlider"].Instance.AbsoluteSize.X
            local Value = ((Slider.Max - Slider.Min) * SizeX) + Slider.Min

            Slider:Set(Value)
        end)

        Items["RealSlider"]:Connect("InputEnded", function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Slider.Sliding = false
            end
        end)

        Library:Connect(UserInputService.InputChanged, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseMovement and Slider.Sliding then
                local MousePos = UserInputService:GetMouseLocation()

                local SizeX = (MousePos.X - Items["RealSlider"].Instance.AbsolutePosition.X) / Items["RealSlider"].Instance.AbsoluteSize.X
                local Value = ((Slider.Max - Slider.Min) * SizeX) + Slider.Min

                Slider:Set(Value)
            end
        end)

        if Slider.Default then
            Slider:Set(Slider.Default)
        end

        Library.SetFlags[Slider.Flag] = function(Value)
            Slider:Set(Value)
        end

        return Slider
    end

    Library.Sections.Dropdown = function(self, Data)
        Data = Data or { }

        local Dropdown = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Name = Data.Name or Data.name or "Dropdown",
            Flag = Data.Flag or Data.flag or Library:NextFlag(),
            Items = Data.Items or Data.items or { "One", "Two", "Three" },
            Default = Data.Default or Data.default or nil,
            Callback = Data.Callback or Data.callback or function() end,
            Multi = Data.Multi or Data.multi or false,

            Value = { },
            IsOpen = false,
            Options = { },
            Class = "Dropdown",
        }

        local Items = { } do
            Items["Dropdown"] = Instances:Create("Frame", {
                Parent = Dropdown.Section.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 34),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Dropdown"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Dropdown.Name,
                Name = "\0",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = UDim2New(1, 0, 0, 13),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["RealDropdown"] = Instances:Create("Frame", {
                Parent = Items["Dropdown"].Instance,
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(1, 0, 0, 17),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(33, 33, 36)
            })  Items["RealDropdown"]:AddToTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            
            Instances:Create("UIGradient", {
                Parent = Items["RealDropdown"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["RealDropdown"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Open"] = Instances:Create("TextButton", {
                Parent = Items["RealDropdown"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "+",
                AutoButtonColor = false,
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Right,
                Position = UDim2New(0, -4, 0, -1),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Open"]:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = Items["Open"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"}) 
            
            Items["Value"] = Instances:Create("TextLabel", {
                Parent = Items["RealDropdown"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "--",
                Name = "\0",
                Size = UDim2New(1, -25, 1, 0),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2New(0, 5, 0, -1),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Value"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Value"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["OptionHolder"] = Instances:Create("Frame", {
                Parent = Items["Dropdown"].Instance,
                Visible = false,
                BorderColor3 = FromRGB(10, 10, 10),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 5),
                Size = UDim2New(1, 0, 0, 0),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = FromRGB(20, 20, 25)
            })  Items["OptionHolder"]:AddToTheme({BackgroundColor3 = "Inline", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["OptionHolder"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})

            Instances:Create("UIListLayout", {
                Parent = Items["OptionHolder"].Instance,
                SortOrder = Enum.SortOrder.LayoutOrder
            }) 
            
            Instances:Create("UIPadding", {
                Parent = Items["OptionHolder"].Instance,
                PaddingBottom = UDimNew(0, 2)
            })

            Items["RealDropdown"]:OnHover(function()
                Items["RealDropdown"]:Tween(nil, {BackgroundColor3 = Library.Theme["Hovered Element"]})
                Items["RealDropdown"]:ChangeItemTheme({BackgroundColor3 = "Hovered Element", BorderColor3 = "Border"})
            end)

            Items["RealDropdown"]:OnHoverLeave(function()
                Items["RealDropdown"]:Tween(nil, {BackgroundColor3 = Library.Theme["Background"]})
                Items["RealDropdown"]:ChangeItemTheme({BackgroundColor3 = "Background", BorderColor3 = "Border"})
            end)
        end

        function Dropdown:Set(Option)
            if Dropdown.Multi then 
                if type(Option) ~= "table" then 
                    return
                end

                Dropdown.Value = Option

                for Index, Value in Option do 
                    local OptionData = Dropdown.Options[Value]
                    
                    if not OptionData then 
                        return
                    end

                    OptionData.Selected = true
                    OptionData:Toggle("Active")
                end

                Library.Flags[Dropdown.Flag] = Dropdown.Value

                Items["Value"].Instance.Text = TableConcat(Option, ", ")
            else
                if not Dropdown.Options[Option] then 
                    return
                end

                local OptionData = Dropdown.Options[Option]

                Dropdown.Value = OptionData.Name

                OptionData.Selected = true
                OptionData:Toggle("Active")

                for Index, Value in Dropdown.Options do 
                    if Value ~= OptionData then 
                        Value.Selected = false
                        Value:Toggle("Inactive")
                    end
                end

                Library.Flags[Dropdown.Flag] = Dropdown.Value

                Items["Value"].Instance.Text = Option
            end

            if Dropdown.Callback then 
                Library:SafeCall(Dropdown.Callback, Option)
            end
        end

        function Dropdown:Get()
            return Dropdown.Value
        end

        function Dropdown:SetVisibility(Bool)
            Items["Dropdown"].Instance.Visible = Bool
        end

        function Dropdown:Add(Option)
            local OptionButton = Instances:Create("TextButton", {
                Parent = Items["OptionHolder"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                Name = "\0",
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2New(1, 0, 0, 15),
                ZIndex = 5,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            local OptionText = Instances:Create("TextLabel", {
                Parent = OptionButton.Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                TextTransparency = 0.48,
                Text = Option,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -5, 1, 0),
                Position = UDim2New(0, 5, 0, 0),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                ZIndex = 5,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            OptionText:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = OptionText.Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            local OptionData = {
                Selected = false,
                Name = Option,
                Text = OptionText,
                Button = OptionButton
            }

            function OptionData:Toggle(State)
                if State == "Active" then 
                    OptionData.Text:ChangeItemTheme({TextColor3 = "Accent"})
                    OptionData.Text:Tween(nil, {TextColor3 = Library.Theme.Accent, TextTransparency = 0})
                else
                    OptionData.Text:ChangeItemTheme({TextColor3 = "Text"})
                    OptionData.Text:Tween(nil, {TextColor3 = Library.Theme.Text, TextTransparency = 0.48})
                end
            end

            function OptionData:Set()
                OptionData.Selected = not OptionData.Selected

                if Dropdown.Multi then
                    local Index = TableFind(Dropdown.Value, OptionData.Name)

                    if Index then 
                        TableRemove(Dropdown.Value, Index)
                    else
                        TableInsert(Dropdown.Value, OptionData.Name)
                    end

                    Library.Flags[Dropdown.Flag] = Dropdown.Value

                    OptionData:Toggle(Index and "Inactive" or "Active")

                    local TextFormat = #Dropdown.Value > 0 and TableConcat(Dropdown.Value, ", ") or "--"

                    Items["Value"].Instance.Text = TextFormat
                else
                    if OptionData.Selected then
                        Dropdown.Value = OptionData.Name

                        Library.Flags[Dropdown.Flag] = Dropdown.Value

                        OptionData:Toggle("Active")
                        Items["Value"].Instance.Text = OptionData.Name

                        for Index, Value in Dropdown.Options do 
                            if Value ~= OptionData then 
                                Value.Selected = false
                                Value:Toggle("Inactive")
                            end
                        end
                    else
                        Dropdown.Value = nil

                        OptionData:Toggle("Inactive")
                        Items["Value"].Instance.Text = "--"
                    end
                end

                if Dropdown.Callback then 
                    Library:SafeCall(Dropdown.Callback, Dropdown.Value)
                end
            end

            OptionButton:Connect("MouseButton1Down", function()
                OptionData:Set()
            end)

            Dropdown.Options[Option] = OptionData
            return OptionData
        end

        function Dropdown:Remove(Option)
            if Dropdown.Options[Option] then 
                Dropdown.Options[Option].Button:Clean()
            end
        end

        function Dropdown:Refresh(List)
            for Index, Value in Dropdown.Options do 
                Dropdown:Remove(Value.Name)
            end

            for Index, Value in List do 
                Dropdown:Add(Value)
            end
        end

        local Debounce = false

        function Dropdown:SetOpen(Bool)
            if Debounce then 
                return 
            end

            Dropdown.IsOpen = Bool

            Debounce = true 

            if Bool then 
                Items["OptionHolder"].Instance.Visible = true
                Items["OptionHolder"].Instance.ZIndex = 15
                Items["Open"].Instance.Text = "-"
                Items["Open"].Instance.Position = UDim2New(0, -5, 0, -1)
            else
                Items["Open"].Instance.Text = "+"
                Items["Open"].Instance.Position = UDim2New(0, -4, 0, -1)
            end

            local Descendants = Items["OptionHolder"].Instance:GetDescendants()
            TableInsert(Descendants, Items["OptionHolder"].Instance)

            local NewTween
            for Index, Value in Descendants do 
                local ValueIndex = Library:GetTransparencyPropertyFromItem(Value)

                if not ValueIndex then 
                    continue
                end

                if not StringFind(Value.ClassName, "UI") then 
                    Value.ZIndex = Bool and 15 or 1
                end

                if type(ValueIndex) == "table" then
                    for _, Property in ValueIndex do 
                        NewTween = Library:FadeItem(Value, Property, Bool, Dropdown.Window.FadeSpeed)
                    end
                else
                    NewTween = Library:FadeItem(Value, ValueIndex, Bool, Dropdown.Window.FadeSpeed)
                end
            end

            Library:Connect(NewTween.Tween.Completed, function()
                Debounce = false
                Items["OptionHolder"].Instance.Visible = Bool
                Items["OptionHolder"].Instance.ZIndex = Bool and 15 or 1
            end)
        end

        for Index, Value in Dropdown.Items do 
            Dropdown:Add(Value)
        end

        Items["Open"]:Connect("MouseButton1Down", function()
            Dropdown:SetOpen(not Dropdown.IsOpen)
        end)

        Library:Connect(UserInputService.InputBegan, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                if not Dropdown.IsOpen then
                    return 
                end

                if Library:IsMouseOverFrame(Items["OptionHolder"]) then
                    return
                end

                Dropdown:SetOpen(false)
            end
        end)

        if Dropdown.Default then 
            Dropdown:Set(Dropdown.Default)
        end

        Library.SetFlags[Dropdown.Flag] = function(Value)
            Dropdown:Set(Value)            
        end

        return Dropdown
    end

    Library.Sections.Label = function(self, Data)
        Data = Data or { }

        local Label = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Name = Data.Name or Data.name,
            Alignment = Data.Alignment or Data.alignment or "Left",

            Count = 0
        }

        local Items = { } do 
            Items["Label"] = Instances:Create("Frame", {
                Parent = Label.Section.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 15),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Label"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Label.Name,
                Name = "\0",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment[Label.Alignment],
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
            }):AddToTheme({Color = "Text Border"})
        end

        function Label:Colorpicker(Data)
            Data = Data or { }

            local Colorpicker = {
                Window = self.Window,
                Tab = self.Tab,
                Section = self.Section,

                Parent = Items["Label"],
                Name = Data.Name or Data.name or "Colorpicker",
                Flag = Data.Flag or Data.flag or Library:NextFlag(),
                Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
                Callback = Data.Callback or Data.callback or function() end,
                Alpha = Data.Alpha or Data.alpha or false,
                Count = Label.Count,
                FadeSpeed = self.Window.FadeSpeed
            }

            Label.Count += 1
            Colorpicker.Count = Label.Count

            local Extension = Library:CreateColorpicker(Colorpicker)
            
            return Colorpicker, Extension
        end

        function Label:Keybind(Data)
            Data = Data or { }

            local Keybind = {
                Window = self.Window,
                Tab = self.Tab,
                Section = self.Section,

                Parent = Items["Label"],
                Name = Data.Name or Data.name or "Keybind",
                Flag = Data.Flag or Data.flag or Library:NextFlag(),
                Default = Data.Default or Data.default or "MB2",
                Mode = Data.Mode or Data.mode or "Toggle",
                Callback = Data.Callback or Data.callback or function() end,
            }

            local Extension = Library:CreateKeybind(Keybind)

            return Keybind, Extension
        end

        return Label
    end

    Library.Sections.Textbox = function(self, Data)
        Data = Data or { }

        local Textbox = {
            Window = self.Window,
            Tab = self.Tab,
            Section = self,

            Name = Data.Name or Data.name or "Textbox",
            Flag = Data.Flag or Data.flag or Library:NextFlag(),
            Placeholder = Data.Placeholder or Data.placeholder or "...",
            Default = Data.Default or Data.default or "",
            Callback = Data.Callback or Data.callback or function() end,

            Value = "",
            Class = "Textbox"
        }

        local Items = { } do 
            Items["Textbox"] = Instances:Create("Frame", {
                Parent = Textbox.Section.Elements["Content"].Instance,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, 0, 0, 34),
                BorderSizePixel = 0,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["Text"] = Instances:Create("TextLabel", {
                Parent = Items["Textbox"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = Textbox.Name,
                Name = "\0",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = UDim2New(1, 0, 0, 13),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Text"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIStroke", {
                Parent = Items["Text"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})
            
            Items["Background"] = Instances:Create("Frame", {
                Parent = Items["Textbox"].Instance,
                AnchorPoint = Vector2New(0, 1),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                BorderColor3 = FromRGB(10, 10, 10),
                Size = UDim2New(1, 0, 0, 17),
                BorderSizePixel = 2,
                BackgroundColor3 = FromRGB(33, 33, 36)
            })  Items["Background"]:AddToTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})
            
            Instances:Create("UIGradient", {
                Parent = Items["Background"].Instance,
                Rotation = 90,
                Color = RGBSequence{RGBSequenceKeypoint(0, FromRGB(255, 255, 255)), RGBSequenceKeypoint(1, FromRGB(100, 100, 100))}
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["Background"].Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0",
                Color = FromRGB(27, 27, 32)
            }):AddToTheme({Color = "Outline"})
            
            Items["Inline"] = Instances:Create("TextBox", {
                Parent = Items["Background"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                Name = "\0",
                Size = UDim2New(1, 0, 1, 0),
                BorderSizePixel = 0,
                ClearTextOnFocus = false,
                BackgroundTransparency = 1,
                PlaceholderColor3 = FromRGB(178, 178, 178),
                TextXAlignment = Enum.TextXAlignment.Left,
                PlaceholderText = Textbox.Placeholder,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            })  Items["Inline"]:AddToTheme({TextColor3 = "Text"})
            
            Instances:Create("UIPadding", {
                Parent = Items["Inline"].Instance,
                PaddingBottom = UDimNew(0, 3),
                PaddingLeft = UDimNew(0, 5)
            }) 
            
            Instances:Create("UIStroke", {
                Parent = Items["Inline"].Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            Items["Background"]:OnHover(function()
                Items["Background"]:Tween(nil, {BackgroundColor3 = Library.Theme["Hovered Element"]})
                Items["Background"]:ChangeItemTheme({BackgroundColor3 = "Hovered Element", BorderColor3 = "Border"})
            end)

            Items["Background"]:OnHoverLeave(function()
                Items["Background"]:Tween(nil, {BackgroundColor3 = Library.Theme["Element"]})
                Items["Background"]:ChangeItemTheme({BackgroundColor3 = "Element", BorderColor3 = "Border"})
            end)
        end

        function Textbox:Get()
            return Textbox.Value
        end

        function Textbox:SetVisibility(Bool)
            Items["Textbox"].Instance.Visible = Bool
        end

        function Textbox:Set(Value)
            Textbox.Value = Value
            
            Items["Inline"].Instance.Text = Textbox.Value
            Items["Inline"]:Tween(nil, {TextColor3 = Library.Theme.Text})
            Items["Inline"]:ChangeItemTheme({TextColor3 = "Text"})

            Library.Flags[Textbox.Flag] = Textbox.Value

            if Textbox.Callback then
                Library:SafeCall(Textbox.Callback, Textbox.Value)
            end
        end

        Items["Inline"]:Connect("Focused", function()
            Items["Inline"]:ChangeItemTheme({TextColor3 = "Accent"})
            Items["Inline"]:Tween(nil, {TextColor3 = Library.Theme.Accent})
        end)

        Items["Inline"]:Connect("FocusLost", function()
            Items["Inline"]:ChangeItemTheme({TextColor3 = "Text"})
            Items["Inline"]:Tween(nil, {TextColor3 = Library.Theme.Text})

            Textbox:Set(Items["Inline"].Instance.Text)
        end)

        if Textbox.Default then
            Textbox:Set(Textbox.Default)
        end

        Library.SetFlags[Textbox.Flag] = function(Value)
            Textbox:Set(Value)
        end

        return Textbox
    end
    
    Library.Sections.Listbox = function(self, Data)
        Data = Data or {}

        local Listbox = {
            Window = self.Window,
            Page = self.Page,
            Section = self,

            Items = Data.Items or Data.items or { },
            Multi = Data.Multi or Data.multi or false,
            Default = Data.Default or Data.default or 1,
            Flag = Data.Flag or Data.flag or Library:NextFlag(),
            Callback = Data.Callback or Data.callback or function() end,
            Size = Data.Size or Data.size or 175,

            Value = { },
            Options = { },
            Class = "Listbox",
        }

        local Items = { } do 
            Items["Listbox"] = Instances:Create("Frame", {
                Parent = Listbox.Section.Elements["Content"].Instance,
                Name = "\0",
                BackgroundTransparency = 1,
                Size = UDim2New(1, 0, 0, Listbox.Size),
                BorderColor3 = FromRGB(0, 0, 0),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            Items["RealListbox"] = Instances:Create("ScrollingFrame", {
                Parent = Items["Listbox"].Instance,
                ScrollBarImageColor3 = FromRGB(235, 157, 255),
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 1,
                AnchorPoint = Vector2New(0, 1),
                Size = UDim2New(1, 0, 1, 0),
                Name = "\0",
                Position = UDim2New(0, 0, 1, 0),
                BackgroundColor3 = FromRGB(15, 15, 20),
                BorderColor3 = FromRGB(10, 10, 10),
                BorderSizePixel = 2,
                CanvasSize = UDim2New(0, 0, 0, 0)
            })  Items["RealListbox"]:AddToTheme({ScrollBarImageColor3 = "Accent", BackgroundColor3 = "Background", BorderColor3 = "Border"})
            
            Instances:Create("UIStroke", {
                Parent = Items["RealListbox"].Instance,
                Color = FromRGB(27, 27, 32),
                Name = "\0",
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            }):AddToTheme({Color = "Outline"}) 
            
            Instances:Create("UIListLayout", {
                Parent = Items["RealListbox"].Instance,
                SortOrder = Enum.SortOrder.LayoutOrder
            }) 

            Instances:Create("UIPadding", {
                Parent = Items["RealListbox"].Instance,
                PaddingBottom = UDimNew(0, 5),
                PaddingTop = UDimNew(0, 2)
            }) 
        end

        function Listbox:Set(Option)
            if Listbox.Multi then 
                if type(Option) ~= "table" then 
                    return
                end

                Listbox.Value = Option

                Library.Flags[Listbox.Flag] = Listbox.Value

                for Index, Value in Option do 
                    local OptionData = Listbox.Options[Value]
                    
                    if not OptionData then 
                        return
                    end

                    OptionData.Selected = true
                    OptionData:Toggle("Active")
                end
            else
                if not Listbox.Options[Option] then 
                    return
                end

                local OptionData = Listbox.Options[Option]

                Listbox.Value = OptionData.Name
                
                Library.Flags[Listbox.Flag] = Listbox.Value

                OptionData.Selected = true
                OptionData:Toggle("Active")

                for Index, Value in Listbox.Options do 
                    if Value ~= OptionData then 
                        Value.Selected = false
                        Value:Toggle("Inactive")
                    end
                end
            end

            if Listbox.Callback then 
                Library:SafeCall(Listbox.Callback, Option)
            end
        end

        function Listbox:Get()
            return Listbox.Value
        end

        function Listbox:SetVisibility(Bool)
            Items["Listbox"].Instance.Visible = Bool
        end

        function Listbox:Remove(Option)
            if Listbox.Options[Option] then 
                Listbox.Options[Option].Button:Clean()
            end
        end

        function Listbox:Refresh(List)
            for Index, Value in Listbox.Options do 
                Listbox:Remove(Value.Name)
            end

            for Index, Value in List do 
                Listbox:Add(Value)
            end
        end

        function Listbox:Add(Option)
            local OptionButton = Instances:Create("TextButton", {
                Parent = Items["RealListbox"].Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(0, 0, 0),
                BorderColor3 = FromRGB(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                Name = "\0",
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2New(1, 0, 0, 15),
                ZIndex = 5,
                TextSize = 14,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            local OptionText = Instances:Create("TextLabel", {
                Parent = OptionButton.Instance,
                FontFace = Library.Font,
                TextColor3 = FromRGB(215, 215, 215),
                TextTransparency = 0.48,
                Text = Option,
                Name = "\0",
                BorderColor3 = FromRGB(0, 0, 0),
                Size = UDim2New(1, -5, 1, 0),
                Position = UDim2New(0, 5, 0, 0),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Center,
                BorderSizePixel = 0,
                ZIndex = 5,
                TextSize = 12,
                BackgroundColor3 = FromRGB(255, 255, 255)
            }) 
            
            OptionText:AddToTheme({TextColor3 = "Text"})

            Instances:Create("UIStroke", {
                Parent = OptionText.Instance,
                LineJoinMode = Enum.LineJoinMode.Miter,
                Name = "\0"
            }):AddToTheme({Color = "Text Border"})

            local OptionData = {
                Selected = false,
                Name = Option,
                Text = OptionText,
                Button = OptionButton
            }

            function OptionData:Toggle(State)
                if State == "Active" then 
                    OptionData.Text:ChangeItemTheme({TextColor3 = "Accent"})
                    OptionData.Text:Tween(nil, {TextColor3 = Library.Theme.Accent, TextTransparency = 0})
                else
                    OptionData.Text:ChangeItemTheme({TextColor3 = "Text"})
                    OptionData.Text:Tween(nil, {TextColor3 = Library.Theme.Text, TextTransparency = 0.48})
                end
            end

            function OptionData:Set()
                OptionData.Selected = not OptionData.Selected

                if Listbox.Multi then
                    local Index = TableFind(Listbox.Value, OptionData.Name)

                    if Index then 
                        TableRemove(Listbox.Value, Index)
                    else
                        TableInsert(Listbox.Value, OptionData.Name)
                    end

                    OptionData:Toggle(Index and "Inactive" or "Active")

                    local TextFormat = #Listbox.Value > 0 and TableConcat(Listbox.Value, ", ") or "--"
                else
                    if OptionData.Selected then
                        Listbox.Value = OptionData.Name

                        OptionData:Toggle("Active")

                        for Index, Value in Listbox.Options do 
                            if Value ~= OptionData then 
                                Value.Selected = false
                                Value:Toggle("Inactive")
                            end
                        end
                    else
                        Listbox.Value = nil

                        OptionData:Toggle("Inactive")
                    end
                end

                if Listbox.Callback then 
                    Library:SafeCall(Listbox.Callback, Listbox.Value)
                end
            end

            OptionButton:Connect("MouseButton1Down", function()
                OptionData:Set()
            end)

            Listbox.Options[Option] = OptionData
            return OptionData
        end

        for Index, Value in Listbox.Items do 
            Listbox:Add(Value)
        end

        if Listbox.Default then 
            Listbox:Set(Listbox.Default)
        end

        Library.SetFlags[Listbox.Flag] = function(Value)
            Listbox:Set(Value)
        end

        return Listbox
    end

    Library.CreateSettingsPage = function(self, Window, Watermark, KeybindList)
        local SettingsTab = Window:Page({Name = "Settings", Columns = 2, Subtabs = false})

        do -- Settings Tab
            local SettingsSection = SettingsTab:Section({Name = "Settings", Side = 2})
            local ConfigsSection = SettingsTab:Section({Name = "Profiles", Side = 1})
        
            for Index, Value in Library.Theme do 
                SettingsSection:Label({Name = Index, Alignment = "Left"}):Colorpicker({ Name = Index, Default = Value, Flag = "Theme"..Index, Callback = function(Color) 
                    Library.Theme[Index] = Color
                    Library:ChangeTheme(Index, Color)
                end})
            end
        
            SettingsSection:Label({Name = "Menu Keybind", Alignment = "Left"}):Keybind({Name = "Menu Keybind", Flag = "Menu Keybind", Default = Enum.KeyCode.RightControl, Mode = "Toggle", Callback = function(Value)
                Library.MenuKeybind = Library.Flags["Menu Keybind"].Key
            end})
        
            SettingsSection:Toggle({Name = "Watermark", Flag = "Watermark", Default = false, Callback = function(Value)
                Watermark:SetVisibility(Value)
            end})
        
            SettingsSection:Toggle({Name = "Keybind List", Flag = "Keybind List", Default = false, Callback = function(Value)
                KeybindList:SetVisibility(Value)
            end})
        
            SettingsSection:Dropdown({Name = "Tweening Style", Flag = "Tweening Style", Default = "Exponential", Items = {"Linear", "Sine", "Quad", "Cubic", "Quart", "Quint", "Exponential", "Circular", "Back", "Elastic", "Bounce"}, Callback = function(Value)
                Library.Tween.Style = Enum.EasingStyle[Value]
            end})
        
            SettingsSection:Dropdown({Name = "Tweening Direction", Flag = "Tweening Direction", Default = "Out", Items = {"In", "Out", "InOut"}, Callback = function(Value)
                Library.Tween.Direction = Enum.EasingDirection[Value]
            end})
        
            SettingsSection:Slider({Name = "Tweening Time", Min = 0, Max = 5, Default = 0.25, Decimals = 0.01, Flag = "Tweening Time", Callback = function(Value)
                Library.Tween.Time = Value
            end})
        
            SettingsSection:Button({Name = "Notification test", Callback = function()
                Library:Notification("This is a notification This is a notification This is a notification This is a notification", 5, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
            end})
        
            SettingsSection:Button({Name = "Unload library", Callback = function()
                Library:Unload()
            end})
        
            local ConfigName 
            local ConfigSelected
        
            local ConfigsListbox = ConfigsSection:Listbox({Items = { }, Name = "Configs", Flag = "Configs List", Callback = function(Value)
                ConfigSelected = Value
            end})
        
            ConfigsSection:Textbox({Name = "Config Name", Placeholder = ". .", Flag = "Config Name", Callback = function(Value)
                ConfigName = Value
            end})
        
            ConfigsSection:Button({Name = "Create Config", Callback = function()
                if not isfile(Library.Folders.Configs .. "/" .. ConfigName .. ".json") then
                    writefile(Library.Folders.Configs .. "/" .. ConfigName .. ".json", Library:GetConfig())
        
                    Library:RefreshConfigsList(ConfigsListbox)
                else
                    Library:Notification("Config '" .. ConfigName .. ".json' already exists", 3, Color3.FromR(255, 0, 0))
                    return
                end
            end})
        
            ConfigsSection:Button({Name = "Load Config", Callback = function()
                if ConfigSelected then
                    Library:LoadConfig(readfile(Library.Folders.Configs .. "/" .. ConfigSelected))
                end
        
                    task.wait(0.1)
        
                    for Index, Value in Library.Theme do 
                        Library.Theme[Index] = Library.Flags["Theme"..Index].Color
                        Library:ChangeTheme(Index, Library.Flags["Theme"..Index].Color)
                    end    
            end})
        
            ConfigsSection:Button({Name = "Delete Config", Callback = function()
                if ConfigSelected then
                    Library:DeleteConfig(ConfigSelected)
        
                    Library:RefreshConfigsList(ConfigsListbox)
                end
            end})
        
            ConfigsSection:Button({Name = "Save Config", Callback = function()
                if ConfigSelected then
                    Library:SaveConfig(ConfigSelected)
                end
            end})
        
            ConfigsSection:Button({Name = "Refresh Configs", Callback = function()
                Library:RefreshConfigsList(ConfigsListbox)
            end})

            ConfigsSection:Divider()

            ConfigsSection:Button({Name = "Set As Autoload", Callback = function()
                if ConfigSelected then 
                    writefile(Library.Folders.Directory .. "/autoload.json", readfile(Library.Folders.Configs .. "/" .. ConfigSelected))
                end
            end})

            ConfigsSection:Button({Name = "Remove Autoload", Callback = function()
                writefile(Library.Folders.Directory .. "/autoload.json", "")
            end})
        
            Library:RefreshConfigsList(ConfigsListbox)
        end

        Library.Init = function(self)
            local IsAutoload = readfile(Library.Folders.Directory .. "/autoload.json")

            if IsAutoload ~= "" then
                Library:LoadConfig(IsAutoload)
            end
        end
    end
end

getgenv().Library = Library
-- return removed so the main script below can run in the same chunk

task.wait(2)

local Library = getgenv().Library
if not Library then
    error("Library not found after load")
end

local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")
local Lighting          = game:GetService("Lighting")
local UserInputService  = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService        = game:GetService("GuiService")
local CoreGui           = game:GetService("CoreGui")
local TweenService      = game:GetService("TweenService")
local Camera            = workspace.CurrentCamera
local LocalPlayer       = Players.LocalPlayer

--======= ESP SETTINGS =======--
local ESPSettings = {
    Enabled = true,
    TeamCheck = false,
    ShowName = true,
    ShowDistance = true,
    Color = Color3.fromRGB(255, 50, 50),
    SkeletonColor = Color3.fromRGB(255, 50, 50),
    FillTransparency = 0.55,
    SkeletonEnabled = true,
    SkeletonThickness = 2,
    Fullbright = false,
    Ambient = Color3.fromRGB(128, 128, 128),
    OutdoorAmbient = Color3.fromRGB(128, 128, 128),
    NameFont = Enum.Font.Code,
    BoxEnabled = true,
    BoxColor = Color3.fromRGB(255, 50, 50),
    BoxThickness = 1.5,
    BoxGlow = true,
    BoxGlowColor = Color3.fromRGB(255, 100, 100),
    BoxGlowThickness = 4,
    BoxFilled = false,
    BoxFillTransparency = 0.85,
    MaxDistance = 2000,
    VisCheck = false,
    VisibleColor = Color3.fromRGB(50, 255, 100),
    HiddenColor = Color3.fromRGB(255, 50, 50),
}

--======= SILENT AIM SETTINGS =======--
local AimSettings = {
    Enabled     = true,
    Mode        = "Silent",
    AimPart     = "Head",
    FOV         = 120,
    FOVVisible  = true,
    FOVColor    = Color3.fromRGB(0, 170, 255),
    TeamCheck   = false,
    DeadCheck   = true,
    MaxDistance = 600,
    Smoothness  = 0.86,
    Key         = Enum.UserInputType.MouseButton2,
    TargetAI    = false,
}

--======= HITSCAN SETTINGS (GHOST_HOOK corner-shoot port) =======--
local HitscanSettings = {
    Enabled      = false,
    Range        = 4,       -- 1..8
    Multiscan    = false,
    Parts        = { "Head", "UpperTorso" },
    Ticking      = false,
    TickValue    = 0.03,    -- 0.016..0.15
    Active       = false,
    Origin       = nil,
    TargetPart   = nil,
    OriginMethod = nil,
    _fireTick    = nil,
}

--======= MANIPULATION SETTINGS (GHOST_HOOK free-space origin) =======--
-- Peek-style corner shoot (HRP forward offset, then restore)
local ManipulationSettings = { -- DISABLED
    _Disabled = true,
    Enabled   = false,
    Distance  = 1.5,
    Duration  = 0.08,
    Key       = Enum.KeyCode.V,
    AutoPeek  = false,
    Active    = false,
    Origin    = nil,
    Target    = nil,
    EndTime   = 0,
    OffsetDist = nil,
}


--======= RAGE BOT / TRIGGERBOT / PREDICTION / WALLBANG =======--
local RageSettings = {
    Enabled = false,
    AutoFire = true,
    HitChance = 100,
    MinDamage = 1,
    MaxDistance = 600,
    Prediction = true,
    PredictionMult = 1.0,
    Wallbang = false,
    WallbangThickness = 2,
    AutoWallbang = false,
    RandomHitPart = false,
    LiftHitboxes = false,
    LiftHeight = 2,
}

local TriggerSettings = {
    Enabled = false,
    ShootOnManip = false,
    HitChance = 100,
    Key = Enum.KeyCode.E,
}

local AntiAimSettings = {
    Enabled = false,
    Mode = "Spin",  -- Spin | Jitter | Static
    Speed = 20,
    Yaw = 180,
}

local GunModSettings = {
    RapidFire = false,
    FireRateRPM = 1200,
    InstantReload = false,
    UnlockFiremodes = false,
    NoGunBob = false,
    InstantEquip = false,
    MagicBullet = false,
    NoRecoil = false,
    NoSpread = false,
    NoSway = false,
    RemoveObstructions = false,
    InstantAim = false,
    RemoveSprintAnimation = false,
    RemoveMuzzleEffects = false,
    DoubleTap = false,
    InstantLean = false,
}

local MeleeSettings = {
    NoCooldown = false,
    Reach = 0, -- 0 = default, else studs bonus
    KnifeChanger = false,
    MeleeSkin = "Default",
}

local GrenadeSettings = {
    AutoAim = false,
    ArcMode = false,
    Bounces = 0,
}

local HitFeedbackSettings = {
    HitLogs = false,
    HitLogsY = 400,
    HitLogsSize = 14,
    DamageNumbers = false,
    DamageSpread = 30,
}

--======= TARGET LINE SETTINGS =======--
local TargetLineSettings = {
    Enabled   = false,
    Color     = Color3.fromRGB(255, 255, 255),
    Thickness = 1,
}

--======= HITMARKER SETTINGS =======--
local HitmarkerSettings = {
    Enabled    = false,
    Color      = Color3.fromRGB(255, 50, 50),
    Size       = 10,
    Thickness  = 2,
    Lifetime   = 0.45,
    Fade       = true,
}

--======= AI / HIGHWAY BANDIT / BOT ESP =======--
local AiEspSettings = {
    NameEnabled        = false,
    NameColor          = Color3.fromRGB(255, 255, 0),
    NameSize           = 11,
    HighlightEnabled   = false,
    HighlightColor     = Color3.fromRGB(255, 0, 0),
    HighlightTransparency = 0.5,
}

--======= MOVEMENT SETTINGS =======--
local MovementSettings = {
    SpeedEnabled   = false,
    Speed          = 9,
    PositionLock   = false,
}

local CharacterSettings = {
    SpeedHackEnabled = false,
    SpeedHackSpeed   = 18.2,
    JesusEnabled     = false,
    SpidermanEnabled = false,
    SpidermanSpeed   = 26,
}

--======= NO VISOR / NO SCREEN EFFECTS (wallhack.rbx) =======--
local NoVisorSettings = {
    Enabled = false,
}

--======= BURY / UNDERGROUND SETTINGS =======--
local BurySettings = {
    Enabled      = false,
    Depth        = -1.0,
    JumpHeight   = 4.0,
    JumpDuration = 0.4,
    PeekHands    = true,
}

--======= DESYNC SETTINGS =======--
local DesyncSettings = {
    Enabled = false,
    Visualize = true,
    VisualizeColor = Color3.fromRGB(255, 255, 255),
    Transparency = 0.5,
    XOffset = 0,
    YOffset = 0,
    ZOffset = 0,
    XRotate = 0,
    YRotate = 0,
    ZRotate = 0,
    RandomRotation = false,
    RandomPosition = false,
    RandomPositionRange = 5,
    Velocity = false,
    VelocityX = 0,
    VelocityY = 0,
    VelocityZ = 0,
    ToggleKey = Enum.KeyCode.B,
}

--======= THIRD PERSON SETTINGS (GHOST_HOOK) =======--
local ThirdPersonSettings = {
    Enabled     = false,
    Distance    = 10,       -- 1..50
    LockBody    = true,
    ZoomFade    = true,
    FadeSpeed   = 14,
    FadeTarget  = 1,        -- 0.1..1
    ToggleKey   = Enum.KeyCode.RightControl,
}

-- Third person camera originals + fade state
local tp_original = {
    CameraMaxZoomDistance = LocalPlayer.CameraMaxZoomDistance,
    CameraMinZoomDistance = LocalPlayer.CameraMinZoomDistance,
    CameraMode            = LocalPlayer.CameraMode,
}
local tp_was_active = false
local tp_inv_paused = false
local tp_mouse_locked = false
local tp_fade_current = 0
local tp_fade_applied = 0

--======= VIEWMODEL SETTINGS (ported from backtrack.tech) =======--
local ViewmodelSettings = {
    Enabled = false,
    RemoveClothing = false,
    WeaponEnabled = false,
    WeaponColor = Color3.fromRGB(255, 98, 127),
    WeaponTransparency = 0,
    WeaponMaterial = "ForceField",
    ArmsEnabled = false,
    ArmsColor = Color3.fromRGB(255, 98, 127),
    ArmsTransparency = 0,
    ArmsMaterial = "ForceField",
    OffsetEnabled = false,
    OffsetX = 0,
    OffsetY = 0,
    OffsetZ = 0,
    HighlightEnabled = false,
    HighlightFillColor = Color3.fromRGB(255, 98, 127),
    HighlightFillTransparency = 0,
    HighlightFillMultiplier = 1,
    HighlightOutlineColor = Color3.fromRGB(255, 98, 127),
    HighlightOutlineTransparency = 0,
    HighlightOutlineMultiplier = 1,
}
local viewmodel_cache = {}
local stored_surface_appearances = { weapon = {}, clothing = {} }
local original_arm_colors = {}

--======= WORLD MODS SETTINGS (ported from backtrack.tech) =======--
local WorldMods = {
    RemoveGrass = false,
    RemoveFoliage = false,
    RemoveTrees = false,
    OverrideAmbient = false,
    Ambient = Color3.fromRGB(128, 128, 128),
    OutdoorAmbient = Color3.fromRGB(128, 128, 128),
    OverrideBrightness = false,
    Brightness = 2,
    OverrideClockTime = false,
    ClockTime = 14,
    OverrideFog = false,
    FogDensity = 0,
    FogOffset = 0,
    OverrideFogColors = false,
    FogColor = Color3.fromRGB(255, 255, 255),
    FogDecay = Color3.fromRGB(255, 255, 255),
    OverrideBloom = false,
    BloomIntensity = 0.5,
    BloomSize = 56,
    BloomThreshold = 0.8,
    TerrainColors = {
        Grass = {enabled = false, color = Color3.fromRGB(106, 127, 63)},
        Ground = {enabled = false, color = Color3.fromRGB(102, 92, 59)},
        LeafyGrass = {enabled = false, color = Color3.fromRGB(106, 127, 63)},
        Rock = {enabled = false, color = Color3.fromRGB(102, 103, 105)},
        Sand = {enabled = false, color = Color3.fromRGB(143, 126, 95)},
    },
}
local originalTerrainColors = {}

local function updateWorldMods()
    local Lighting = game:GetService("Lighting")
    local Terrain = workspace:FindFirstChildOfClass("Terrain")

    -- Terrain material colors
    if Terrain then
        for matName, data in pairs(WorldMods.TerrainColors) do
            local mat = Enum.Material[matName]
            if mat then
                if not originalTerrainColors[matName] then
                    pcall(function()
                        originalTerrainColors[matName] = Terrain:GetMaterialColor(mat)
                    end)
                end
                if data.enabled and data.color then
                    pcall(function() Terrain:SetMaterialColor(mat, data.color) end)
                elseif originalTerrainColors[matName] then
                    pcall(function() Terrain:SetMaterialColor(mat, originalTerrainColors[matName]) end)
                end
            end
        end
    end

    -- Lighting
    if WorldMods.OverrideAmbient then
        Lighting.Ambient = WorldMods.Ambient
        Lighting.OutdoorAmbient = WorldMods.OutdoorAmbient
    end
    if WorldMods.OverrideBrightness then
        Lighting.Brightness = WorldMods.Brightness
    end
    if WorldMods.OverrideClockTime then
        Lighting.ClockTime = WorldMods.ClockTime
    end

    -- Atmosphere
    local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")
    if atmosphere then
        if WorldMods.OverrideFog then
            atmosphere.Density = WorldMods.FogDensity
            atmosphere.Offset = WorldMods.FogOffset
        end
        if WorldMods.OverrideFogColors then
            atmosphere.Color = WorldMods.FogColor
            atmosphere.Decay = WorldMods.FogDecay
        end
    end

    -- Bloom
    local bloom = Lighting:FindFirstChildOfClass("BloomEffect")
    if bloom and WorldMods.OverrideBloom then
        bloom.Intensity = WorldMods.BloomIntensity
        bloom.Size = WorldMods.BloomSize
        bloom.Threshold = WorldMods.BloomThreshold
    end

    -- Foliage / Trees (simple scan)
    if WorldMods.RemoveFoliage or WorldMods.RemoveTrees then
        local foliage = workspace:FindFirstChild("Foliage") or workspace:FindFirstChild("Trees")
        if foliage then
            for _, obj in ipairs(foliage:GetDescendants()) do
                if obj:IsA("BasePart") then
                    local isTree = obj.Color == Color3.fromRGB(108, 88, 75) or obj.Name:lower():find("tree")
                    if isTree and WorldMods.RemoveTrees then
                        obj.Transparency = 1
                    elseif not isTree and WorldMods.RemoveFoliage then
                        obj.Transparency = 1
                    end
                end
            end
        end
    end
end

local lastWorldUpdate = 0
RunService.Heartbeat:Connect(function()
    local now = os.clock()
    if now - lastWorldUpdate < 0.25 then return end
    lastWorldUpdate = now
    if WorldMods.OverrideAmbient or WorldMods.OverrideBrightness or WorldMods.OverrideClockTime
        or WorldMods.OverrideFog or WorldMods.OverrideBloom or WorldMods.RemoveFoliage or WorldMods.RemoveTrees then
        pcall(updateWorldMods)
    end
end)

-- Desync runtime state (declared early so UI callbacks can write them)
local real_CFrame = nil
local forced_cframe = nil
local desync_turned_on = false
local replicated_hrp_cframe = nil
local old_cframe = nil
local old_velocity = nil

local FontList = {
    "Code", "GothamBold", "SourceSansBold", "Arcade", "Fantasy",
    "SciFi", "Highway", "RobotoMono", "Ubuntu"
}

local espData = {}
local ConfigFolder = "ESP_Configs"
local CurrentConfig = "default"
pcall(function()
    if not isfolder(ConfigFolder) then
        makefolder(ConfigFolder)
    end
end)

--======= NO GRASS =======--
local function zeroGrass(t)
    if not t then return end
    pcall(function() sethiddenproperty(t, "Decoration", false) end)
    pcall(function() sethiddenproperty(t, "GrassLength", 0) end)
end
local function restoreGrass(t)
    if not t then return end
    pcall(function() sethiddenproperty(t, "Decoration", true) end)
    pcall(function() sethiddenproperty(t, "GrassLength", 2) end)
end
local function zeroMaterial()
    pcall(function()
        local ms = game:GetService("MaterialService")
        if ms and ms:FindFirstChild("GrassTerrain") then
            ms.GrassTerrain.StudsPerTile = 9999999
        end
    end)
end
local function restoreMaterial()
    pcall(function()
        local ms = game:GetService("MaterialService")
        if ms and ms:FindFirstChild("GrassTerrain") then
            ms.GrassTerrain.StudsPerTile = 8
        end
    end)
end
local function setNoGrass(enabled)
    local terrain = workspace:FindFirstChildOfClass("Terrain")
    if _G._grassConn then
        _G._grassConn:Disconnect()
        _G._grassConn = nil
    end
    if _G._grassCharConn then
        _G._grassCharConn:Disconnect()
        _G._grassCharConn = nil
    end
    if enabled then
        zeroGrass(terrain)
        zeroMaterial()
        _G._grassConn = workspace.DescendantAdded:Connect(function(obj)
            if obj:IsA("Terrain") then
                task.wait()
                zeroGrass(obj)
                zeroMaterial()
            end
        end)
        _G._grassCharConn = LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5)
            zeroGrass(workspace:FindFirstChildOfClass("Terrain"))
        end)
        Library:Notification("Grass removed!", 2, Color3.fromRGB(0, 255, 0))
    else
        restoreGrass(terrain)
        restoreMaterial()
        Library:Notification("Grass restored!", 2, Color3.fromRGB(0, 255, 0))
    end
end

--======= MOVEMENT CORE =======--
local function getChar(plr)
    plr = plr or LocalPlayer
    return plr.Character or plr.CharacterAdded:Wait()
end

local speedConn, lockConn
local lastAirPos

local function stopSpeed()
    if speedConn then
        speedConn:Disconnect()
        speedConn = nil
    end
    getgenv().speeding = nil
end

local function startSpeed()
    stopSpeed()
    speedConn = RunService.Heartbeat:Connect(function()
        if not MovementSettings.SpeedEnabled then return end
        local c = LocalPlayer.Character
        if not c then return end
        local hrp = c:FindFirstChild("HumanoidRootPart")
        local hum = c:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then return end
        local dir = hum.MoveDirection
        if dir.Magnitude > 0 then
            local s = MovementSettings.Speed * 5
            hrp.Velocity = Vector3.new(s, s, s) * dir
        end
    end)
    getgenv().speeding = speedConn
end

local function stopLock()
    if lockConn then
        lockConn:Disconnect()
        lockConn = nil
    end
    getgenv().tp = nil
    lastAirPos = nil
end

local function startLock()
    stopLock()
    local c = getChar()
    lastAirPos = c:GetPivot()
    lockConn = RunService.Heartbeat:Connect(function()
        if not MovementSettings.PositionLock then return end
        local c = LocalPlayer.Character
        if not c then return end
        local pivot = c:GetPivot()
        if lastAirPos and (lastAirPos.Position - pivot.Position).Magnitude > 15 then
            c:PivotTo(lastAirPos)
        else
            lastAirPos = pivot
        end
    end)
    getgenv().tp = lockConn
end

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.4)
    if MovementSettings.SpeedEnabled then startSpeed() end
    if MovementSettings.PositionLock then startLock() end
end)

--======= WINDOW (samet library) =======--
local Window = Library:Window({
    Name = "Nexvi.xyz",
    Size = UDim2.fromOffset(580, 620)
})

local Pages = {
    ESP     = Window:Page({ Name = "ESP",     Columns = 2 }),
    Aim     = Window:Page({ Name = "Aim",     Columns = 2 }),
    Visuals = Window:Page({ Name = "Visuals", Columns = 2 }),
    World   = Window:Page({ Name = "World",   Columns = 2 }),
    Misc    = Window:Page({ Name = "Misc",    Columns = 2 }),
    Settings= Window:Page({ Name = "Settings",Columns = 2 }),
}

--======= ESP PAGE =======--
local ESPSection = Pages.ESP:Section({ Name = "Player ESP", Side = 1 })
local SkelSection = Pages.ESP:Section({ Name = "Skeleton", Side = 2 })
local BoxSection  = Pages.ESP:Section({ Name = "Box ESP", Side = 2 })

ESPSection:Toggle({
    Name = "Enable ESP (Highlight)",
    Default = true,
    Flag = "ESPEnabled",
    Callback = function(Value)
        ESPSettings.Enabled = Value
        for _, data in pairs(espData) do
            if data.highlight then data.highlight.Enabled = Value end
            if data.billboard then data.billboard.Enabled = Value end
        end
    end
})

ESPSection:Toggle({
    Name = "Team Check",
    Default = false,
    Flag = "ESPTeamCheck",
    Callback = function(Value)
        ESPSettings.TeamCheck = Value
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Character then
                removeESP(p)
                if shouldShow(p) then
                    applyESP(p, p.Character)
                end
            end
        end
    end
})

ESPSection:Toggle({
    Name = "Show Name",
    Default = true,
    Flag = "ESPShowName",
    Callback = function(Value)
        ESPSettings.ShowName = Value
    end
})

ESPSection:Toggle({
    Name = "Show Distance",
    Default = true,
    Flag = "ESPShowDistance",
    Callback = function(Value)
        ESPSettings.ShowDistance = Value
    end
})

ESPSection:Slider({
    Name = "Max Distance (studs)",
    Min = 200,
    Max = 5000,
    Default = 2000,
    Decimals = 1,
    Flag = "ESPMaxDistance",
    Callback = function(Value)
        ESPSettings.MaxDistance = Value
    end
})

ESPSection:Label({ Name = "ESP Color", Alignment = "Left" }):Colorpicker({
    Name = "ESP Color",
    Default = Color3.fromRGB(255, 50, 50),
    Flag = "ESPColor",
    Callback = function(Value)
        ESPSettings.Color = Value
        for _, data in pairs(espData) do
            if data.highlight then
                data.highlight.FillColor = Value
                data.highlight.OutlineColor = Value
            end
            if data.label then
                data.label.TextColor3 = Value
            end
        end
    end
})

ESPSection:Slider({
    Name = "Fill Transparency",
    Min = 0,
    Max = 1,
    Default = 0.55,
    Decimals = 0.01,
    Flag = "ESPFillTransparency",
    Callback = function(Value)
        ESPSettings.FillTransparency = Value
        for _, data in pairs(espData) do
            if data.highlight then
                data.highlight.FillTransparency = Value
            end
        end
    end
})

ESPSection:Dropdown({
    Name = "Name Font",
    Items = FontList,
    Default = "Code",
    Flag = "ESPNameFont",
    Callback = function(Value)
        ESPSettings.NameFont = Enum.Font[Value]
        for _, data in pairs(espData) do
            if data.label then
                data.label.Font = ESPSettings.NameFont
            end
        end
    end
})

ESPSection:Toggle({
    Name = "Visibility Check",
    Default = false,
    Flag = "ESPVisCheck",
    Callback = function(Value)
        ESPSettings.VisCheck = Value
    end
})

ESPSection:Label({ Name = "Visible Color", Alignment = "Left" }):Colorpicker({
    Name = "Visible Color",
    Default = Color3.fromRGB(50, 255, 100),
    Flag = "ESPVisibleColor",
    Callback = function(Value)
        ESPSettings.VisibleColor = Value
    end
})

ESPSection:Label({ Name = "Hidden Color", Alignment = "Left" }):Colorpicker({
    Name = "Hidden Color",
    Default = Color3.fromRGB(255, 50, 50),
    Flag = "ESPHiddenColor",
    Callback = function(Value)
        ESPSettings.HiddenColor = Value
    end
})

ESPSection:Label({ Name = "VisCheck: green = LOS, hidden color = wall", Alignment = "Left" })

-- Skeleton
SkelSection:Toggle({
    Name = "Enable Skeleton",
    Default = true,
    Flag = "SkeletonEnabled",
    Callback = function(Value)
        ESPSettings.SkeletonEnabled = Value
        for _, data in pairs(espData) do
            if data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then
                        entry.line.Visible = Value
                    end
                end
            end
        end
    end
})

SkelSection:Label({ Name = "Skeleton Color", Alignment = "Left" }):Colorpicker({
    Name = "Skeleton Color",
    Default = Color3.fromRGB(255, 50, 50),
    Flag = "SkeletonColor",
    Callback = function(Value)
        ESPSettings.SkeletonColor = Value
        for _, data in pairs(espData) do
            if data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then
                        entry.line.Color3 = Value
                    end
                end
            end
        end
    end
})

SkelSection:Slider({
    Name = "Line Thickness",
    Min = 1,
    Max = 6,
    Default = 2,
    Decimals = 1,
    Flag = "SkeletonThickness",
    Callback = function(Value)
        ESPSettings.SkeletonThickness = Value
        for _, data in pairs(espData) do
            if data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then
                        entry.line.Thickness = Value
                    end
                end
            end
        end
    end
})

-- Box ESP
BoxSection:Toggle({
    Name = "Enable Box ESP",
    Default = true,
    Flag = "BoxEnabled",
    Callback = function(Value)
        ESPSettings.BoxEnabled = Value
    end
})

BoxSection:Toggle({
    Name = "Glow",
    Default = true,
    Flag = "BoxGlow",
    Callback = function(Value)
        ESPSettings.BoxGlow = Value
    end
})

BoxSection:Toggle({
    Name = "Filled Box",
    Default = false,
    Flag = "BoxFilled",
    Callback = function(Value)
        ESPSettings.BoxFilled = Value
    end
})

BoxSection:Label({ Name = "Box Color", Alignment = "Left" }):Colorpicker({
    Name = "Box Color",
    Default = Color3.fromRGB(255, 50, 50),
    Flag = "BoxColor",
    Callback = function(Value)
        ESPSettings.BoxColor = Value
    end
})

BoxSection:Label({ Name = "Glow Color", Alignment = "Left" }):Colorpicker({
    Name = "Glow Color",
    Default = Color3.fromRGB(255, 100, 100),
    Flag = "BoxGlowColor",
    Callback = function(Value)
        ESPSettings.BoxGlowColor = Value
    end
})

BoxSection:Slider({
    Name = "Box Thickness",
    Min = 1,
    Max = 4,
    Default = 1.5,
    Decimals = 0.1,
    Flag = "BoxThickness",
    Callback = function(Value)
        ESPSettings.BoxThickness = Value
    end
})

BoxSection:Slider({
    Name = "Glow Thickness",
    Min = 2,
    Max = 10,
    Default = 4,
    Decimals = 1,
    Flag = "BoxGlowThickness",
    Callback = function(Value)
        ESPSettings.BoxGlowThickness = Value
    end
})

BoxSection:Slider({
    Name = "Fill Transparency",
    Min = 0,
    Max = 1,
    Default = 0.85,
    Decimals = 0.01,
    Flag = "BoxFillTransparency",
    Callback = function(Value)
        ESPSettings.BoxFillTransparency = Value
    end
})

--======= AIM PAGE =======--
local AimSection = Pages.Aim:Section({ Name = "Silent Aim", Side = 1 })
local FOVSection = Pages.Aim:Section({ Name = "FOV", Side = 2 })
local TLSection  = Pages.Aim:Section({ Name = "Target Line", Side = 2 })
local InstaSection = Pages.Aim:Section({ Name = "Insta Hit", Side = 1 })
local HitscanSection = Pages.Aim:Section({ Name = "Hitscan", Side = 1 })
local ManipSection = Pages.Aim:Section({ Name = "Manipulation", Side = 1 })
local HitmarkerSection = Pages.Aim:Section({ Name = "Hitmarkers", Side = 1 })
local GunModsSection = Pages.Aim:Section({ Name = "Gun Mods", Side = 2 })
local RageSection = Pages.Aim:Section({ Name = "Rage Bot", Side = 2 })
local TriggerSection = Pages.Aim:Section({ Name = "Triggerbot", Side = 2 })
local WallSection = Pages.Aim:Section({ Name = "Wallbang", Side = 1 })
local AASection = Pages.Aim:Section({ Name = "Anti Aim", Side = 2 })
local MeleeSection = Pages.Aim:Section({ Name = "Melee", Side = 1 })
local GrenadeSection = Pages.Aim:Section({ Name = "Grenade", Side = 1 })
local HitFeedSection = Pages.Aim:Section({ Name = "Hit Feedback", Side = 2 })

AimSection:Toggle({
    Name = "Enable Silent Aim",
    Default = true,
    Flag = "SilentAimEnabled",
    Callback = function(Value)
        AimSettings.Enabled = Value
    end
})

AimSection:Dropdown({
    Name = "Mode",
    Items = {"Silent", "Mouse"},
    Default = "Silent",
    Flag = "AimMode",
    Callback = function(Value)
        AimSettings.Mode = Value
    end
})

AimSection:Dropdown({
    Name = "Aim Part",
    Items = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
    Default = "Head",
    Flag = "AimPart",
    Callback = function(Value)
        AimSettings.AimPart = Value
    end
})

AimSection:Toggle({
    Name = "Team Check",
    Default = false,
    Flag = "AimTeamCheck",
    Callback = function(Value)
        AimSettings.TeamCheck = Value
    end
})

AimSection:Toggle({
    Name = "Dead Check",
    Default = true,
    Flag = "AimDeadCheck",
    Callback = function(Value)
        AimSettings.DeadCheck = Value
    end
})

AimSection:Toggle({
    Name = "Target AI / Bandits",
    Default = false,
    Flag = "AimTargetAI",
    Callback = function(Value)
        AimSettings.TargetAI = Value
    end
})

AimSection:Slider({
    Name = "Max Distance",
    Min = 50,
    Max = 2000,
    Default = 600,
    Decimals = 1,
    Flag = "AimMaxDistance",
    Callback = function(Value)
        AimSettings.MaxDistance = Value
    end
})

AimSection:Slider({
    Name = "Smoothness (Mouse mode)",
    Min = 0.01,
    Max = 1,
    Default = 0.86,
    Decimals = 0.01,
    Flag = "AimSmoothness",
    Callback = function(Value)
        AimSettings.Smoothness = Value
    end
})

AimSection:Label({ Name = "Hold RMB to activate", Alignment = "Left" })

-- Instant Hit (wallhack.rbx port)
local instaHitEnabled = false
local instaHitMethod  = "instant hit"
InstaSection:Toggle({
    Name = "Instant Hit",
    Default = false,
    Flag = "InstaHitEnabled",
    Callback = function(Value)
        instaHitEnabled = Value
    end
})
InstaSection:Label({ Name = "wallhack-style: tick() - dist/1000 on FireProjectile", Alignment = "Left" })
InstaSection:Label({ Name = "Also fakes Bullet Raycast + ProjectileInflict when on", Alignment = "Left" })

-- Hitscan (GHOST_HOOK corner-shoot)
HitscanSection:Toggle({
    Name = "Enable Hitscan",
    Default = false,
    Flag = "HitscanEnabled",
    Callback = function(Value)
        HitscanSettings.Enabled = Value
        if not Value then
            HitscanSettings.Active = false
            HitscanSettings.Origin = nil
            HitscanSettings.TargetPart = nil
            HitscanSettings.OriginMethod = nil
            HitscanSettings._fireTick = nil
        end
    end
})

HitscanSection:Toggle({
    Name = "Multiscan Parts",
    Default = false,
    Flag = "HitscanMultiscan",
    Callback = function(Value)
        HitscanSettings.Multiscan = Value
    end
})

HitscanSection:Slider({
    Name = "Range",
    Min = 1,
    Max = 8,
    Default = 4,
    Decimals = 0.1,
    Flag = "HitscanRange",
    Callback = function(Value)
        HitscanSettings.Range = Value
    end
})

HitscanSection:Toggle({
    Name = "Ticking Window",
    Default = false,
    Flag = "HitscanTicking",
    Callback = function(Value)
        HitscanSettings.Ticking = Value
    end
})

HitscanSection:Slider({
    Name = "Tick Window",
    Min = 0.016,
    Max = 0.15,
    Default = 0.03,
    Decimals = 0.001,
    Flag = "HitscanTickValue",
    Callback = function(Value)
        HitscanSettings.TickValue = Value
    end
})

HitscanSection:Label({ Name = "Solves offset origin when target not LOS", Alignment = "Left" })
HitscanSection:Label({ Name = "Snaps HRP on FireProjectile for validation", Alignment = "Left" })

ManipSection:Toggle({
    Name = "Enable Manipulation",
    Default = false,
    Flag = "ManipEnabled",
    Callback = function(Value)
        ManipulationSettings.Enabled = Value
        if not Value then
            ManipulationSettings.Active = false
            ManipulationSettings.Origin = nil
            ManipulationSettings.Target = nil
            ManipulationSettings.EndTime = 0
        end
    end
})

ManipSection:Slider({
    Name = "Peek Distance",
    Min = 0.5,
    Max = 5,
    Default = 1.5,
    Decimals = 0.1,
    Flag = "ManipDistance",
    Callback = function(Value)
        ManipulationSettings.Distance = Value
    end
})

ManipSection:Slider({
    Name = "Peek Duration",
    Min = 0.03,
    Max = 0.25,
    Default = 0.08,
    Decimals = 0.01,
    Flag = "ManipDuration",
    Callback = function(Value)
        ManipulationSettings.Duration = Value
    end
})

ManipSection:Toggle({
    Name = "Auto Peek on Fire",
    Default = false,
    Flag = "ManipAutoPeek",
    Callback = function(Value)
        ManipulationSettings.AutoPeek = Value
    end
})

ManipSection:Dropdown({
    Name = "Peek Key",
    Items = {"V", "C", "X", "Z", "LeftAlt", "LeftControl"},
    Default = "V",
    Flag = "ManipKey",
    Callback = function(Value)
        local map = {
            V = Enum.KeyCode.V, C = Enum.KeyCode.C, X = Enum.KeyCode.X, Z = Enum.KeyCode.Z,
            LeftAlt = Enum.KeyCode.LeftAlt, LeftControl = Enum.KeyCode.LeftControl,
        }
        ManipulationSettings.Key = map[Value] or Enum.KeyCode.V
    end
})

ManipSection:Label({ Name = "Server-side peek only (client view stays put)", Alignment = "Left" })
ManipSection:Label({ Name = "Indicator under crosshair: PEEK idle / MANIP active", Alignment = "Left" })

-- Hitmarkers
HitmarkerSection:Toggle({
    Name = "Enable Hitmarkers",
    Default = false,
    Flag = "HitmarkersEnabled",
    Callback = function(Value)
        HitmarkerSettings.Enabled = Value
    end
})

HitmarkerSection:Label({ Name = "Hitmarker Color", Alignment = "Left" }):Colorpicker({
    Name = "Hitmarker Color",
    Default = Color3.fromRGB(255, 50, 50),
    Flag = "HitmarkerColor",
    Callback = function(Value)
        HitmarkerSettings.Color = Value
    end
})

HitmarkerSection:Slider({
    Name = "Size",
    Min = 4,
    Max = 30,
    Default = 10,
    Decimals = 1,
    Flag = "HitmarkerSize",
    Callback = function(Value)
        HitmarkerSettings.Size = Value
    end
})

HitmarkerSection:Slider({
    Name = "Thickness",
    Min = 1,
    Max = 6,
    Default = 2,
    Decimals = 1,
    Flag = "HitmarkerThickness",
    Callback = function(Value)
        HitmarkerSettings.Thickness = Value
    end
})

HitmarkerSection:Slider({
    Name = "Lifetime",
    Min = 0.1,
    Max = 2,
    Default = 0.45,
    Decimals = 0.01,
    Suffix = "s",
    Flag = "HitmarkerLifetime",
    Callback = function(Value)
        HitmarkerSettings.Lifetime = Value
    end
})

HitmarkerSection:Toggle({
    Name = "Fade Out",
    Default = true,
    Flag = "HitmarkerFade",
    Callback = function(Value)
        HitmarkerSettings.Fade = Value
    end
})

-- Gun Mods (GHOST_HOOK no-recoil / no-spread)
local noRecoilEnabled = false
local noSpreadEnabled = false
GunModsSection:Toggle({
    Name = "No Recoil",
    Default = false,
    Flag = "NoRecoil",
    Callback = function(Value)
        noRecoilEnabled = Value
        GunModSettings.NoRecoil = Value
    end
})
GunModsSection:Toggle({
    Name = "No Spread",
    Default = false,
    Flag = "NoSpread",
    Callback = function(Value)
        noSpreadEnabled = Value
        GunModSettings.NoSpread = Value
    end
})
GunModsSection:Toggle({
    Name = "No Sway",
    Default = false,
    Flag = "NoSway",
    Callback = function(Value)
        GunModSettings.NoSway = Value
    end
})
GunModsSection:Toggle({
    Name = "Remove Obstructions",
    Default = false,
    Flag = "RemoveObstructions",
    Callback = function(Value)
        GunModSettings.RemoveObstructions = Value
    end
})
GunModsSection:Toggle({
    Name = "Instant Aim",
    Default = false,
    Flag = "InstantAim",
    Callback = function(Value)
        GunModSettings.InstantAim = Value
    end
})
GunModsSection:Toggle({
    Name = "Remove Sprint Animation",
    Default = false,
    Flag = "RemoveSprintAnim",
    Callback = function(Value)
        GunModSettings.RemoveSprintAnimation = Value
    end
})
GunModsSection:Toggle({
    Name = "Remove Muzzle Effects",
    Default = false,
    Flag = "RemoveMuzzle",
    Callback = function(Value)
        GunModSettings.RemoveMuzzleEffects = Value
    end
})
GunModsSection:Toggle({
    Name = "Double Tap",
    Default = false,
    Flag = "DoubleTap",
    Callback = function(Value)
        GunModSettings.DoubleTap = Value
    end
})
GunModsSection:Toggle({
    Name = "Instant Lean",
    Default = false,
    Flag = "InstantLean",
    Callback = function(Value)
        GunModSettings.InstantLean = Value
    end
})
GunModsSection:Label({ Name = "Gun mods use Library Flags so configs load like Silent Aim", Alignment = "Left" })

GunModsSection:Toggle({
    Name = "Rapid Fire",
    Default = false,
    Flag = "RapidFire",
    Callback = function(Value) GunModSettings.RapidFire = Value end
})
GunModsSection:Slider({
    Name = "Fire Rate (RPM)",
    Min = 60, Max = 3000, Default = 1200, Decimals = 1,
    Flag = "FireRateRPM",
    Callback = function(Value) GunModSettings.FireRateRPM = Value end
})
GunModsSection:Toggle({
    Name = "Instant Reload",
    Default = false,
    Flag = "InstantReload",
    Callback = function(Value) GunModSettings.InstantReload = Value end
})
GunModsSection:Toggle({
    Name = "Unlock Firemodes",
    Default = false,
    Flag = "UnlockFiremodes",
    Callback = function(Value) GunModSettings.UnlockFiremodes = Value end
})
GunModsSection:Toggle({
    Name = "No Gun Bob",
    Default = false,
    Flag = "NoGunBob",
    Callback = function(Value) GunModSettings.NoGunBob = Value end
})
GunModsSection:Toggle({
    Name = "Instant Equip",
    Default = false,
    Flag = "InstantEquip",
    Callback = function(Value) GunModSettings.InstantEquip = Value end
})
GunModsSection:Toggle({
    Name = "Magic Bullet",
    Default = false,
    Flag = "MagicBullet",
    Callback = function(Value) GunModSettings.MagicBullet = Value end
})

-- Rage Bot
RageSection:Toggle({
    Name = "Enable Rage Bot",
    Default = false,
    Flag = "RageEnabled",
    Callback = function(Value) RageSettings.Enabled = Value end
})
RageSection:Toggle({
    Name = "Auto Fire",
    Default = true,
    Flag = "RageAutoFire",
    Callback = function(Value) RageSettings.AutoFire = Value end
})
RageSection:Slider({
    Name = "Hit Chance %",
    Min = 1, Max = 100, Default = 100, Decimals = 1,
    Flag = "RageHitChance",
    Callback = function(Value) RageSettings.HitChance = Value end
})
RageSection:Slider({
    Name = "Max Distance",
    Min = 50, Max = 2000, Default = 600, Decimals = 1,
    Flag = "RageMaxDist",
    Callback = function(Value) RageSettings.MaxDistance = Value end
})
RageSection:Toggle({
    Name = "Velocity Prediction",
    Default = true,
    Flag = "RagePrediction",
    Callback = function(Value) RageSettings.Prediction = Value end
})
RageSection:Slider({
    Name = "Prediction Mult",
    Min = 0.1, Max = 3, Default = 1, Decimals = 0.05,
    Flag = "RagePredMult",
    Callback = function(Value) RageSettings.PredictionMult = Value end
})
RageSection:Toggle({
    Name = "Random Hit Part",
    Default = false,
    Flag = "RageRandomPart",
    Callback = function(Value) RageSettings.RandomHitPart = Value end
})
RageSection:Toggle({
    Name = "Lift Hitboxes",
    Default = false,
    Flag = "RageLiftHB",
    Callback = function(Value) RageSettings.LiftHitboxes = Value end
})
RageSection:Slider({
    Name = "Lift Height",
    Min = 0.5, Max = 6, Default = 2, Decimals = 0.1,
    Flag = "RageLiftHeight",
    Callback = function(Value) RageSettings.LiftHeight = Value end
})

-- Triggerbot
TriggerSection:Toggle({
    Name = "Enable Triggerbot",
    Default = false,
    Flag = "TriggerEnabled",
    Callback = function(Value) TriggerSettings.Enabled = Value end
})
TriggerSection:Toggle({
    Name = "Shoot on Manipulated",
    Default = false,
    Flag = "TriggerOnManip",
    Callback = function(Value) TriggerSettings.ShootOnManip = Value end
})
TriggerSection:Slider({
    Name = "Hit Chance %",
    Min = 1, Max = 100, Default = 100, Decimals = 1,
    Flag = "TriggerHitChance",
    Callback = function(Value) TriggerSettings.HitChance = Value end
})

-- Wallbang (Aim combat — wallhack.rbx style)
WallSection:Toggle({
    Name = "Wallbang",
    Default = false,
    Flag = "Wallbang",
    Callback = function(Value)
        RageSettings.Wallbang = Value
        RageSettings.AutoWallbang = Value
    end
})
WallSection:Toggle({
    Name = "Auto Wallbang",
    Default = false,
    Flag = "AutoWallbang",
    Callback = function(Value) RageSettings.AutoWallbang = Value end
})
WallSection:Slider({
    Name = "Max Wall Thickness",
    Min = 0.5, Max = 10, Default = 2, Decimals = 0.1,
    Flag = "WallThickness",
    Callback = function(Value) RageSettings.WallbangThickness = Value end
})
WallSection:Label({ Name = "Locks force path through thin walls (Raycast + thickness)", Alignment = "Left" })

-- Anti Aim
AASection:Toggle({
    Name = "Enable Anti Aim",
    Default = false,
    Flag = "AAEnabled",
    Callback = function(Value) AntiAimSettings.Enabled = Value end
})
AASection:Dropdown({
    Name = "Mode",
    Items = {"Spin", "Jitter", "Static"},
    Default = "Spin",
    Flag = "AAMode",
    Callback = function(Value) AntiAimSettings.Mode = Value end
})
AASection:Slider({
    Name = "Spin Speed",
    Min = 1, Max = 50, Default = 20, Decimals = 1,
    Flag = "AASpeed",
    Callback = function(Value) AntiAimSettings.Speed = Value end
})
AASection:Slider({
    Name = "Static Yaw",
    Min = 0, Max = 360, Default = 180, Decimals = 1,
    Flag = "AAYaw",
    Callback = function(Value) AntiAimSettings.Yaw = Value end
})

-- Melee
MeleeSection:Toggle({
    Name = "No Melee Cooldown",
    Default = false,
    Flag = "MeleeNoCD",
    Callback = function(Value) MeleeSettings.NoCooldown = Value end
})
MeleeSection:Slider({
    Name = "Melee Reach Bonus",
    Min = 0, Max = 20, Default = 0, Decimals = 0.5,
    Flag = "MeleeReach",
    Callback = function(Value) MeleeSettings.Reach = Value end
})
MeleeSection:Toggle({
    Name = "Knife Changer",
    Default = false,
    Flag = "KnifeChanger",
    Callback = function(Value) MeleeSettings.KnifeChanger = Value end
})
MeleeSection:Dropdown({
    Name = "Melee Skin",
    Items = {"Default", "Karambit", "Bayonet", "Tactical"},
    Default = "Default",
    Flag = "MeleeSkin",
    Callback = function(Value) MeleeSettings.MeleeSkin = Value end
})

-- Grenade
GrenadeSection:Toggle({
    Name = "Grenade Auto Aim",
    Default = false,
    Flag = "GrenadeAutoAim",
    Callback = function(Value) GrenadeSettings.AutoAim = Value end
})
GrenadeSection:Toggle({
    Name = "Arc Mode",
    Default = false,
    Flag = "GrenadeArc",
    Callback = function(Value) GrenadeSettings.ArcMode = Value end
})
GrenadeSection:Slider({
    Name = "Bounce Hint",
    Min = 0, Max = 5, Default = 0, Decimals = 1,
    Flag = "GrenadeBounces",
    Callback = function(Value) GrenadeSettings.Bounces = Value end
})
GrenadeSection:Label({ Name = "Redirects ServerProjectile toward silent-aim target", Alignment = "Left" })

-- Hit Feedback
HitFeedSection:Toggle({
    Name = "Hit Logs",
    Default = false,
    Flag = "HitLogs",
    Callback = function(Value) HitFeedbackSettings.HitLogs = Value end
})
HitFeedSection:Slider({
    Name = "Hit Logs Y",
    Min = 100, Max = 800, Default = 400, Decimals = 1,
    Flag = "HitLogsY",
    Callback = function(Value) HitFeedbackSettings.HitLogsY = Value end
})
HitFeedSection:Toggle({
    Name = "Damage Numbers",
    Default = false,
    Flag = "DamageNumbers",
    Callback = function(Value) HitFeedbackSettings.DamageNumbers = Value end
})
HitFeedSection:Slider({
    Name = "Numbers Spread",
    Min = 0, Max = 80, Default = 30, Decimals = 1,
    Flag = "DamageSpread",
    Callback = function(Value) HitFeedbackSettings.DamageSpread = Value end
})

-- FOV
FOVSection:Toggle({
    Name = "Show FOV Circle",
    Default = true,
    Flag = "FOVVisible",
    Callback = function(Value)
        AimSettings.FOVVisible = Value
    end
})

FOVSection:Slider({
    Name = "FOV Size",
    Min = 10,
    Max = 400,
    Default = 120,
    Decimals = 1,
    Flag = "FOVSize",
    Callback = function(Value)
        AimSettings.FOV = Value
    end
})

FOVSection:Label({ Name = "FOV Color", Alignment = "Left" }):Colorpicker({
    Name = "FOV Color",
    Default = Color3.fromRGB(0, 170, 255),
    Flag = "FOVColor",
    Callback = function(Value)
        AimSettings.FOVColor = Value
    end
})

-- Target Line
TLSection:Toggle({
    Name = "Enable Target Line",
    Default = false,
    Flag = "TargetLineEnabled",
    Callback = function(Value)
        TargetLineSettings.Enabled = Value
    end
})

TLSection:Label({ Name = "Line Color", Alignment = "Left" }):Colorpicker({
    Name = "Target Line Color",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "TargetLineColor",
    Callback = function(Value)
        TargetLineSettings.Color = Value
    end
})

TLSection:Slider({
    Name = "Thickness",
    Min = 1,
    Max = 5,
    Default = 1,
    Decimals = 1,
    Flag = "TargetLineThickness",
    Callback = function(Value)
        TargetLineSettings.Thickness = Value
    end
})

--======= VISUALS PAGE (AI ESP) =======--

-- Viewmodel Changer (from backtrack.tech)
local VmSection = Pages.Visuals:Section({ Name = "Viewmodel", Side = 1 })

VmSection:Toggle({
    Name = "Override Viewmodel",
    Default = false,
    Flag = "VmEnabled",
    Callback = function(Value)
        ViewmodelSettings.Enabled = Value
    end
})

VmSection:Toggle({
    Name = "Remove Clothing",
    Default = false,
    Flag = "VmRemoveClothing",
    Callback = function(Value)
        ViewmodelSettings.RemoveClothing = Value
    end
})

local highlightToggle = VmSection:Toggle({
    Name = "Apply Highlight",
    Default = false,
    Flag = "VmHighlight",
    Callback = function(Value)
        ViewmodelSettings.HighlightEnabled = Value
    end
})

highlightToggle:Colorpicker({
    Name = "Fill Color",
    Default = Color3.fromRGB(255, 98, 127),
    Flag = "VmHighlightFill",
    Callback = function(Color)
        ViewmodelSettings.HighlightFillColor = Color
    end
})

VmSection:Label({ Name = "Highlight Outline", Alignment = "Left" }):Colorpicker({
    Name = "Outline Color",
    Default = Color3.fromRGB(255, 98, 127),
    Flag = "VmHighlightOutline",
    Callback = function(Color)
        ViewmodelSettings.HighlightOutlineColor = Color
    end
})

VmSection:Slider({
    Name = "Fill Transparency Mult",
    Min = -20, Max = 20, Default = 1, Decimals = 1,
    Flag = "VmFillMult",
    Callback = function(Value)
        ViewmodelSettings.HighlightFillMultiplier = Value
    end
})

VmSection:Slider({
    Name = "Outline Transparency Mult",
    Min = -20, Max = 20, Default = 1, Decimals = 1,
    Flag = "VmOutlineMult",
    Callback = function(Value)
        ViewmodelSettings.HighlightOutlineMultiplier = Value
    end
})

VmSection:Toggle({
    Name = "Override Weapon",
    Default = false,
    Flag = "VmWeapon",
    Callback = function(Value)
        ViewmodelSettings.WeaponEnabled = Value
    end
})

VmSection:Dropdown({
    Name = "Weapon Material",
    Items = {"ForceField", "Glass", "Neon", "SmoothPlastic"},
    Default = "ForceField",
    Flag = "VmWeaponMat",
    Callback = function(Value)
        ViewmodelSettings.WeaponMaterial = Value
    end
})

VmSection:Label({ Name = "Weapon Color", Alignment = "Left" }):Colorpicker({
    Name = "Weapon Color",
    Default = Color3.fromRGB(255, 98, 127),
    Flag = "VmWeaponColor",
    Callback = function(Color)
        ViewmodelSettings.WeaponColor = Color
    end
})

VmSection:Toggle({
    Name = "Override Arms",
    Default = false,
    Flag = "VmArms",
    Callback = function(Value)
        ViewmodelSettings.ArmsEnabled = Value
    end
})

VmSection:Dropdown({
    Name = "Arms Material",
    Items = {"ForceField", "Glass", "Neon", "SmoothPlastic"},
    Default = "ForceField",
    Flag = "VmArmsMat",
    Callback = function(Value)
        ViewmodelSettings.ArmsMaterial = Value
    end
})

VmSection:Label({ Name = "Arms Color", Alignment = "Left" }):Colorpicker({
    Name = "Arms Color",
    Default = Color3.fromRGB(255, 98, 127),
    Flag = "VmArmsColor",
    Callback = function(Color)
        ViewmodelSettings.ArmsColor = Color
    end
})

VmSection:Toggle({
    Name = "Override Offset",
    Default = false,
    Flag = "VmOffset",
    Callback = function(Value)
        ViewmodelSettings.OffsetEnabled = Value
    end
})

VmSection:Slider({
    Name = "X Offset",
    Min = -5, Max = 5, Default = 0, Decimals = 2,
    Flag = "VmOffsetX",
    Callback = function(Value)
        ViewmodelSettings.OffsetX = Value
    end
})

VmSection:Slider({
    Name = "Y Offset",
    Min = -5, Max = 5, Default = 0, Decimals = 2,
    Flag = "VmOffsetY",
    Callback = function(Value)
        ViewmodelSettings.OffsetY = Value
    end
})

VmSection:Slider({
    Name = "Z Offset",
    Min = -5, Max = 5, Default = 0, Decimals = 2,
    Flag = "VmOffsetZ",
    Callback = function(Value)
        ViewmodelSettings.OffsetZ = Value
    end
})

local AiEspSection = Pages.Visuals:Section({ Name = "AI / Bandit ESP", Side = 1 })
AiEspSection:Label({ Name = "Targets Workspace.AiZones (highway bandits, bots)", Alignment = "Left" })

AiEspSection:Toggle({
    Name = "AI Nametag ESP",
    Default = false,
    Flag = "AiEspName",
    Callback = function(Value)
        AiEspSettings.NameEnabled = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
}):Colorpicker({
    Name = "Nametag Color",
    Default = Color3.fromRGB(255, 255, 0),
    Flag = "AiEspNameColor",
    Callback = function(Value)
        AiEspSettings.NameColor = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
})

AiEspSection:Slider({
    Name = "Nametag Size",
    Min = 8,
    Max = 24,
    Default = 11,
    Decimals = 1,
    Flag = "AiEspNameSize",
    Callback = function(Value)
        AiEspSettings.NameSize = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
})

-- Alpha flag removed — library Set() clamps a boolean when Alpha=true with no numeric default.
-- Transparency is controlled exclusively by the slider below.
AiEspSection:Toggle({
    Name = "AI Chams ESP",
    Default = false,
    Flag = "AiEspHighlight",
    Callback = function(Value)
        AiEspSettings.HighlightEnabled = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
}):Colorpicker({
    Name = "Chams Color",
    Default = Color3.fromRGB(255, 0, 0),
    Flag = "AiEspHighlightColor",
    Callback = function(Value)
        AiEspSettings.HighlightColor = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
})

AiEspSection:Slider({
    Name = "Chams Transparency",
    Min = 0,
    Max = 1,
    Default = 0.5,
    Decimals = 0.01,
    Flag = "AiEspHighlightTrans",
    Callback = function(Value)
        AiEspSettings.HighlightTransparency = Value
        if _G._AiEspRefresh then _G._AiEspRefresh() end
    end
})

AiEspSection:Button({
    Name = "Refresh AI ESP",
    Callback = function()
        if _G._AiEspRefresh then
            _G._AiEspRefresh()
            Library:Notification("AI ESP refreshed", 2, Color3.fromRGB(0, 255, 0))
        end
    end
})

-- Third Person
local TpSection = Pages.Visuals:Section({ Name = "Third Person", Side = 2 })

TpSection:Toggle({
    Name = "Enable Third Person",
    Default = false,
    Flag = "ThirdPersonEnabled",
    Callback = function(Value)
        ThirdPersonSettings.Enabled = Value
        if not Value then
            -- restore handled in runtime loop via tp_was_active
        end
        Library:Notification("Third Person " .. (Value and "ON" or "OFF"), 2, Color3.fromRGB(120, 200, 255))
    end
})

TpSection:Slider({
    Name = "Distance",
    Min = 1,
    Max = 50,
    Default = 10,
    Decimals = 0.5,
    Flag = "ThirdPersonDistance",
    Callback = function(Value)
        ThirdPersonSettings.Distance = Value
    end
})

TpSection:Toggle({
    Name = "Lock Body to Camera",
    Default = true,
    Flag = "ThirdPersonLockBody",
    Callback = function(Value)
        ThirdPersonSettings.LockBody = Value
    end
})

TpSection:Toggle({
    Name = "Zoom Fade",
    Default = true,
    Flag = "ThirdPersonZoomFade",
    Callback = function(Value)
        ThirdPersonSettings.ZoomFade = Value
    end
})

TpSection:Slider({
    Name = "Fade Speed",
    Min = 2,
    Max = 30,
    Default = 14,
    Decimals = 1,
    Flag = "ThirdPersonFadeSpeed",
    Callback = function(Value)
        ThirdPersonSettings.FadeSpeed = Value
    end
})

TpSection:Slider({
    Name = "Fade Transparency",
    Min = 0.1,
    Max = 1,
    Default = 1,
    Decimals = 0.01,
    Flag = "ThirdPersonFadeTarget",
    Callback = function(Value)
        ThirdPersonSettings.FadeTarget = Value
    end
})

TpSection:Label({ Name = "Toggle Keybind", Alignment = "Left" }):Keybind({
    Name = "Third Person Key",
    Mode = "Toggle",
    Default = Enum.KeyCode.RightControl,
    Flag = "ThirdPersonToggleKey",
    Callback = function()
        local flag = Library.Flags and Library.Flags["ThirdPersonToggleKey"]
        if flag and flag.Key then
            ThirdPersonSettings.ToggleKey = flag.Key
        end
    end
})

TpSection:Label({ Name = "MinZoom=MaxZoom + CameraSubject Humanoid", Alignment = "Left" })

--======= WORLD PAGE =======--
local WorldSection = Pages.World:Section({ Name = "World Mods", Side = 1 })
local LightSection = Pages.World:Section({ Name = "Lighting / Atmosphere", Side = 2 })

WorldSection:Toggle({
    Name = "Remove Grass",
    Default = false,
    Flag = "WorldRemoveGrass",
    Callback = function(Value)
        WorldMods.RemoveGrass = Value
        setNoGrass(Value)
    end
})

WorldSection:Toggle({
    Name = "Remove Foliage",
    Default = false,
    Flag = "WorldRemoveFoliage",
    Callback = function(Value)
        WorldMods.RemoveFoliage = Value
        updateWorldMods()
    end
})

WorldSection:Toggle({
    Name = "Remove Trees",
    Default = false,
    Flag = "WorldRemoveTrees",
    Callback = function(Value)
        WorldMods.RemoveTrees = Value
        updateWorldMods()
    end
})

WorldSection:Divider()

for _, mat in ipairs({"Grass", "Ground", "LeafyGrass", "Rock", "Sand"}) do
    WorldSection:Toggle({
        Name = mat .. " Color",
        Default = false,
        Flag = "Terrain" .. mat .. "Enabled",
        Callback = function(Value)
            WorldMods.TerrainColors[mat].enabled = Value
            updateWorldMods()
        end
    })
    WorldSection:Label({ Name = mat .. " Color", Alignment = "Left" }):Colorpicker({
        Name = mat .. " Color",
        Default = WorldMods.TerrainColors[mat].color,
        Flag = "Terrain" .. mat .. "Color",
        Callback = function(Color)
            WorldMods.TerrainColors[mat].color = Color
            updateWorldMods()
        end
    })
end

LightSection:Toggle({
    Name = "No Visor (No Screen Effects)",
    Default = false,
    Flag = "NoVisor",
    Callback = function(Value)
        NoVisorSettings.Enabled = Value
    end
})

LightSection:Toggle({
    Name = "Override Ambient",
    Default = false,
    Flag = "OverrideAmbient",
    Callback = function(Value)
        WorldMods.OverrideAmbient = Value
        updateWorldMods()
    end
})
LightSection:Label({ Name = "Ambient", Alignment = "Left" }):Colorpicker({
    Name = "Ambient",
    Default = Color3.fromRGB(128, 128, 128),
    Flag = "WorldAmbient",
    Callback = function(Color)
        WorldMods.Ambient = Color
        updateWorldMods()
    end
})
LightSection:Label({ Name = "Outdoor Ambient", Alignment = "Left" }):Colorpicker({
    Name = "Outdoor Ambient",
    Default = Color3.fromRGB(128, 128, 128),
    Flag = "WorldOutdoorAmbient",
    Callback = function(Color)
        WorldMods.OutdoorAmbient = Color
        updateWorldMods()
    end
})

LightSection:Toggle({
    Name = "Override Brightness",
    Default = false,
    Flag = "OverrideBrightness",
    Callback = function(Value)
        WorldMods.OverrideBrightness = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Brightness",
    Min = 0, Max = 75, Default = 2, Decimals = 1,
    Flag = "WorldBrightness",
    Callback = function(Value)
        WorldMods.Brightness = Value
        updateWorldMods()
    end
})

LightSection:Toggle({
    Name = "Override Clock Time",
    Default = false,
    Flag = "OverrideClockTime",
    Callback = function(Value)
        WorldMods.OverrideClockTime = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Clock Time",
    Min = 0, Max = 24, Default = 14, Decimals = 0.1,
    Flag = "WorldClockTime",
    Callback = function(Value)
        WorldMods.ClockTime = Value
        updateWorldMods()
    end
})

LightSection:Toggle({
    Name = "Override Fog",
    Default = false,
    Flag = "OverrideFog",
    Callback = function(Value)
        WorldMods.OverrideFog = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Fog Density",
    Min = 0, Max = 1, Default = 0, Decimals = 0.01,
    Flag = "FogDensity",
    Callback = function(Value)
        WorldMods.FogDensity = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Fog Offset",
    Min = 0, Max = 1, Default = 0, Decimals = 0.01,
    Flag = "FogOffset",
    Callback = function(Value)
        WorldMods.FogOffset = Value
        updateWorldMods()
    end
})

LightSection:Toggle({
    Name = "Override Fog Colors",
    Default = false,
    Flag = "OverrideFogColors",
    Callback = function(Value)
        WorldMods.OverrideFogColors = Value
        updateWorldMods()
    end
})
LightSection:Label({ Name = "Fog Color", Alignment = "Left" }):Colorpicker({
    Name = "Fog Color",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "FogColor",
    Callback = function(Color)
        WorldMods.FogColor = Color
        updateWorldMods()
    end
})
LightSection:Label({ Name = "Fog Decay", Alignment = "Left" }):Colorpicker({
    Name = "Fog Decay",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "FogDecay",
    Callback = function(Color)
        WorldMods.FogDecay = Color
        updateWorldMods()
    end
})

LightSection:Toggle({
    Name = "Override Bloom",
    Default = false,
    Flag = "OverrideBloom",
    Callback = function(Value)
        WorldMods.OverrideBloom = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Bloom Intensity",
    Min = 0, Max = 10, Default = 0.5, Decimals = 0.1,
    Flag = "BloomIntensity",
    Callback = function(Value)
        WorldMods.BloomIntensity = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Bloom Size",
    Min = 0, Max = 100, Default = 56, Decimals = 1,
    Flag = "BloomSize",
    Callback = function(Value)
        WorldMods.BloomSize = Value
        updateWorldMods()
    end
})
LightSection:Slider({
    Name = "Bloom Threshold",
    Min = -1, Max = 1, Default = 0.8, Decimals = 0.1,
    Flag = "BloomThreshold",
    Callback = function(Value)
        WorldMods.BloomThreshold = Value
        updateWorldMods()
    end
})

--======= MISC PAGE =======--
local MiscSection = Pages.Misc:Section({ Name = "Misc", Side = 1 })
local MoveSection = Pages.Misc:Section({ Name = "Movement", Side = 1 })
local CharSection = Pages.Misc:Section({ Name = "Character", Side = 1 })
local BurySection = Pages.Misc:Section({ Name = "Bury / Underground", Side = 1 })
local DesyncSection = Pages.Misc:Section({ Name = "Desync", Side = 2 })
local ViewerSection = Pages.Misc:Section({ Name = "Inventory Viewer", Side = 2 })

MiscSection:Toggle({
    Name = "No Grass",
    Default = false,
    Flag = "NoGrassEnabled",
    Callback = function(val)
        setNoGrass(val)
    end
})

--======= SKIN CHANGER (preview grid UI + GHOST unlock/spoof) =======--
local function openSkinChanger()
    -- If already open, just show it
    local existing = CoreGui:FindFirstChild("PDVibeSkinChanger")
        or (LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild("PDVibeSkinChanger"))
    if existing then
        existing.Enabled = true
        Library:Notification("Skin Changer opened!", 2, Color3.fromRGB(0, 255, 0))
        return
    end

    local Theme = {
        Bg        = Color3.fromRGB(12, 14, 18),
        Panel     = Color3.fromRGB(18, 22, 28),
        Card      = Color3.fromRGB(24, 28, 36),
        CardHover = Color3.fromRGB(32, 38, 48),
        Accent    = Color3.fromRGB(80, 160, 255),
        Text      = Color3.fromRGB(230, 235, 245),
        TextDim   = Color3.fromRGB(140, 150, 165),
        Border    = Color3.fromRGB(40, 48, 60),
        Selected  = Color3.fromRGB(80, 160, 255),
    }
    local State = {
        SelectedWeapon = nil,
        SelectedSkin   = "Default",
        UnlockAll      = true,
        Enabled        = true,
        SearchQuery    = "",
        Dragging       = false,
        DragStart      = nil,
        StartPos       = nil,
    }
    local GuiRefs, PreviewModel, PreviewCamera = {}, nil, nil

    local function corner(parent, r)
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, r or 6)
        c.Parent = parent
        return c
    end
    local function stroke(parent, color, thickness)
        local s = Instance.new("UIStroke")
        s.Color = color or Theme.Border
        s.Thickness = thickness or 1
        s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        s.Parent = parent
        return s
    end
    local function pad(parent, t, r, b, l)
        local p = Instance.new("UIPadding")
        p.PaddingTop = UDim.new(0, t or 0)
        p.PaddingRight = UDim.new(0, r or 0)
        p.PaddingBottom = UDim.new(0, b or 0)
        p.PaddingLeft = UDim.new(0, l or 0)
        p.Parent = parent
        return p
    end

    local function getSkinsFolder()
        return ReplicatedStorage:FindFirstChild("Skins")
    end
    local function getItemsFolder()
        return ReplicatedStorage:FindFirstChild("ItemsListModels")
            or ReplicatedStorage:FindFirstChild("ItemsList")
    end
    local function listWeapons()
        local skins, items, list = getSkinsFolder(), getItemsFolder(), {}
        if skins then
            for _, folder in ipairs(skins:GetChildren()) do
                if folder:IsA("Folder") or folder:IsA("Model") then
                    table.insert(list, folder.Name)
                end
            end
        end
        if #list == 0 and items then
            for _, child in ipairs(items:GetChildren()) do
                table.insert(list, child.Name)
            end
        end
        table.sort(list)
        return list
    end
    local function listSkins(weaponName)
        local skins = getSkinsFolder()
        if not skins then return { "Default" } end
        local folder = skins:FindFirstChild(weaponName)
        if not folder then return { "Default" } end
        local list = { "Default" }
        for _, skin in ipairs(folder:GetChildren()) do
            if skin.Name ~= "Default" then table.insert(list, skin.Name) end
        end
        table.sort(list, function(a, b)
            if a == "Default" then return true end
            if b == "Default" then return false end
            return a:lower() < b:lower()
        end)
        return list
    end
    local function getWeaponModel(weaponName)
        local items = getItemsFolder()
        if not items then return nil end
        local model = items:FindFirstChild(weaponName)
        if model then return model end
        for _, child in ipairs(items:GetChildren()) do
            if child.Name:lower() == weaponName:lower() then return child end
        end
        return nil
    end

    local function applySurfaceAppearances(targetModel, skinFolder)
        if not targetModel or not skinFolder then return end
        local textures = skinFolder:FindFirstChild("Textures") or skinFolder
        local appearances = {}
        for _, asset in ipairs(textures:GetChildren()) do
            if asset:IsA("SurfaceAppearance") then table.insert(appearances, asset) end
        end
        if #appearances == 0 then return end
        for _, newApp in ipairs(appearances) do
            local targetPart = nil
            if #appearances == 1 or newApp.Name == "Base" or newApp.Name == "Default" then
                targetPart = targetModel:FindFirstChild("ItemRoot")
                    or targetModel:FindFirstChildWhichIsA("MeshPart", true)
                    or targetModel.PrimaryPart
            else
                targetPart = targetModel:FindFirstChild(newApp.Name, true)
            end
            if targetPart and (targetPart:IsA("MeshPart") or targetPart:IsA("Part") or targetPart:IsA("Model")) then
                for _, old in ipairs(targetPart:GetChildren()) do
                    if old:IsA("SurfaceAppearance") then old:Destroy() end
                end
                newApp:Clone().Parent = targetPart
            end
        end
    end

    local function applySkin(weaponName, skinName)
        if not State.Enabled or not weaponName then return end
        local skinsRoot = getSkinsFolder()
        if not skinsRoot then return end
        local weaponModel = getWeaponModel(weaponName)
        if weaponModel and skinName and skinName ~= "Default" then
            local skinFolder = skinsRoot:FindFirstChild(weaponName)
                and skinsRoot[weaponName]:FindFirstChild(skinName)
            if skinFolder then applySurfaceAppearances(weaponModel, skinFolder) end
        end
        local function tryApplyTo(container)
            if not container then return end
            local item = container:FindFirstChild("Item") or container:FindFirstChild(weaponName, true)
            if item and (item:IsA("Model") or item:IsA("BasePart")) then
                local skinFolder = skinsRoot:FindFirstChild(weaponName)
                    and skinsRoot[weaponName]:FindFirstChild(skinName)
                if skinFolder and skinName ~= "Default" then
                    applySurfaceAppearances(item, skinFolder)
                end
            end
        end
        local cam = workspace.CurrentCamera
        if cam then
            for _, child in ipairs(cam:GetChildren()) do
                if child:IsA("Model") then tryApplyTo(child) end
            end
        end
        if LocalPlayer.Character then tryApplyTo(LocalPlayer.Character) end
        pcall(function()
            local players = ReplicatedStorage:FindFirstChild("Players")
            local me = players and players:FindFirstChild(LocalPlayer.Name)
            local inv = me and me:FindFirstChild("Inventory")
            if not inv then return end
            for _, child in ipairs(inv:GetChildren()) do
                if child.Name == weaponName or (child:IsA("ObjectValue") and child.Value and child.Value.Name == weaponName) then
                    if skinName == "Default" then
                        child:SetAttribute("SpoofedSkin", "")
                        child:SetAttribute("Skin", nil)
                    else
                        child:SetAttribute("SpoofedSkin", skinName)
                        child:SetAttribute("Skin", skinName)
                    end
                end
            end
        end)
    end

    local function unlockAllSkins()
        if not State.UnlockAll then return end
        pcall(function()
            local players = ReplicatedStorage:FindFirstChild("Players")
            local me = players and players:FindFirstChild(LocalPlayer.Name)
            local status = me and me:FindFirstChild("Status")
            local purchases = status and status:FindFirstChild("Purchases")
            if not purchases then return end
            local skinsFolder = purchases:FindFirstChild("Skins")
            if not skinsFolder then
                skinsFolder = Instance.new("Folder")
                skinsFolder.Name = "Skins"
                skinsFolder.Parent = purchases
            end
            local function inject(sourceName)
                local src = ReplicatedStorage:FindFirstChild(sourceName)
                if not src then return end
                for _, weapon in pairs(src:GetChildren()) do
                    local wFolder = skinsFolder:FindFirstChild(weapon.Name)
                    if not wFolder then
                        wFolder = Instance.new("Folder")
                        wFolder.Name = weapon.Name
                        wFolder.Parent = skinsFolder
                    end
                    for _, skin in pairs(weapon:GetChildren()) do
                        if not wFolder:FindFirstChild(skin.Name) then
                            local f = Instance.new("Folder")
                            f.Name = skin.Name
                            f.Parent = wFolder
                        end
                    end
                end
            end
            inject("Skins"); inject("skins"); inject("Skin Packs"); inject("skin packs")
        end)
    end

    -- ChangeSkin spoof once
    if not _G._PDVibeSkinNamecall then
        _G._PDVibeSkinNamecall = true
        pcall(function()
            local old
            local function newNC(self, ...)
                local method = getnamecallmethod()
                if method == "FireServer" or method == "fireServer" or method == "InvokeServer" then
                    local ok, name = pcall(function() return self.Name end)
                    if ok and name == "ChangeSkin" then
                        local weaponObj, skinName = ...
                        if weaponObj then
                            if tostring(skinName) == "Default" or skinName == nil or skinName == "" then
                                pcall(function() weaponObj:SetAttribute("SpoofedSkin", "") end)
                            else
                                pcall(function() weaponObj:SetAttribute("SpoofedSkin", tostring(skinName)) end)
                            end
                            return true
                        end
                    end
                end
                return old(self, ...)
            end
            local wrapped = typeof(newcclosure) == "function" and newcclosure(newNC) or newNC
            if typeof(hookmetamethod) == "function" then
                old = hookmetamethod(game, "__namecall", wrapped)
            else
                local mt = getrawmetatable(game)
                old = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall = wrapped
                setreadonly(mt, true)
            end
        end)
    end

    local function clearPreview()
        if GuiRefs.Viewport then
            for _, child in ipairs(GuiRefs.Viewport:GetChildren()) do
                if not child:IsA("Camera") then child:Destroy() end
            end
        end
        PreviewModel = nil
    end

    local function updatePreview(weaponName, skinName)
        clearPreview()
        if not GuiRefs.Viewport or not weaponName then return end
        local source = getWeaponModel(weaponName)
        if not source then return end
        local clone = source:Clone()
        for _, desc in ipairs(clone:GetDescendants()) do
            if desc:IsA("Script") or desc:IsA("LocalScript") or desc:IsA("Sound") then
                desc:Destroy()
            elseif desc:IsA("BasePart") then
                desc.Anchored = true
                desc.CanCollide = false
                desc.CanQuery = false
                desc.CanTouch = false
            end
        end
        clone.Parent = GuiRefs.Viewport
        PreviewModel = clone
        if skinName and skinName ~= "Default" then
            local skinsRoot = getSkinsFolder()
            local skinFolder = skinsRoot and skinsRoot:FindFirstChild(weaponName)
                and skinsRoot[weaponName]:FindFirstChild(skinName)
            if skinFolder then applySurfaceAppearances(clone, skinFolder) end
        end
        if not PreviewCamera then
            PreviewCamera = Instance.new("Camera")
            PreviewCamera.Parent = GuiRefs.Viewport
            GuiRefs.Viewport.CurrentCamera = PreviewCamera
        end
        local cf, size = clone:GetBoundingBox()
        local maxDim = math.max(size.X, size.Y, size.Z)
        local dist = math.clamp(maxDim * 1.8, 3, 18)
        PreviewCamera.CFrame = CFrame.new(cf.Position + Vector3.new(dist * 0.55, dist * 0.25, dist * 0.55), cf.Position)
        if GuiRefs.PreviewLabel then
            GuiRefs.PreviewLabel.Text = "Skin Preview - " .. weaponName
        end
    end

    local function makeCard(parent, name, isSelected, onClick)
        local card = Instance.new("TextButton")
        card.Name = name
        card.BackgroundColor3 = isSelected and Theme.CardHover or Theme.Card
        card.BorderSizePixel = 0
        card.AutoButtonColor = false
        card.Text = ""
        card.Parent = parent
        corner(card, 6)
        stroke(card, isSelected and Theme.Selected or Theme.Border, isSelected and 1.5 or 1)
        local vp = Instance.new("ViewportFrame")
        vp.Size = UDim2.new(1, -8, 1, -22)
        vp.Position = UDim2.fromOffset(4, 4)
        vp.BackgroundColor3 = Color3.fromRGB(20, 24, 30)
        vp.BorderSizePixel = 0
        vp.Ambient = Color3.fromRGB(160, 160, 180)
        vp.LightColor = Color3.fromRGB(255, 255, 255)
        vp.Parent = card
        corner(vp, 4)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -4, 0, 16)
        label.Position = UDim2.new(0, 2, 1, -18)
        label.BackgroundTransparency = 1
        label.Font = Enum.Font.Gotham
        label.TextSize = 10
        label.TextColor3 = isSelected and Theme.Accent or Theme.TextDim
        label.TextTruncate = Enum.TextTruncate.AtEnd
        label.Text = name
        label.Parent = card
        card.MouseEnter:Connect(function()
            if not isSelected then
                TweenService:Create(card, TweenInfo.new(0.12), { BackgroundColor3 = Theme.CardHover }):Play()
            end
        end)
        card.MouseLeave:Connect(function()
            if not isSelected then
                TweenService:Create(card, TweenInfo.new(0.12), { BackgroundColor3 = Theme.Card }):Play()
            end
        end)
        card.MouseButton1Click:Connect(onClick)
        return card, vp
    end

    local function loadModelIntoViewport(vp, modelSource)
        if not vp or not modelSource then return end
        for _, c in ipairs(vp:GetChildren()) do
            if not c:IsA("Camera") then c:Destroy() end
        end
        local clone = modelSource:Clone()
        for _, d in ipairs(clone:GetDescendants()) do
            if d:IsA("Script") or d:IsA("LocalScript") or d:IsA("Sound") then
                d:Destroy()
            elseif d:IsA("BasePart") then
                d.Anchored = true
                d.CanCollide = false
            end
        end
        clone.Parent = vp
        local cam = vp:FindFirstChildOfClass("Camera")
        if not cam then
            cam = Instance.new("Camera")
            cam.Parent = vp
        end
        vp.CurrentCamera = cam
        local cf, size = clone:GetBoundingBox()
        local maxDim = math.max(size.X, size.Y, size.Z, 0.5)
        local dist = math.clamp(maxDim * 1.6, 2, 14)
        cam.CFrame = CFrame.new(cf.Position + Vector3.new(dist * 0.5, dist * 0.2, dist * 0.5), cf.Position)
    end

    local refreshSkinGrid, refreshWeaponGrid

    refreshSkinGrid = function()
        if not GuiRefs.SkinScroll then return end
        for _, child in ipairs(GuiRefs.SkinScroll:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        if not State.SelectedWeapon then return end
        local skins = listSkins(State.SelectedWeapon)
        local query = State.SearchQuery:lower()
        for i, skinName in ipairs(skins) do
            if query == "" or skinName:lower():find(query, 1, true) then
                local selected = (skinName == State.SelectedSkin)
                local card, vp = makeCard(GuiRefs.SkinScroll, skinName, selected, function()
                    State.SelectedSkin = skinName
                    applySkin(State.SelectedWeapon, skinName)
                    updatePreview(State.SelectedWeapon, skinName)
                    refreshSkinGrid()
                end)
                card.LayoutOrder = i
                local model = getWeaponModel(State.SelectedWeapon)
                if model then
                    task.defer(loadModelIntoViewport, vp, model)
                    if skinName ~= "Default" then
                        task.defer(function()
                            local skinsRoot = getSkinsFolder()
                            local sf = skinsRoot and skinsRoot:FindFirstChild(State.SelectedWeapon)
                                and skinsRoot[State.SelectedWeapon]:FindFirstChild(skinName)
                            if sf and vp then
                                local shown = vp:FindFirstChildWhichIsA("Model")
                                if shown then applySurfaceAppearances(shown, sf) end
                            end
                        end)
                    end
                end
            end
        end
    end

    refreshWeaponGrid = function()
        if not GuiRefs.WeaponScroll then return end
        for _, child in ipairs(GuiRefs.WeaponScroll:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        local weapons = listWeapons()
        local query = State.SearchQuery:lower()
        for i, weaponName in ipairs(weapons) do
            if query == "" or weaponName:lower():find(query, 1, true) then
                local selected = (weaponName == State.SelectedWeapon)
                local card, vp = makeCard(GuiRefs.WeaponScroll, weaponName, selected, function()
                    State.SelectedWeapon = weaponName
                    State.SelectedSkin = "Default"
                    updatePreview(weaponName, "Default")
                    refreshWeaponGrid()
                    refreshSkinGrid()
                end)
                card.LayoutOrder = i
                local model = getWeaponModel(weaponName)
                if model then task.defer(loadModelIntoViewport, vp, model) end
            end
        end
    end

    -- Build UI
    local screen = Instance.new("ScreenGui")
    screen.Name = "PDVibeSkinChanger"
    screen.ResetOnSpawn = false
    screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screen.DisplayOrder = 100
    pcall(function() screen.Parent = CoreGui end)
    if not screen.Parent then
        screen.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end

    local main = Instance.new("Frame")
    main.Name = "Main"
    main.Size = UDim2.fromOffset(720, 520)
    main.Position = UDim2.new(0.5, -360, 0.5, -260)
    main.BackgroundColor3 = Theme.Bg
    main.BorderSizePixel = 0
    main.Parent = screen
    corner(main, 10)
    stroke(main, Theme.Border, 1)

    local titleBar = Instance.new("Frame")
    titleBar.Size = UDim2.new(1, 0, 0, 36)
    titleBar.BackgroundColor3 = Theme.Panel
    titleBar.BorderSizePixel = 0
    titleBar.Parent = main
    corner(titleBar, 10)
    local titleCover = Instance.new("Frame")
    titleCover.Size = UDim2.new(1, 0, 0, 12)
    titleCover.Position = UDim2.new(0, 0, 1, -12)
    titleCover.BackgroundColor3 = Theme.Panel
    titleCover.BorderSizePixel = 0
    titleCover.Parent = titleBar

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -80, 1, 0)
    title.Position = UDim2.fromOffset(14, 0)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.TextSize = 15
    title.TextColor3 = Theme.Text
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Text = "SkinChanger"
    title.Parent = titleBar

    local searchBox = Instance.new("TextBox")
    searchBox.Size = UDim2.fromOffset(180, 24)
    searchBox.Position = UDim2.new(1, -230, 0.5, -12)
    searchBox.BackgroundColor3 = Theme.Card
    searchBox.BorderSizePixel = 0
    searchBox.Font = Enum.Font.Gotham
    searchBox.TextSize = 12
    searchBox.TextColor3 = Theme.Text
    searchBox.PlaceholderText = "Search..."
    searchBox.PlaceholderColor3 = Theme.TextDim
    searchBox.Text = ""
    searchBox.ClearTextOnFocus = false
    searchBox.Parent = titleBar
    corner(searchBox, 6)
    stroke(searchBox, Theme.Border, 1)
    pad(searchBox, 0, 8, 0, 8)

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.fromOffset(28, 24)
    closeBtn.Position = UDim2.new(1, -36, 0.5, -12)
    closeBtn.BackgroundColor3 = Theme.Card
    closeBtn.BorderSizePixel = 0
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 14
    closeBtn.TextColor3 = Theme.Text
    closeBtn.Text = "×"
    closeBtn.AutoButtonColor = false
    closeBtn.Parent = titleBar
    corner(closeBtn, 6)
    closeBtn.MouseButton1Click:Connect(function() screen.Enabled = false end)

    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            State.Dragging = true
            State.DragStart = input.Position
            State.StartPos = main.Position
        end
    end)
    titleBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            State.Dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if State.Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - State.DragStart
            main.Position = UDim2.new(
                State.StartPos.X.Scale, State.StartPos.X.Offset + delta.X,
                State.StartPos.Y.Scale, State.StartPos.Y.Offset + delta.Y
            )
        end
    end)

    local body = Instance.new("Frame")
    body.Size = UDim2.new(1, -20, 1, -50)
    body.Position = UDim2.fromOffset(10, 42)
    body.BackgroundTransparency = 1
    body.Parent = main

    local previewPanel = Instance.new("Frame")
    previewPanel.Size = UDim2.new(0.42, -6, 0.55, 0)
    previewPanel.BackgroundColor3 = Theme.Panel
    previewPanel.BorderSizePixel = 0
    previewPanel.Parent = body
    corner(previewPanel, 8)
    stroke(previewPanel, Theme.Border, 1)

    local previewLabel = Instance.new("TextLabel")
    previewLabel.Size = UDim2.new(1, -16, 0, 22)
    previewLabel.Position = UDim2.fromOffset(10, 6)
    previewLabel.BackgroundTransparency = 1
    previewLabel.Font = Enum.Font.GothamMedium
    previewLabel.TextSize = 13
    previewLabel.TextColor3 = Theme.Text
    previewLabel.TextXAlignment = Enum.TextXAlignment.Left
    previewLabel.Text = "Skin Preview"
    previewLabel.Parent = previewPanel
    GuiRefs.PreviewLabel = previewLabel

    local viewport = Instance.new("ViewportFrame")
    viewport.Size = UDim2.new(1, -16, 1, -36)
    viewport.Position = UDim2.fromOffset(8, 30)
    viewport.BackgroundColor3 = Color3.fromRGB(22, 26, 32)
    viewport.BorderSizePixel = 0
    viewport.Ambient = Color3.fromRGB(180, 180, 200)
    viewport.LightColor = Color3.fromRGB(255, 255, 255)
    viewport.LightDirection = Vector3.new(-1, -1, -1)
    viewport.Parent = previewPanel
    corner(viewport, 6)
    GuiRefs.Viewport = viewport

    local skinPanel = Instance.new("Frame")
    skinPanel.Size = UDim2.new(0.58, -6, 0.55, 0)
    skinPanel.Position = UDim2.new(0.42, 6, 0, 0)
    skinPanel.BackgroundColor3 = Theme.Panel
    skinPanel.BorderSizePixel = 0
    skinPanel.Parent = body
    corner(skinPanel, 8)
    stroke(skinPanel, Theme.Border, 1)

    local skinScroll = Instance.new("ScrollingFrame")
    skinScroll.Size = UDim2.new(1, -12, 1, -12)
    skinScroll.Position = UDim2.fromOffset(6, 6)
    skinScroll.BackgroundTransparency = 1
    skinScroll.BorderSizePixel = 0
    skinScroll.ScrollBarThickness = 3
    skinScroll.ScrollBarImageColor3 = Theme.Accent
    skinScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    skinScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    skinScroll.Parent = skinPanel
    GuiRefs.SkinScroll = skinScroll
    local skinGrid = Instance.new("UIGridLayout")
    skinGrid.CellSize = UDim2.fromOffset(72, 80)
    skinGrid.CellPadding = UDim2.fromOffset(6, 6)
    skinGrid.FillDirection = Enum.FillDirection.Horizontal
    skinGrid.HorizontalAlignment = Enum.HorizontalAlignment.Left
    skinGrid.SortOrder = Enum.SortOrder.LayoutOrder
    skinGrid.Parent = skinScroll
    pad(skinScroll, 4, 4, 4, 4)

    local weaponPanel = Instance.new("Frame")
    weaponPanel.Size = UDim2.new(1, 0, 0.45, -8)
    weaponPanel.Position = UDim2.new(0, 0, 0.55, 8)
    weaponPanel.BackgroundColor3 = Theme.Panel
    weaponPanel.BorderSizePixel = 0
    weaponPanel.Parent = body
    corner(weaponPanel, 8)
    stroke(weaponPanel, Theme.Border, 1)

    local weaponScroll = Instance.new("ScrollingFrame")
    weaponScroll.Size = UDim2.new(1, -12, 1, -12)
    weaponScroll.Position = UDim2.fromOffset(6, 6)
    weaponScroll.BackgroundTransparency = 1
    weaponScroll.BorderSizePixel = 0
    weaponScroll.ScrollBarThickness = 3
    weaponScroll.ScrollBarImageColor3 = Theme.Accent
    weaponScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    weaponScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    weaponScroll.Parent = weaponPanel
    GuiRefs.WeaponScroll = weaponScroll
    local weaponGrid = Instance.new("UIGridLayout")
    weaponGrid.CellSize = UDim2.fromOffset(78, 78)
    weaponGrid.CellPadding = UDim2.fromOffset(6, 6)
    weaponGrid.FillDirection = Enum.FillDirection.Horizontal
    weaponGrid.HorizontalAlignment = Enum.HorizontalAlignment.Left
    weaponGrid.SortOrder = Enum.SortOrder.LayoutOrder
    weaponGrid.Parent = weaponScroll
    pad(weaponScroll, 4, 4, 4, 4)

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        State.SearchQuery = searchBox.Text or ""
        refreshWeaponGrid()
        refreshSkinGrid()
    end)

    task.spawn(function()
        while screen and screen.Parent do
            if State.UnlockAll then unlockAllSkins() end
            task.wait(2)
        end
    end)

    RunService.RenderStepped:Connect(function(dt)
        if not screen.Parent then return end
        if PreviewModel and PreviewModel.Parent and PreviewCamera then
            local cf = PreviewModel:GetBoundingBox()
            local current = PreviewCamera.CFrame
            local pivot = cf.Position
            local offset = current.Position - pivot
            local rotated = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), dt * 0.4) * offset
            PreviewCamera.CFrame = CFrame.new(pivot + rotated, pivot)
        end
    end)

    task.defer(function()
        unlockAllSkins()
        local weapons = listWeapons()
        if #weapons > 0 then
            State.SelectedWeapon = weapons[1]
            State.SelectedSkin = "Default"
            updatePreview(State.SelectedWeapon, "Default")
        end
        refreshWeaponGrid()
        refreshSkinGrid()
    end)

    Library:Notification("Skin Changer opened!", 2, Color3.fromRGB(0, 255, 0))
end

MiscSection:Button({
    Name = "Open Skin Changer",
    Callback = function()
        local ok, err = pcall(openSkinChanger)
        if not ok then
            Library:Notification("Skin Changer error: " .. tostring(err), 4, Color3.fromRGB(255, 0, 0))
        end
    end
})
MiscSection:Label({ Name = "Preview grid UI + unlock-all + ChangeSkin spoof", Alignment = "Left" })

-- Movement
MoveSection:Toggle({
    Name = "Speed",
    Default = false,
    Flag = "SpeedEnabled",
    Callback = function(val)
        MovementSettings.SpeedEnabled = val
        if val then startSpeed() else stopSpeed() end
    end
})

MoveSection:Slider({
    Name = "Speed Multiplier",
    Min = 1,
    Max = 30,
    Default = 9,
    Decimals = 1,
    Flag = "SpeedValue",
    Callback = function(val)
        MovementSettings.Speed = val
    end
})

MoveSection:Toggle({
    Name = "Position Lock (anti-fling)",
    Default = false,
    Flag = "PositionLock",
    Callback = function(val)
        MovementSettings.PositionLock = val
        if val then startLock() else stopLock() end
    end
})
MoveSection:Label({ Name = "Lock snaps back if displaced >15 studs", Alignment = "Left" })

-- Character (wallhack.rbx misc port)
CharSection:Toggle({
    Name = "Speedhack (WalkSpeed)",
    Default = false,
    Flag = "CharSpeedHack",
    Callback = function(Value)
        CharacterSettings.SpeedHackEnabled = Value
    end
})
CharSection:Slider({
    Name = "Walk Speed",
    Min = 10,
    Max = 22,
    Default = 18.2,
    Decimals = 0.1,
    Flag = "CharWalkSpeed",
    Callback = function(Value)
        CharacterSettings.SpeedHackSpeed = Value
    end
})
CharSection:Toggle({
    Name = "Third Person",
    Default = false,
    Flag = "CharThirdPerson",
    Callback = function(Value)
        ThirdPersonSettings.Enabled = Value
        if not Value then
            LocalPlayer.CameraMaxZoomDistance = tp_original.CameraMaxZoomDistance or 128
            LocalPlayer.CameraMinZoomDistance = tp_original.CameraMinZoomDistance or 0.5
            LocalPlayer.CameraMode = tp_original.CameraMode or Enum.CameraMode.Classic
        end
    end
})
CharSection:Slider({
    Name = "Third Person Distance",
    Min = 0,
    Max = 50,
    Default = 10,
    Decimals = 1,
    Flag = "CharTPDistance",
    Callback = function(Value)
        ThirdPersonSettings.Distance = Value
    end
})
CharSection:Toggle({
    Name = "Jesus (walk on water)",
    Default = false,
    Flag = "CharJesus",
    Callback = function(Value)
        CharacterSettings.JesusEnabled = Value
        if not Value and _G._NexviJesusPart then
            pcall(function() _G._NexviJesusPart:Destroy() end)
            _G._NexviJesusPart = nil
        end
    end
})
CharSection:Toggle({
    Name = "Spiderman Mode",
    Default = false,
    Flag = "CharSpiderman",
    Callback = function(Value)
        CharacterSettings.SpidermanEnabled = Value
    end
})
CharSection:Slider({
    Name = "Climb Speed",
    Min = 8,
    Max = 60,
    Default = 26,
    Decimals = 1,
    Flag = "CharClimbSpeed",
    Callback = function(Value)
        CharacterSettings.SpidermanSpeed = Value
    end
})
CharSection:Label({ Name = "Spiderman: hold W into a wall to climb", Alignment = "Left" })


-- Bury / Underground (Misc left)
BurySection:Toggle({
    Name = "Enable Bury",
    Default = false,
    Flag = "BuryEnabled",
    Callback = function(Value)
        BurySettings.Enabled = Value
        if Value then startBury() else stopBury() end
        Library:Notification("Bury " .. (Value and "ON" or "OFF"), 2, Color3.fromRGB(180, 140, 80))
    end
})

BurySection:Slider({
    Name = "Burial Depth",
    Min = -5,
    Max = 0,
    Default = -1,
    Decimals = 0.1,
    Flag = "BuryDepth",
    Callback = function(Value)
        BurySettings.Depth = Value
    end
})

BurySection:Slider({
    Name = "Jump Height",
    Min = 1,
    Max = 12,
    Default = 4,
    Decimals = 0.1,
    Flag = "BuryJumpHeight",
    Callback = function(Value)
        BurySettings.JumpHeight = Value
    end
})

BurySection:Slider({
    Name = "Jump Duration",
    Min = 0.1,
    Max = 1.5,
    Default = 0.4,
    Decimals = 0.05,
    Flag = "BuryJumpDuration",
    Callback = function(Value)
        BurySettings.JumpDuration = Value
    end
})

BurySection:Toggle({
    Name = "Peek Hands / Head",
    Default = true,
    Flag = "BuryPeekHands",
    Callback = function(Value)
        BurySettings.PeekHands = Value
    end
})

BurySection:Label({ Name = "AlignPosition floor track + selective collision", Alignment = "Left" })

-- Desync controls
DesyncSection:Toggle({
    Name = "Enable Desync",
    Default = false,
    Flag = "DesyncEnabled",
    Callback = function(Value)
        DesyncSettings.Enabled = Value
        if Value then
            desync_turned_on = true
        else
            real_CFrame = nil
        end
        Library:Notification("Desync " .. (Value and "ON" or "OFF"), 2, Color3.fromRGB(0, 200, 255))
    end
})

DesyncSection:Toggle({
    Name = "Visualize Ghost",
    Default = true,
    Flag = "DesyncVisualize",
    Callback = function(Value)
        DesyncSettings.Visualize = Value
    end
})

DesyncSection:Label({ Name = "Ghost Color", Alignment = "Left" }):Colorpicker({
    Name = "Ghost Color",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "DesyncVisualizeColor",
    Callback = function(Value)
        DesyncSettings.VisualizeColor = Value
    end
})

DesyncSection:Slider({
    Name = "Ghost Transparency",
    Min = 0,
    Max = 1,
    Default = 0.5,
    Decimals = 0.01,
    Flag = "DesyncTransparency",
    Callback = function(Value)
        DesyncSettings.Transparency = Value
    end
})

DesyncSection:Slider({
    Name = "X Offset",
    Min = -50,
    Max = 50,
    Default = 0,
    Decimals = 0.1,
    Flag = "DesyncXOffset",
    Callback = function(Value)
        DesyncSettings.XOffset = Value
    end
})

DesyncSection:Slider({
    Name = "Y Offset",
    Min = -50,
    Max = 50,
    Default = 0,
    Decimals = 0.1,
    Flag = "DesyncYOffset",
    Callback = function(Value)
        DesyncSettings.YOffset = Value
    end
})

DesyncSection:Slider({
    Name = "Z Offset",
    Min = -50,
    Max = 50,
    Default = 0,
    Decimals = 0.1,
    Flag = "DesyncZOffset",
    Callback = function(Value)
        DesyncSettings.ZOffset = Value
    end
})

DesyncSection:Slider({
    Name = "X Rotate (rad)",
    Min = -3.14,
    Max = 3.14,
    Default = 0,
    Decimals = 0.01,
    Flag = "DesyncXRotate",
    Callback = function(Value)
        DesyncSettings.XRotate = Value
    end
})

DesyncSection:Slider({
    Name = "Y Rotate (rad)",
    Min = -3.14,
    Max = 3.14,
    Default = 0,
    Decimals = 0.01,
    Flag = "DesyncYRotate",
    Callback = function(Value)
        DesyncSettings.YRotate = Value
    end
})

DesyncSection:Slider({
    Name = "Z Rotate (rad)",
    Min = -3.14,
    Max = 3.14,
    Default = 0,
    Decimals = 0.01,
    Flag = "DesyncZRotate",
    Callback = function(Value)
        DesyncSettings.ZRotate = Value
    end
})

DesyncSection:Toggle({
    Name = "Random Rotation",
    Default = false,
    Flag = "DesyncRandomRotation",
    Callback = function(Value)
        DesyncSettings.RandomRotation = Value
    end
})

DesyncSection:Toggle({
    Name = "Random Position",
    Default = false,
    Flag = "DesyncRandomPosition",
    Callback = function(Value)
        DesyncSettings.RandomPosition = Value
    end
})

DesyncSection:Slider({
    Name = "Random Pos Range",
    Min = 1,
    Max = 30,
    Default = 5,
    Decimals = 0.1,
    Flag = "DesyncRandomPosRange",
    Callback = function(Value)
        DesyncSettings.RandomPositionRange = Value
    end
})

DesyncSection:Toggle({
    Name = "Force Velocity",
    Default = false,
    Flag = "DesyncVelocity",
    Callback = function(Value)
        DesyncSettings.Velocity = Value
    end
})

DesyncSection:Slider({
    Name = "Velocity X",
    Min = -100,
    Max = 100,
    Default = 0,
    Decimals = 1,
    Flag = "DesyncVelocityX",
    Callback = function(Value)
        DesyncSettings.VelocityX = Value
    end
})

DesyncSection:Slider({
    Name = "Velocity Y",
    Min = -100,
    Max = 100,
    Default = 0,
    Decimals = 1,
    Flag = "DesyncVelocityY",
    Callback = function(Value)
        DesyncSettings.VelocityY = Value
    end
})

DesyncSection:Slider({
    Name = "Velocity Z",
    Min = -100,
    Max = 100,
    Default = 0,
    Decimals = 1,
    Flag = "DesyncVelocityZ",
    Callback = function(Value)
        DesyncSettings.VelocityZ = Value
    end
})

DesyncSection:Label({ Name = "Toggle Keybind", Alignment = "Left" }):Keybind({
    Name = "Desync Keybind",
    Mode = "Toggle",
    Default = Enum.KeyCode.B,
    Flag = "DesyncToggleKey",
    Callback = function()
        local flag = Library.Flags and Library.Flags["DesyncToggleKey"]
        if flag and flag.Key then
            DesyncSettings.ToggleKey = flag.Key
        end
    end
})

DesyncSection:Label({ Name = "Heartbeat CFrame write + RenderStepped restore", Alignment = "Left" })

ViewerSection:Toggle({
    Name = "Inventory Viewer",
    Default = false,
    Flag = "InventoryViewer",
    Callback = function(state)
        if state then
            EnableInventoryViewer()
        else
            DisableInventoryViewer()
        end
    end
})
ViewerSection:Label({ Name = "Shows closest player's inventory slots", Alignment = "Left" })

--======= SETTINGS PAGE =======--
local MenuSection = Pages.Settings:Section({ Name = "Menu", Side = 1 })
local ThemeSection = Pages.Settings:Section({ Name = "Theme", Side = 2 })
local ConfigSection = Pages.Settings:Section({ Name = "Configs", Side = 1 })

MenuSection:Label({ Name = "Menu Keybind", Alignment = "Left" }):Keybind({
    Name = "Menu Keybind",
    Mode = "Toggle",
    Default = Enum.KeyCode.RightShift,
    Flag = "MenuKeybind",
    Callback = function()
        if Library.MenuKeybind then
            Library.MenuKeybind = Library.Flags["MenuKeybind"] and Library.Flags["MenuKeybind"].Key or Enum.KeyCode.RightShift
        end
    end
})

-- Theme colorpickers (no Alpha flag)
local themeKeys = {
    "Background", "Inline", "Page Background", "Border", "Outline",
    "Accent", "Element", "Hovered Element", "Text", "Text Border"
}
for _, themeName in ipairs(themeKeys) do
    local defaultColor = Library.Theme[themeName]
    if typeof(defaultColor) == "Color3" then
        ThemeSection:Label({ Name = themeName, Alignment = "Left" }):Colorpicker({
            Name = themeName,
            Default = defaultColor,
            Flag = "Theme_" .. themeName,
            Callback = function(Color)
                Library.Theme[themeName] = Color
                Library:ChangeTheme(themeName, Color)
            end
        })
    end
end


--======= CONFIG SERIALIZATION =======--
local HttpService = game:GetService("HttpService")

local function serializeValue(v)
    local t = typeof(v)
    if t == "Color3" then
        return { __t = "Color3", R = v.R, G = v.G, B = v.B }
    elseif t == "EnumItem" then
        return { __t = "EnumItem", EnumType = tostring(v.EnumType), Name = v.Name }
    elseif t == "table" then
        local out = {}
        for k, val in pairs(v) do
            out[tostring(k)] = serializeValue(val)
        end
        return out
    elseif t == "number" or t == "string" or t == "boolean" then
        return v
    end
    return nil
end

local function deserializeValue(v)
    if type(v) ~= "table" then return v end
    if v.__t == "Color3" then
        return Color3.new(v.R or 0, v.G or 0, v.B or 0)
    elseif v.__t == "EnumItem" then
        local et = Enum[v.EnumType]
        if et then return et[v.Name] end
        return nil
    end
    local out = {}
    for k, val in pairs(v) do
        out[k] = deserializeValue(val)
    end
    return out
end

local function deepMerge(dst, src)
    if type(src) ~= "table" then return end
    for k, v in pairs(src) do
        if type(v) == "table" and type(dst[k]) == "table" and v.__t == nil then
            deepMerge(dst[k], v)
        else
            dst[k] = v
        end
    end
end

local function buildConfigPayload()
    -- Full settings dump (wallhack SaveManager style completeness)
    return {
        Version = 2,
        ESPSettings          = serializeValue(ESPSettings),
        AimSettings          = serializeValue(AimSettings),
        TargetLineSettings   = serializeValue(TargetLineSettings),
        HitmarkerSettings    = serializeValue(HitmarkerSettings),
        MovementSettings     = serializeValue(MovementSettings),
        CharacterSettings    = serializeValue(CharacterSettings),
        BurySettings         = serializeValue(BurySettings),
        AiEspSettings        = serializeValue(AiEspSettings),
        DesyncSettings       = serializeValue(DesyncSettings),
        NoVisorSettings      = serializeValue(NoVisorSettings),
        RageSettings         = serializeValue(RageSettings),
        TriggerSettings      = serializeValue(TriggerSettings),
        AntiAimSettings      = serializeValue(AntiAimSettings),
        GunModSettings       = serializeValue(GunModSettings),
        MeleeSettings        = serializeValue(MeleeSettings),
        GrenadeSettings      = serializeValue(GrenadeSettings),
        HitFeedbackSettings  = serializeValue(HitFeedbackSettings),
        HitscanSettings = serializeValue({
            Enabled = HitscanSettings.Enabled,
            Range = HitscanSettings.Range,
            Multiscan = HitscanSettings.Multiscan,
            Parts = HitscanSettings.Parts,
            Ticking = HitscanSettings.Ticking,
            TickValue = HitscanSettings.TickValue,
        }),
        ManipulationSettings = serializeValue({
            Enabled = ManipulationSettings.Enabled,
            Distance = ManipulationSettings.Distance,
            Duration = ManipulationSettings.Duration,
            AutoPeek = ManipulationSettings.AutoPeek,
        }),
        ThirdPersonSettings = serializeValue({
            Enabled = ThirdPersonSettings.Enabled,
            Distance = ThirdPersonSettings.Distance,
            LockBody = ThirdPersonSettings.LockBody,
            ZoomFade = ThirdPersonSettings.ZoomFade,
            FadeSpeed = ThirdPersonSettings.FadeSpeed,
            FadeTarget = ThirdPersonSettings.FadeTarget,
        }),
        InstaHit = {
            Enabled = instaHitEnabled,
            Method  = instaHitMethod,
        },
        GunMods = {
            NoRecoil = noRecoilEnabled,
            NoSpread = noSpreadEnabled,
        },
        LibraryFlags = (function()
            local ok, encoded = pcall(function() return Library:GetConfig() end)
            if ok and type(encoded) == "string" then
                local ok2, decoded = pcall(function() return HttpService:JSONDecode(encoded) end)
                if ok2 and type(decoded) == "table" then return decoded end
            end
            return {}
        end)(),
    }
end

local function applyConfigPayload(data)
    if type(data) ~= "table" then return end

    if data.ESPSettings then
        deepMerge(ESPSettings, deserializeValue(data.ESPSettings))
    end
    if data.AimSettings then
        deepMerge(AimSettings, deserializeValue(data.AimSettings))
    end
    if data.TargetLineSettings then
        deepMerge(TargetLineSettings, deserializeValue(data.TargetLineSettings))
    end
    if data.HitmarkerSettings then
        deepMerge(HitmarkerSettings, deserializeValue(data.HitmarkerSettings))
    end
    if data.AiEspSettings then
        deepMerge(AiEspSettings, deserializeValue(data.AiEspSettings))
    end
    if data.DesyncSettings then
        deepMerge(DesyncSettings, deserializeValue(data.DesyncSettings))
    end
    if data.HitscanSettings then
        local hs = deserializeValue(data.HitscanSettings)
        if type(hs) == "table" then
            if hs.Enabled ~= nil then HitscanSettings.Enabled = hs.Enabled end
            if hs.Range ~= nil then HitscanSettings.Range = hs.Range end
            if hs.Multiscan ~= nil then HitscanSettings.Multiscan = hs.Multiscan end
            if type(hs.Parts) == "table" then HitscanSettings.Parts = hs.Parts end
            if hs.Ticking ~= nil then HitscanSettings.Ticking = hs.Ticking end
            if hs.TickValue ~= nil then HitscanSettings.TickValue = hs.TickValue end
        end
    end
    if data.ManipulationSettings then
        local ms = deserializeValue(data.ManipulationSettings)
        if type(ms) == "table" then
            if ms.Enabled ~= nil then ManipulationSettings.Enabled = ms.Enabled end
            if ms.Distance ~= nil then ManipulationSettings.Distance = ms.Distance end
            if ms.Duration ~= nil then ManipulationSettings.Duration = ms.Duration end
            if ms.AutoPeek ~= nil then ManipulationSettings.AutoPeek = ms.AutoPeek end
        end
    end
    if data.ThirdPersonSettings then
        local tp = deserializeValue(data.ThirdPersonSettings)
        if type(tp) == "table" then
            if tp.Enabled ~= nil then ThirdPersonSettings.Enabled = tp.Enabled end
            if tp.Distance ~= nil then ThirdPersonSettings.Distance = tp.Distance end
            if tp.LockBody ~= nil then ThirdPersonSettings.LockBody = tp.LockBody end
            if tp.ZoomFade ~= nil then ThirdPersonSettings.ZoomFade = tp.ZoomFade end
            if tp.FadeSpeed ~= nil then ThirdPersonSettings.FadeSpeed = tp.FadeSpeed end
            if tp.FadeTarget ~= nil then ThirdPersonSettings.FadeTarget = tp.FadeTarget end
        end
    end
    if data.MovementSettings then
        deepMerge(MovementSettings, deserializeValue(data.MovementSettings))
        if MovementSettings.SpeedEnabled then startSpeed() else stopSpeed() end
        if MovementSettings.PositionLock then startLock() else stopLock() end
    end
    if data.BurySettings then
        deepMerge(BurySettings, deserializeValue(data.BurySettings))
        if BurySettings.Enabled then startBury() else stopBury() end
    end
    if data.CharacterSettings then
        deepMerge(CharacterSettings, deserializeValue(data.CharacterSettings))
    end
    if data.NoVisorSettings then
        deepMerge(NoVisorSettings, deserializeValue(data.NoVisorSettings))
    end
    if data.RageSettings then
        deepMerge(RageSettings, deserializeValue(data.RageSettings))
    end
    if data.TriggerSettings then
        deepMerge(TriggerSettings, deserializeValue(data.TriggerSettings))
    end
    if data.AntiAimSettings then
        deepMerge(AntiAimSettings, deserializeValue(data.AntiAimSettings))
    end
    if data.GunModSettings then
        deepMerge(GunModSettings, deserializeValue(data.GunModSettings))
    end
    if data.MeleeSettings then
        deepMerge(MeleeSettings, deserializeValue(data.MeleeSettings))
    end
    if data.GrenadeSettings then
        deepMerge(GrenadeSettings, deserializeValue(data.GrenadeSettings))
    end
    if data.HitFeedbackSettings then
        deepMerge(HitFeedbackSettings, deserializeValue(data.HitFeedbackSettings))
    end
    if data.MovementSettings then
        deepMerge(MovementSettings, deserializeValue(data.MovementSettings))
    end
    if data.BurySettings then
        deepMerge(BurySettings, deserializeValue(data.BurySettings))
    end


    if data.ViewmodelSettings then
        deepMerge(ViewmodelSettings, deserializeValue(data.ViewmodelSettings))
    end
    if data.WorldMods then
        deepMerge(WorldMods, deserializeValue(data.WorldMods))
        pcall(updateWorldMods)
    end

    if data.InstaHit then
        instaHitEnabled = data.InstaHit.Enabled == true
        if type(data.InstaHit.Method) == "string" then
            instaHitMethod = data.InstaHit.Method
        end
    end
    if data.GunMods then
        noRecoilEnabled = data.GunMods.NoRecoil == true
        noSpreadEnabled = data.GunMods.NoSpread == true
    end

    -- Apply Library flags so every UI Callback fires (same path Silent Aim uses)
    if type(data.LibraryFlags) == "table" and Library and Library.SetFlags then
        for flag, value in pairs(data.LibraryFlags) do
            local setter = Library.SetFlags[flag]
            if setter then
                pcall(function()
                    if type(value) == "table" and value.Key then
                        setter(value)
                    elseif type(value) == "table" and value.Color then
                        setter(value.Color, value.Alpha)
                    else
                        setter(value)
                    end
                end)
            end
        end
    end

    for _, p in ipairs(Players:GetPlayers()) do
        if p.Character then
            removeESP(p)
            if shouldShow(p) then applyESP(p, p.Character) end
        end
    end
    if _G._AiEspRefresh then _G._AiEspRefresh() end

    for _, d in pairs(espData) do
        if d.highlight then
            d.highlight.FillColor = ESPSettings.Color
            d.highlight.OutlineColor = ESPSettings.Color
            d.highlight.FillTransparency = ESPSettings.FillTransparency
            d.highlight.Enabled = ESPSettings.Enabled
        end
        if d.label then
            d.label.TextColor3 = ESPSettings.Color
            d.label.Font = ESPSettings.NameFont
        end
        if d.skeletonLines then
            for _, e in pairs(d.skeletonLines) do
                if e.line then
                    e.line.Color3 = ESPSettings.SkeletonColor
                    e.line.Thickness = ESPSettings.SkeletonThickness
                    e.line.Visible = ESPSettings.SkeletonEnabled
                end
            end
        end
    end
end

-- Custom config system
local function GetConfigList()
    local list = {}
    pcall(function()
        if isfolder(ConfigFolder) then
            for _, file in ipairs(listfiles(ConfigFolder)) do
                local name = file:match("([^/\\]+)%.json$")
                if name then table.insert(list, name) end
            end
        end
    end)
    table.sort(list)
    return list
end

ConfigSection:Textbox({
    Name = "Config Name",
    Default = "default",
    Placeholder = "Name...",
    Flag = "ConfigName",
    Callback = function(Value)
        CurrentConfig = Value
    end
})

ConfigSection:Button({
    Name = "Save Config",
    Callback = function()
        local name = CurrentConfig
        if not name or name == "" then
            Library:Notification("Enter a config name", 2, Color3.fromRGB(255, 0, 0))
            return
        end
        local ok, err = pcall(function()
            writefile(
                ConfigFolder .. "/" .. name .. ".json",
                HttpService:JSONEncode(buildConfigPayload())
            )
        end)
        if ok then
            Library:Notification("Saved config: " .. name, 2, Color3.fromRGB(0, 255, 0))
        else
            Library:Notification("Save failed: " .. tostring(err), 3, Color3.fromRGB(255, 0, 0))
        end
    end
})

ConfigSection:Button({
    Name = "Load Config",
    Callback = function()
        local name = CurrentConfig
        if not name or name == "" then
            Library:Notification("Enter a config name", 2, Color3.fromRGB(255, 0, 0))
            return
        end
        local ok, content = pcall(function()
            return readfile(ConfigFolder .. "/" .. name .. ".json")
        end)
        if not ok or not content then
            Library:Notification("Config not found", 2, Color3.fromRGB(255, 0, 0))
            return
        end
        local ok2, data = pcall(function()
            return HttpService:JSONDecode(content)
        end)
        if not ok2 or type(data) ~= "table" then
            Library:Notification("Failed to parse config", 2, Color3.fromRGB(255, 0, 0))
            return
        end

        -- Primary: same path Silent Aim uses — Library:LoadConfig fires every Flag callback
        if type(data.LibraryFlags) == "table" then
            local okEnc, encoded = pcall(function() return HttpService:JSONEncode(data.LibraryFlags) end)
            if okEnc and encoded then
                pcall(function() Library:LoadConfig(encoded) end)
            end
        end

        -- Secondary: restore settings tables (covers anything without a Flag)
        applyConfigPayload(data)
        Library:Notification("Loaded config: " .. name, 2, Color3.fromRGB(0, 255, 0))
    end
})

ConfigSection:Button({
    Name = "Delete Config",
    Callback = function()
        local name = CurrentConfig
        if not name or name == "" then
            Library:Notification("Enter a config name", 2, Color3.fromRGB(255, 0, 0))
            return
        end
        local ok = pcall(function()
            delfile(ConfigFolder .. "/" .. name .. ".json")
        end)
        Library:Notification(
            ok and ("Deleted: " .. name) or "Delete failed",
            2,
            ok and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
        )
    end
})

ConfigSection:Button({
    Name = "Set As Autoload",
    Callback = function()
        local name = CurrentConfig
        if not name or name == "" then
            Library:Notification("Enter a config name", 2, Color3.fromRGB(255, 0, 0))
            return
        end
        local ok, err = pcall(function()
            writefile(ConfigFolder .. "/autoload.txt", name)
        end)
        if ok then
            Library:Notification("Autoload set: " .. name, 2, Color3.fromRGB(0, 255, 0))
        else
            Library:Notification("Autoload failed: " .. tostring(err), 3, Color3.fromRGB(255, 0, 0))
        end
    end
})

ConfigSection:Button({
    Name = "Clear Autoload",
    Callback = function()
        pcall(function() delfile(ConfigFolder .. "/autoload.txt") end)
        Library:Notification("Autoload cleared", 2, Color3.fromRGB(0, 255, 0))
    end
})

ConfigSection:Button({
    Name = "List Configs",
    Callback = function()
        local list = {}
        pcall(function()
            if listfiles then
                for _, path in ipairs(listfiles(ConfigFolder)) do
                    local name = path:match("([^/\\]+)%.json$")
                    if name then table.insert(list, name) end
                end
            end
        end)
        if #list == 0 then
            Library:Notification("No configs found", 2, Color3.fromRGB(255, 200, 0))
        else
            Library:Notification("Configs: " .. table.concat(list, ", "), 4, Color3.fromRGB(0, 200, 255))
        end
    end
})

ConfigSection:Label({ Name = "Autoload runs once on script start (wallhack style)", Alignment = "Left" })


ConfigSection:Button({
    Name = "Refresh List",
    Callback = function()
        Library:Notification(
            "Configs: " .. table.concat(GetConfigList(), ", "),
            3,
            Color3.fromRGB(0, 170, 255)
        )
    end
})

--======= CORE ESP LOGIC =======--
local boneConnectionsR15 = {
    {"Head", "UpperTorso"}, {"UpperTorso", "LowerTorso"},
    {"UpperTorso", "LeftUpperArm"}, {"LeftUpperArm", "LeftLowerArm"}, {"LeftLowerArm", "LeftHand"},
    {"UpperTorso", "RightUpperArm"}, {"RightUpperArm", "RightLowerArm"}, {"RightLowerArm", "RightHand"},
    {"LowerTorso", "LeftUpperLeg"}, {"LeftUpperLeg", "LeftLowerLeg"}, {"LeftLowerLeg", "LeftFoot"},
    {"LowerTorso", "RightUpperLeg"}, {"RightUpperLeg", "RightLowerLeg"}, {"RightLowerLeg", "RightFoot"},
}
local boneConnectionsR6 = {
    {"Head", "Torso"}, {"Torso", "Left Arm"}, {"Torso", "Right Arm"}, {"Torso", "Left Leg"}, {"Torso", "Right Leg"},
}

function shouldShow(player)
    if player == LocalPlayer then return false end
    if ESPSettings.TeamCheck and player.Team and LocalPlayer.Team and player.Team == LocalPlayer.Team then
        return false
    end
    return true
end

function removeESP(player)
    local data = espData[player]
    if not data then return end
    if data.highlight then data.highlight:Destroy() end
    if data.billboard then data.billboard:Destroy() end
    if data.skeletonLines then
        for _, entry in pairs(data.skeletonLines) do
            if entry.line then entry.line:Destroy() end
        end
    end
    if data.box then
        for _, drawing in pairs(data.box) do
            if drawing and drawing.Remove then drawing:Remove() end
        end
    end
    if data.glow then
        for _, drawing in pairs(data.glow) do
            if drawing and drawing.Remove then drawing:Remove() end
        end
    end
    if data.fill then
        data.fill:Remove()
    end
    if data.outline then
        for _, drawing in pairs(data.outline) do
            if drawing and drawing.Remove then drawing:Remove() end
        end
    end
    if data.healthBg and data.healthBg.Remove then data.healthBg:Remove() end
    if data.healthBar and data.healthBar.Remove then data.healthBar:Remove() end
    if data.nameText and data.nameText.Remove then data.nameText:Remove() end
    if data.distText and data.distText.Remove then data.distText:Remove() end
    espData[player] = nil
end

local function createSkeleton(character)
    local lines = {}
    local isR15 = character:FindFirstChild("UpperTorso") ~= nil
    local connections = isR15 and boneConnectionsR15 or boneConnectionsR6
    for _, pair in ipairs(connections) do
        local p1 = character:FindFirstChild(pair[1])
        local p2 = character:FindFirstChild(pair[2])
        if p1 and p2 then
            local line = Instance.new("LineHandleAdornment")
            line.Name = "SkeletonLine"
            line.Adornee = p1
            line.Thickness = ESPSettings.SkeletonThickness
            line.Color3 = ESPSettings.SkeletonColor
            line.AlwaysOnTop = true
            line.ZIndex = 10
            line.Visible = ESPSettings.SkeletonEnabled
            line.Parent = p1
            table.insert(lines, {line = line, part1 = p1, part2 = p2})
        end
    end
    return lines
end

local function createBoxDrawings()
    local box = {
        Top = Drawing.new("Line"),
        Bottom = Drawing.new("Line"),
        Left = Drawing.new("Line"),
        Right = Drawing.new("Line"),
    }
    local outline = {
        Top = Drawing.new("Line"),
        Bottom = Drawing.new("Line"),
        Left = Drawing.new("Line"),
        Right = Drawing.new("Line"),
    }
    local glow = {
        Top = Drawing.new("Line"),
        Bottom = Drawing.new("Line"),
        Left = Drawing.new("Line"),
        Right = Drawing.new("Line"),
    }
    local fill = Drawing.new("Square")
    local healthBg = Drawing.new("Square")
    local healthBar = Drawing.new("Square")
    local nameText = Drawing.new("Text")
    local distText = Drawing.new("Text")

    for _, line in pairs(box) do
        line.Visible = false
        line.Thickness = ESPSettings.BoxThickness or 1
        line.Color = ESPSettings.BoxColor
        line.ZIndex = 3
    end
    for _, line in pairs(outline) do
        line.Visible = false
        line.Thickness = (ESPSettings.BoxThickness or 1) + 1
        line.Color = Color3.new(0, 0, 0)
        line.ZIndex = 2
    end
    for _, line in pairs(glow) do
        line.Visible = false
        line.Thickness = ESPSettings.BoxGlowThickness or 3
        line.Color = ESPSettings.BoxGlowColor
        line.ZIndex = 1
    end
    fill.Visible = false
    fill.Filled = true
    fill.Thickness = 0
    fill.Color = ESPSettings.BoxColor
    fill.Transparency = ESPSettings.BoxFillTransparency or 0.7
    fill.ZIndex = 0

    healthBg.Visible = false
    healthBg.Filled = true
    healthBg.Color = Color3.new(0, 0, 0)
    healthBg.Transparency = 0.4
    healthBg.ZIndex = 4

    healthBar.Visible = false
    healthBar.Filled = true
    healthBar.Color = Color3.fromRGB(0, 255, 100)
    healthBar.ZIndex = 5

    for _, t in ipairs({nameText, distText}) do
        t.Visible = false
        t.Center = true
        t.Outline = true
        t.OutlineColor = Color3.new(0, 0, 0)
        t.Size = 13
        t.Font = Drawing.Fonts.Plex or 2
        t.Color = Color3.new(1, 1, 1)
        t.ZIndex = 6
    end

    return box, glow, fill, outline, healthBg, healthBar, nameText, distText
end

--======= ESP VISCHECK =======--
local espVisParams = RaycastParams.new()
espVisParams.FilterType = Enum.RaycastFilterType.Exclude
espVisParams.IgnoreWater = true

local function espIsVisible(character, aimPart)
    if not character then return false end
    local from = Camera.CFrame.Position
    local toPart = aimPart
        or character:FindFirstChild("Head")
        or character:FindFirstChild("HumanoidRootPart")
        or character:FindFirstChild("UpperTorso")
    if not toPart then return false end
    local filter = { LocalPlayer.Character, Camera, character }
    local noCol = workspace:FindFirstChild("NoCollision")
    if noCol then filter[#filter + 1] = noCol end
    espVisParams.FilterDescendantsInstances = filter
    local hit = workspace:Raycast(from, toPart.Position - from, espVisParams)
    if not hit then return true end
    return hit.Instance:IsDescendantOf(character)
end

local function espApplyColor(data, color)
    if data.highlight then
        data.highlight.FillColor = color
        data.highlight.OutlineColor = color
    end
    if data.label then
        data.label.TextColor3 = color
    end
    if data.skeletonLines then
        for _, entry in pairs(data.skeletonLines) do
            if entry.line then
                entry.line.Color3 = color
            end
        end
    end
    if data.box then
        for _, line in pairs(data.box) do
            if line then line.Color = color end
        end
    end
    if data.glow then
        for _, line in pairs(data.glow) do
            if line then line.Color = color end
        end
    end
    if data.fill then
        data.fill.Color = color
    end
    data._lastVisColor = color
end

function applyESP(player, character)
    if not shouldShow(player) then return end
    local head = character:WaitForChild("Head", 6)
    local root = character:WaitForChild("HumanoidRootPart", 6)
    if not head or not root then return end
    removeESP(player)
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Adornee = character
    highlight.FillColor = ESPSettings.Color
    highlight.OutlineColor = ESPSettings.Color
    highlight.FillTransparency = ESPSettings.FillTransparency
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Enabled = ESPSettings.Enabled
    highlight.Parent = character
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP_Label"
    billboard.Adornee = head
    billboard.Size = UDim2.fromOffset(220, 40)
    billboard.StudsOffset = Vector3.new(0, 2.8, 0)
    billboard.AlwaysOnTop = true
    billboard.Enabled = ESPSettings.Enabled
    billboard.Parent = character
    local label = Instance.new("TextLabel")
    label.Size = UDim2.fromScale(1, 1)
    label.BackgroundTransparency = 1
    label.TextColor3 = ESPSettings.Color
    label.TextStrokeTransparency = 0.2
    label.Font = ESPSettings.NameFont
    label.TextSize = 14
    label.Text = player.DisplayName
    label.Parent = billboard
    local skeletonLines = createSkeleton(character)
    local box, glow, fill, outline, healthBg, healthBar, nameText, distText = createBoxDrawings()
    nameText.Text = player.DisplayName or player.Name
    espData[player] = {
        highlight = highlight,
        billboard = billboard,
        label = label,
        root = root,
        skeletonLines = skeletonLines,
        box = box,
        glow = glow,
        fill = fill,
        outline = outline,
        healthBg = healthBg,
        healthBar = healthBar,
        nameText = nameText,
        distText = distText,
        character = character,
        humanoid = character:FindFirstChildOfClass("Humanoid"),
    }
end

local function setupPlayer(player)
    if player == LocalPlayer then return end
    player.CharacterAdded:Connect(function(character)
        task.wait(0.3)
        applyESP(player, character)
    end)
    player.CharacterRemoving:Connect(function()
        removeESP(player)
    end)
    if player.Character then
        applyESP(player, player.Character)
    end
end

-- ============================================================
--  INVENTORY VIEWER
-- ============================================================
local InvToggles = { InventoryViewer = false }
local closestPlayer = nil
local ItemSlotList = {
    [1] = {["Slot"] = "ItemHip1", ["Found"] = false},
    [2] = {["Slot"] = "ItemBack1", ["Found"] = false},
    [3] = {["Slot"] = "ItemBack2", ["Found"] = false},
    [4] = {["Slot"] = "ClothingHeadware", ["Found"] = false},
    [5] = {["Slot"] = "ClothingChestRig", ["Found"] = false},
    [6] = {["Slot"] = "ClothingGloves", ["Found"] = false},
    [7] = {["Slot"] = "ClothingMask", ["Found"] = false},
    [8] = {["Slot"] = "ClothingLegArmor", ["Found"] = false},
    [9] = {["Slot"] = "ClothingBackpack", ["Found"] = false},
}

local function CreateViewerGui()
    if CoreGui:FindFirstChild("ItemViewer") then return end
    local ScreenGui = Instance.new("ScreenGui")
    local Topbar = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local NameGui = Instance.new("TextLabel")
    local DistanceGui = Instance.new("TextLabel")
    ScreenGui.Name = "ItemViewer"
    ScreenGui.Parent = CoreGui
    Topbar.Name = "Topbar"
    Topbar.Parent = ScreenGui
    Topbar.AnchorPoint = Vector2.new(0.5, 0.5)
    Topbar.BackgroundTransparency = 1
    Topbar.Position = UDim2.new(0.5, 0, 0.06, 0)
    Topbar.Size = UDim2.new(0.75, 0, 0.11, 0)
    UIListLayout.Parent = Topbar
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.Padding = UDim.new(0.02, 0)
    NameGui.Name = "NameGui"
    NameGui.Parent = ScreenGui
    NameGui.BackgroundTransparency = 1
    NameGui.Position = UDim2.new(0.449, 0, 0.128, 0)
    NameGui.Size = UDim2.new(0.086, 0, 0.026, 0)
    NameGui.Font = Enum.Font.FredokaOne
    NameGui.Text = ""
    NameGui.TextColor3 = Color3.new(0, 0, 0)
    NameGui.TextScaled = true
    DistanceGui.Name = "DistanceGui"
    DistanceGui.Parent = ScreenGui
    DistanceGui.BackgroundTransparency = 1
    DistanceGui.Position = UDim2.new(0.449, 0, 0.156, 0)
    DistanceGui.Size = UDim2.new(0.086, 0, 0.026, 0)
    DistanceGui.Font = Enum.Font.FredokaOne
    DistanceGui.Text = ""
    DistanceGui.TextColor3 = Color3.new(0, 0, 0)
    DistanceGui.TextScaled = true
    for _, Info in pairs(ItemSlotList) do
        local ItemFrame = Instance.new("Frame")
        local ItemImage = Instance.new("ImageLabel")
        local InfoLabel = Instance.new("TextLabel")
        local UICorner = Instance.new("UICorner")
        local UICorner_2 = Instance.new("UICorner")
        local UIStroke = Instance.new("UIStroke")
        ItemFrame.Name = Info.Slot
        ItemFrame.Parent = Topbar
        ItemFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        ItemFrame.Size = UDim2.new(0.072, 0, 1, 0)
        ItemImage.Name = "ItemImage"
        ItemImage.Parent = ItemFrame
        ItemImage.BackgroundTransparency = 1
        ItemImage.Position = UDim2.new(0.07, 0, 0.05, 0)
        ItemImage.Size = UDim2.new(0.85, 0, 0.80, 0)
        UICorner.Parent = ItemImage
        UICorner_2.Parent = ItemFrame
        UIStroke.Parent = ItemFrame
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Thickness = 3
        InfoLabel.Name = "Info"
        InfoLabel.Parent = ItemFrame
        InfoLabel.BackgroundTransparency = 1
        InfoLabel.Position = UDim2.new(0.07, 0, 0.85, 0)
        InfoLabel.Size = UDim2.new(0.85, 0, 0.15, 0)
        InfoLabel.Font = Enum.Font.FredokaOne
        InfoLabel.TextColor3 = Color3.new(1, 1, 1)
        InfoLabel.TextScaled = true
        InfoLabel.Text = ""
        ItemImage.Image = ""
    end
end

local function DisableViewerGui()
    local gui = CoreGui:FindFirstChild("ItemViewer")
    if gui then gui:Destroy() end
end

RunService.RenderStepped:Connect(function()
    if not InvToggles.InventoryViewer then return end
    local ItemViewerGui = CoreGui:FindFirstChild("ItemViewer")
    if not ItemViewerGui then return end
    local Topbar = ItemViewerGui:FindFirstChild("Topbar")
    local NameGui = ItemViewerGui:FindFirstChild("NameGui")
    local DistanceGui = ItemViewerGui:FindFirstChild("DistanceGui")
    if not (Topbar and NameGui and DistanceGui) then return end
    closestPlayer = nil
    local shortest = math.huge
    local mousePos = UserInputService:GetMouseLocation()
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local char = player.Character
        if not char then continue end
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not root or not hum or hum.Health <= 0 then continue end
        local screenPos, onScreen = Camera:WorldToViewportPoint(root.Position)
        if onScreen then
            local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
            if dist < shortest then
                shortest = dist
                closestPlayer = char
            end
        end
    end
    if closestPlayer and closestPlayer:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character then
        local root = closestPlayer.HumanoidRootPart
        local screenPos, onScreen = Camera:WorldToViewportPoint(root.Position)
        if onScreen then
            local distance = math.floor((root.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
            local playerFolder = ReplicatedStorage:FindFirstChild("Players") and ReplicatedStorage.Players:FindFirstChild(closestPlayer.Name)
            local ItemsList = ReplicatedStorage:FindFirstChild("ItemsList")
            for _, Info in pairs(ItemSlotList) do Info.Found = false end
            if playerFolder and playerFolder:FindFirstChild("Inventory") then
                for _, Item in pairs(playerFolder.Inventory:GetChildren()) do
                    local slotAttr = Item:GetAttribute("Slot")
                    if slotAttr and Topbar:FindFirstChild(slotAttr) then
                        for _, Info in pairs(ItemSlotList) do
                            if Info.Slot == slotAttr then Info.Found = true break end
                        end
                        local ItemFrame = Topbar:FindFirstChild(slotAttr)
                        if ItemFrame then
                            if ItemsList then
                                local dbItem = ItemsList:FindFirstChild(Item.Name)
                                if dbItem and dbItem:FindFirstChild("ItemProperties") then
                                    local icon = dbItem.ItemProperties:FindFirstChild("ItemIcon")
                                    ItemFrame.ItemImage.Image = icon and icon.Image or ""
                                else
                                    ItemFrame.ItemImage.Image = ""
                                end
                            end
                            ItemFrame.Info.Text = Item.Name
                        end
                    end
                end
            end
            for _, Info in pairs(ItemSlotList) do
                if not Info.Found then
                    local ItemFrame = Topbar:FindFirstChild(Info.Slot)
                    if ItemFrame then
                        ItemFrame.ItemImage.Image = ""
                        ItemFrame.Info.Text = ""
                    end
                end
            end
            NameGui.Text = closestPlayer.Name
            DistanceGui.Text = "Distance: " .. distance
        else
            for _, ItemFrame in pairs(Topbar:GetChildren()) do
                if ItemFrame:IsA("Frame") then
                    ItemFrame.ItemImage.Image = ""
                    ItemFrame.Info.Text = ""
                end
            end
            NameGui.Text = ""
            DistanceGui.Text = ""
        end
    else
        for _, ItemFrame in pairs(Topbar:GetChildren()) do
            if ItemFrame:IsA("Frame") then
                ItemFrame.ItemImage.Image = ""
                ItemFrame.Info.Text = ""
            end
        end
        NameGui.Text = ""
        DistanceGui.Text = ""
    end
end)

function EnableInventoryViewer()
    InvToggles.InventoryViewer = true
    CreateViewerGui()
end
function DisableInventoryViewer()
    InvToggles.InventoryViewer = false
    DisableViewerGui()
end

-- ============================================================
--  FULL SILENT AIM + INSTA HIT
-- ============================================================
_G._StrixBulletHookState = {
    saEnabled  = false,
    saTarget   = nil,
    saFakePart = nil,
}
local silentAim = { targetPart = nil, fakePart = nil }
local active = false

local instaHitHooked = false
local instaHitTarget = nil -- fed from silent-aim target while RMB held

--======= HITSCAN RUNTIME (GHOST_HOOK Spilled[117]/[101]) =======--
local HITSCAN_OFFSETS = {
    Vector3.new( 0.5,  0,    0), Vector3.new(-0.5,  0,    0),
    Vector3.new( 0,    0,    0.5), Vector3.new( 0,    0,   -0.5),
    Vector3.new( 0,    0.5,  0), Vector3.new( 0,   -0.5,  0),
    Vector3.new( 0.5,  0.5,  0), Vector3.new( 0.5, -0.5,  0),
    Vector3.new(-0.5,  0.5,  0), Vector3.new(-0.5, -0.5,  0),
    Vector3.new( 0,    0.5,  0.5), Vector3.new( 0,   -0.5,  0.5),
    Vector3.new( 0,    0.5, -0.5), Vector3.new( 0,   -0.5, -0.5),
    Vector3.new( 1,    0,    0), Vector3.new(-1,    0,    0),
    Vector3.new( 0,    0,    1), Vector3.new( 0,    0,   -1),
    Vector3.new( 0,    1,    0), Vector3.new( 0,   -1,    0),
}

local hitscanRayParams = RaycastParams.new()
hitscanRayParams.FilterType = Enum.RaycastFilterType.Exclude
hitscanRayParams.CollisionGroup = "WeaponRay"
hitscanRayParams.IgnoreWater = true

local hitscanCache = {
    character = nil, scanPart = nil, range = nil, multiscan = nil, offset = nil,
}

local hitscanRestoreState = nil

local function hitscanBuildFilter()
    local list = {}
    if LocalPlayer.Character then list[#list + 1] = LocalPlayer.Character end
    if Camera then list[#list + 1] = Camera end
    local noCol = workspace:FindFirstChild("NoCollision")
    if noCol then list[#list + 1] = noCol end
    return list
end

local function hitscanResolveParts(character, fallbackPart)
    local out, seen = {}, {}
    if HitscanSettings.Multiscan and character then
        for k, v in pairs(HitscanSettings.Parts) do
            local name = (type(k) == "number" and type(v) == "string" and v)
                or (v == true and type(k) == "string" and k)
            if name and not seen[name] then
                local p = character:FindFirstChild(name, true)
                if p and p:IsA("BasePart") then
                    seen[name] = true
                    out[#out + 1] = p
                end
            end
        end
    end
    if #out == 0 and fallbackPart and fallbackPart:IsA("BasePart") then
        out[1] = fallbackPart
    end
    return out
end

local function hitscanCanSeeFrom(camPos, candidatePos, part, character)
    hitscanRayParams.FilterDescendantsInstances = hitscanBuildFilter()
    if workspace:Raycast(camPos, candidatePos - camPos, hitscanRayParams) then
        return false
    end
    local hit = workspace:Raycast(candidatePos, part.Position - candidatePos, hitscanRayParams)
    return hit ~= nil and hit.Instance ~= nil and character ~= nil
        and hit.Instance:IsDescendantOf(character)
end

local function hitscanIsVisible(camCF, character, targetPart)
    if not camCF or not character or not targetPart then return false end
    hitscanRayParams.FilterDescendantsInstances = hitscanBuildFilter()
    local origin = camCF.Position
    local hit = workspace:Raycast(origin, targetPart.Position - origin, hitscanRayParams)
    if not hit then return true end
    return hit.Instance:IsDescendantOf(character)
end

local function hitscanSolve(camPos, targetPart)
    local character = targetPart and targetPart.Parent
    if not character or typeof(camPos) ~= "Vector3" then
        return nil, nil
    end
    hitscanRayParams.FilterDescendantsInstances = hitscanBuildFilter()
    local range = math.clamp(tonumber(HitscanSettings.Range) or 4, 1, 8)
    local multi = HitscanSettings.Multiscan == true
    local parts = hitscanResolveParts(character, targetPart)

    local same = hitscanCache.character == character
        and hitscanCache.range == range
        and hitscanCache.multiscan == multi
        and hitscanCache.scanPart
        and hitscanCache.scanPart.Parent
        and hitscanCache.scanPart:IsDescendantOf(character)
        and hitscanCache.offset
    if same then
        local still = false
        for _, p in ipairs(parts) do
            if p == hitscanCache.scanPart then still = true break end
        end
        if still then
            local pos = (hitscanCache.scanPart.CFrame * CFrame.new(hitscanCache.offset * range)).Position
            if hitscanCanSeeFrom(camPos, pos, hitscanCache.scanPart, character) then
                return pos, hitscanCache.scanPart
            end
        end
    end

    for _, part in ipairs(parts) do
        local cf = part.CFrame
        for _, off in ipairs(HITSCAN_OFFSETS) do
            local candidate = (cf * CFrame.new(off * range)).Position
            if hitscanCanSeeFrom(camPos, candidate, part, character) then
                hitscanCache.character = character
                hitscanCache.scanPart = part
                hitscanCache.range = range
                hitscanCache.multiscan = multi
                hitscanCache.offset = off
                return candidate, part
            end
        end
    end

    hitscanCache.character = character
    hitscanCache.scanPart = nil
    hitscanCache.range = range
    hitscanCache.multiscan = multi
    hitscanCache.offset = nil
    return nil, nil
end

local function hitscanClear()
    HitscanSettings.Active = false
    HitscanSettings.Origin = nil
    HitscanSettings.TargetPart = nil
    HitscanSettings.OriginMethod = nil
    HitscanSettings._fireTick = nil
end

local function hitscanRestore(state, force)
    if not state then return end
    local root = state.root
    if root and root.Parent and (root.Position - state.replicated_cframe.Position).Magnitude <= 0.5 then
        root.CFrame = state.root_cframe
        root.AssemblyLinearVelocity = state.root_velocity
    end
    if force or hitscanRestoreState == state then
        hitscanRestoreState = nil
    end
end

pcall(function()
    RunService:BindToRenderStep("PinRetaHitscanCameraGuard", Enum.RenderPriority.Last.Value, function()
        hitscanRestore(hitscanRestoreState, true)
    end)
end)

local function hitscanOnFire()
    HitscanSettings._fireTick = tick()
end

local function hitscanApplySnap()
    if not HitscanSettings.Active or not HitscanSettings.Origin or not HitscanSettings.TargetPart then
        return
    end
    local fireTick = HitscanSettings._fireTick
    if type(fireTick) ~= "number" then return end

    local window = HitscanSettings.Ticking
        and math.clamp(tonumber(HitscanSettings.TickValue) or 0.03, 0.016, 0.15)
        or 0.03
    if tick() - fireTick > window then return end

    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local head = char and char:FindFirstChild("Head")
    local target = HitscanSettings.TargetPart
    if not Camera or not hrp or not target or not target.Parent then return end

    local replicated
    if HitscanSettings.OriginMethod == "manipulation" then
        if not head then return end
        replicated = hrp.CFrame + (HitscanSettings.Origin - head.Position)
    else
        replicated = CFrame.new(HitscanSettings.Origin, target.Position)
    end

    hitscanRestoreState = {
        camera = Camera,
        camera_cframe = Camera.CFrame,
        root = hrp,
        root_cframe = hrp.CFrame,
        root_velocity = hrp.AssemblyLinearVelocity,
        replicated_cframe = replicated,
        origin_method = HitscanSettings.OriginMethod,
    }
    -- hrp.CFrame = replicated  -- DISABLED: was teleporting on fire
end


--======= MANIPULATION RUNTIME (GHOST_HOOK Spilled[111]/[118]) =======--


--======= MANIPULATION / SERVER-SIDE CORNER PEEK =======--
-- Server sees peeked HRP; client view stays at origin (Heartbeat write + RenderStepped restore)

local manipIndicatorBg = Drawing.new("Square")
manipIndicatorBg.Filled = true
manipIndicatorBg.Thickness = 0
manipIndicatorBg.ZIndex = 50
manipIndicatorBg.Visible = false
manipIndicatorBg.Color = Color3.fromRGB(15, 15, 15)
manipIndicatorBg.Transparency = 0.35

local manipIndicatorFill = Drawing.new("Square")
manipIndicatorFill.Filled = true
manipIndicatorFill.Thickness = 0
manipIndicatorFill.ZIndex = 51
manipIndicatorFill.Visible = false

local manipIndicatorText = Drawing.new("Text")
manipIndicatorText.Center = true
manipIndicatorText.Outline = true
manipIndicatorText.Size = 13
manipIndicatorText.Font = Drawing.Fonts.UI
manipIndicatorText.ZIndex = 52
manipIndicatorText.Visible = false

local function DoManipulation(duration)
    if true then return end -- DISABLED: was teleporting / crashing on shoot
    if not ManipulationSettings.Enabled then return end
    if ManipulationSettings.Active then return end
    duration = math.clamp(tonumber(duration) or ManipulationSettings.Duration or 0.08, 0.03, 0.25)

    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local look = Camera.CFrame.LookVector
    local flat = Vector3.new(look.X, 0, look.Z)
    if flat.Magnitude < 0.01 then
        flat = Vector3.new(1, 0, 0)
    else
        flat = flat.Unit
    end

    local dist = tonumber(ManipulationSettings.Distance) or 1.5
    local originCF = hrp.CFrame
    local targetCF = originCF + (flat * dist)

    ManipulationSettings.Active = true
    ManipulationSettings.Origin = originCF   -- client visual / restore
    ManipulationSettings.Target = targetCF   -- server-facing peek
    ManipulationSettings.EndTime = tick() + duration
    -- Do NOT set hrp.CFrame here for client comfort; Heartbeat pushes server pose
end

-- Server-side pose: write peeked CFrame every Heartbeat while active
RunService.Heartbeat:Connect(function()
    if true then return end -- DISABLED: manipulation HRP write crashed on shoot
    if not ManipulationSettings.Active then return end

    local now = tick()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")

    if now >= (ManipulationSettings.EndTime or 0) then
        ManipulationSettings.Active = false
        ManipulationSettings.Origin = nil
        ManipulationSettings.Target = nil
        ManipulationSettings.EndTime = 0
        return
    end

    if hrp and ManipulationSettings.Target then
        -- hrp.CFrame = ManipulationSettings.Target
        -- feed desync pipeline if present so other systems see server pose
        if real_CFrame ~= nil then
            real_CFrame = ManipulationSettings.Target
        end
    end
end)

-- Client-side visual: restore origin after replication so you don't see the teleport
RunService.RenderStepped:Connect(function()
    if not ManipulationSettings.Active then return end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp and ManipulationSettings.Origin then
        hrp.CFrame = ManipulationSettings.Origin
    end
end)

UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if not ManipulationSettings.Enabled then return end
    if input.KeyCode == ManipulationSettings.Key then
        DoManipulation()
    end
end)

-- Indicator under crosshair: idle = dim, active peek = filled accent
RunService.RenderStepped:Connect(function()
    local show = ManipulationSettings.Enabled
    if not show then
        manipIndicatorBg.Visible = false
        manipIndicatorFill.Visible = false
        manipIndicatorText.Visible = false
        return
    end

    local cam = workspace.CurrentCamera
    if not cam then
        manipIndicatorBg.Visible = false
        manipIndicatorFill.Visible = false
        manipIndicatorText.Visible = false
        return
    end

    local vp = cam.ViewportSize
    local w, h = 90, 8
    local ox, oy = vp.X * 0.5 - w * 0.5, vp.Y * 0.5 + 36
    manipIndicatorBg.Size = Vector2.new(w, h)
    manipIndicatorBg.Position = Vector2.new(ox, oy)
    manipIndicatorBg.Visible = true

    local active = ManipulationSettings.Active
    local fillW = active and w or (w * 0.2)
    manipIndicatorFill.Size = Vector2.new(fillW, h)
    manipIndicatorFill.Position = Vector2.new(ox, oy)
    manipIndicatorFill.Color = active and Color3.fromRGB(55, 255, 120) or Color3.fromRGB(80, 80, 90)
    manipIndicatorFill.Transparency = active and 0.1 or 0.45
    manipIndicatorFill.Visible = true

    manipIndicatorText.Text = active and "MANIP" or "PEEK"
    manipIndicatorText.Color = active and Color3.fromRGB(55, 255, 120) or Color3.fromRGB(180, 180, 190)
    manipIndicatorText.Position = Vector2.new(vp.X * 0.5, oy - 14)
    manipIndicatorText.Visible = true
end)

_G._NexviDoManipulation = DoManipulation

print("[Manipulation] Server-side corner peek + indicator — Aim tab")


--======= HITMARKER CORE =======--
local activeHitmarkers = {}
local function createHitmarker(worldPos)
    if not HitmarkerSettings.Enabled then return end
    if typeof(worldPos) ~= "Vector3" then return end
    local line1 = Drawing.new("Line")
    local line2 = Drawing.new("Line")
    for _, line in ipairs({ line1, line2 }) do
        line.Visible = false
        line.Thickness = HitmarkerSettings.Thickness or 2
        line.Color = HitmarkerSettings.Color or Color3.fromRGB(255, 50, 50)
        line.Transparency = 1
        line.ZIndex = 10
    end
    table.insert(activeHitmarkers, {
        Line1 = line1,
        Line2 = line2,
        World = worldPos,
        Born = os.clock(),
        Lifetime = math.max(HitmarkerSettings.Lifetime or 0.45, 0.05),
        Size = HitmarkerSettings.Size or 10,
        Thickness = HitmarkerSettings.Thickness or 2,
        Color = HitmarkerSettings.Color or Color3.fromRGB(255, 50, 50),
        Fade = HitmarkerSettings.Fade ~= false,
    })
end

RunService.RenderStepped:Connect(function()
    local cam = workspace.CurrentCamera
    if not cam then
        for _, e in ipairs(activeHitmarkers) do
            e.Line1.Visible = false
            e.Line2.Visible = false
        end
        return
    end
    local now = os.clock()
    local write = 1
    for i = 1, #activeHitmarkers do
        local e = activeHitmarkers[i]
        local age = now - e.Born
        if age >= e.Lifetime then
            pcall(function() e.Line1:Remove() end)
            pcall(function() e.Line2:Remove() end)
        else
            local screen, onScreen = cam:WorldToViewportPoint(e.World)
            if onScreen and screen.Z > 0 then
                local center = Vector2.new(screen.X, screen.Y)
                local half = e.Size * 0.5
                local alpha = e.Fade and (1 - age / e.Lifetime) or 1
                e.Line1.From = center + Vector2.new(-half, -half)
                e.Line1.To   = center + Vector2.new( half,  half)
                e.Line2.From = center + Vector2.new(-half,  half)
                e.Line2.To   = center + Vector2.new( half, -half)
                e.Line1.Color = e.Color
                e.Line2.Color = e.Color
                e.Line1.Thickness = e.Thickness
                e.Line2.Thickness = e.Thickness
                e.Line1.Transparency = alpha
                e.Line2.Transparency = alpha
                e.Line1.Visible = true
                e.Line2.Visible = true
            else
                e.Line1.Visible = false
                e.Line2.Visible = false
            end
            activeHitmarkers[write] = e
            write = write + 1
        end
    end
    for i = write, #activeHitmarkers do
        activeHitmarkers[i] = nil
    end
end)

local function ensureFakePart()
    if silentAim.fakePart and silentAim.fakePart.Parent then return silentAim.fakePart end
    local p = Instance.new("Part")
    p.Name = "StrixSilentAimPart"
    p.Anchored = true
    p.CanCollide = false
    p.Transparency = 1
    p.Size = Vector3.new(0.1, 0.1, 0.1)
    p.Parent = ReplicatedStorage
    silentAim.fakePart = p
    return p
end

LocalPlayer.CharacterAdded:Connect(function()
    silentAim.targetPart = nil
    if silentAim.fakePart then pcall(function() silentAim.fakePart:Destroy() end) silentAim.fakePart = nil end
end)
LocalPlayer.CharacterRemoving:Connect(function()
    silentAim.targetPart = nil
    if silentAim.fakePart then pcall(function() silentAim.fakePart:Destroy() end) silentAim.fakePart = nil end
end)

local function considerAimPart(part, mouse, camPos)
    if not part or not part.Parent then return nil, nil end
    if (camPos - part.Position).Magnitude > AimSettings.MaxDistance then return nil, nil end
    local screen, onScreen = Camera:WorldToViewportPoint(part.Position)
    if not onScreen then return nil, nil end
    local dist = (Vector2.new(screen.X, screen.Y) - mouse).Magnitude
    return dist, part
end

local function getClosestToCursor()
    local mouse = UserInputService:GetMouseLocation()
    local closest, shortest = nil, AimSettings.FOV
    local camPos = Camera.CFrame.Position

    for _, plr in ipairs(Players:GetPlayers()) do
        if plr == LocalPlayer then continue end
        if AimSettings.TeamCheck and plr.Team == LocalPlayer.Team then continue end
        local char = plr.Character
        if not char then continue end
        local hum = char:FindFirstChildOfClass("Humanoid")
        local part = char:FindFirstChild(AimSettings.AimPart) or char:FindFirstChild("HumanoidRootPart")
        if not part then continue end
        if AimSettings.DeadCheck and (not hum or hum.Health <= 0) then continue end
        local dist, hit = considerAimPart(part, mouse, camPos)
        if dist and dist < shortest then
            shortest = dist
            closest = hit
        end
    end

    if AimSettings.TargetAI then
        local aiZones = workspace:FindFirstChild("AiZones")
        if aiZones then
            for _, zone in ipairs(aiZones:GetChildren()) do
                for _, model in ipairs(zone:GetChildren()) do
                    if not model:IsA("Model") then continue end
                    local hum = model:FindFirstChildOfClass("Humanoid")
                    if AimSettings.DeadCheck and (not hum or hum.Health <= 0) then continue end
                    local part = model:FindFirstChild(AimSettings.AimPart)
                        or model:FindFirstChild("Head")
                        or model:FindFirstChild("HumanoidRootPart")
                        or model.PrimaryPart
                        or model:FindFirstChildWhichIsA("BasePart", true)
                    if not part then continue end
                    local dist, hit = considerAimPart(part, mouse, camPos)
                    if dist and dist < shortest then
                        shortest = dist
                        closest = hit
                    end
                end
            end
        end
    end

    return closest
end

local fovLines = {}
for i = 1, 64 do
    local line = Drawing.new("Line")
    line.Visible = false
    line.Thickness = 1.5
    table.insert(fovLines, line)
end

local function updateFOV()
    local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local radius = AimSettings.FOV
    local show = AimSettings.FOVVisible and AimSettings.Enabled
    for i = 1, 64 do
        local a1 = (i - 1) * (math.pi * 2 / 64)
        local a2 = i * (math.pi * 2 / 64)
        local p1 = center + Vector2.new(math.cos(a1), math.sin(a1)) * radius
        local p2 = center + Vector2.new(math.cos(a2), math.sin(a2)) * radius
        local line = fovLines[i]
        line.From = p1
        line.To = p2
        line.Color = AimSettings.FOVColor
        line.Visible = show
    end
end

UserInputService.InputBegan:Connect(function(input, gp)
    if not gp and input.UserInputType == AimSettings.Key then active = true end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == AimSettings.Key then
        if not RageSettings.Enabled then
            active = false
            silentAim.targetPart = nil
            if _G._StrixBulletHookState then
                _G._StrixBulletHookState.saEnabled = false
                _G._StrixBulletHookState.saTarget = nil
            end
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if RageSettings.Enabled and AimSettings.Enabled then
        active = true
    end
end)

local tlLine = Drawing.new("Line")
tlLine.Visible = false
tlLine.Thickness = 1
tlLine.Color = Color3.new(1, 1, 1)
tlLine.ZIndex = 5

--======= INSTA HIT HOOK (GHOST_HOOK Force Hit) =======--
-- Methods:
--   "instant hit"         -> FireProjectile tick = tick() - dist/1000; zero Drop/Drag
--   "Silent force-hit"    -> Raycast (Bullet stack) returns fake hit on target_part
--   "validation override" -> ProjectileInflict arg1 forced to target_part
function hookInstaHit()
    if instaHitHooked then return end

    local function saActive()
        return AimSettings.Enabled and active
    end

    local function getTarget()
        local t = instaHitTarget or silentAim.targetPart
        if t and t.Parent then return t end
        -- Instant Hit on without Silent Aim: pick closest enemy in FOV
        if instaHitEnabled and getClosestToCursor then
            local part = getClosestToCursor()
            if part and part.Parent then return part end
        end
        return nil
    end

    local function getOrigin()
        if HitscanSettings.Active and HitscanSettings.Origin then
            return HitscanSettings.Origin
        end

        local char = LocalPlayer.Character
        local head = char and char:FindFirstChild("Head")
        if head then return head.Position end
        return Camera.CFrame.Position
    end

    -- Prefer hookmetamethod (same path as GHOST_HOOK); fall back to raw metatable
    local oldNC
    local function newNC(self, ...)
        local args = {...}
        local n = select("#", ...)
        if checkcaller and checkcaller() then
            return oldNC(self, unpack(args, 1, n))
        end

        local method = getnamecallmethod()
        local methodStr = tostring(method)

        -- Only touch remotes we care about. Raycast is skipped unless Instant Hit is on
        -- (Raycast spoof on every bullet ray was freezing the game on shoot).
        local wantRaycast = instaHitEnabled and saActive()
        if methodStr == "Raycast" and not wantRaycast then
            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end
        if methodStr ~= "Raycast" and methodStr ~= "GetAttribute"
            and methodStr ~= "InvokeServer" and methodStr ~= "invokeServer"
            and methodStr ~= "FireServer" and methodStr ~= "fireServer" then
            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end

        -- ---- GetAttribute: zero drop/drag (insta) + AccuracyDeviation (nospread) ----
        if methodStr == "GetAttribute" then
            local attr = args[1]
            if noSpreadEnabled and attr == "AccuracyDeviation" then
                return 0
            end
            if GunModSettings.RemoveMuzzleEffects and attr == "MuzzleEffect" then
                return false
            end
            if GunModSettings.RemoveObstructions and attr == "BlockADS" then
                return false
            end
            if GunModSettings.RemoveSprintAnimation and attr == "Value" then
                local okN, nme = pcall(function() return self.Name end)
                if okN and nme == "Sprinting" then
                    return false
                end
            end
            if instaHitEnabled and saActive() then
                if attr == "ProjectileDrop" or attr == "Drag" then
                    return 0
                end
            end
            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end

        -- ---- Remote name (property read only, no namecalls before oldNC) ----
        local remoteName = nil
        if methodStr == "InvokeServer" or methodStr == "invokeServer"
            or methodStr == "FireServer" or methodStr == "fireServer" then
            local okName, name = pcall(function() return self.Name end)
            if okName then remoteName = name end
        end

        -- ---- FireProjectile (InvokeServer): "instant hit" tick spoof (GHOST_HOOK exact) ----
        -- Signature: V[1]=direction (Unit), V[2]=seed, V[3]=fireTick
        -- V[3] = tick() - Magnitude / 1000  so travel time is already "spent"
        if (methodStr == "InvokeServer" or methodStr == "invokeServer") and remoteName == "FireProjectile" then
            -- wallhack.rbx: manip origin + instant tick spoof
            local target = getTarget()
            local P = getOrigin()
            if HitscanSettings.Active then
                hitscanOnFire()
                if HitscanSettings.Origin then
                    P = HitscanSettings.Origin
                end
            end
            -- Auto corner-peek DISABLED (was crashing / teleporting on shoot)
            -- if ManipulationSettings.Enabled and ManipulationSettings.AutoPeek and saActive() then
            --     if _G._NexviDoManipulation then
            --         _G._NexviDoManipulation()
            --     end
            -- end
            if (saActive() or instaHitEnabled) and target and target.Parent and typeof(args[1]) == "Vector3" then
                local dest = target.Position
                if RageSettings.LiftHitboxes then
                    dest = dest + Vector3.new(0, RageSettings.LiftHeight or 2, 0)
                end
                local dir = dest - P
                if dir.Magnitude > 1e-4 then
                    args[1] = dir.Unit
                end
            end
            if instaHitEnabled and target and target.Parent then
                local dest = target.Position
                local Magnitude = (dest - P).Magnitude
                args[3] = tick() - Magnitude / 1000
                if n < 3 then n = 3 end
            elseif instaHitEnabled then
                -- no target: still spoof tick so bullet is instant to where you're aiming
                args[3] = tick() - 0.05
                if n < 3 then n = 3 end
            end
            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end

        -- ---- ProjectileInflict (FireServer) ----
        if (methodStr == "FireServer" or methodStr == "fireServer") and remoteName == "ProjectileInflict" then
            -- Hitmarkers (confirmed server inflict)
            if HitmarkerSettings.Enabled then
                local hitPart = args[1]
                if typeof(hitPart) == "Instance" then
                    local pos = hitPart.Position
                    if typeof(pos) == "Vector3" then
                        task.defer(createHitmarker, pos)
                    end
                end
            end

            -- Hit feedback (logs + damage numbers)
            do
                local hitPart = args[1]
                if typeof(hitPart) == "Instance" and _G._NexviOnHit then
                    task.defer(_G._NexviOnHit, hitPart)
                end
            end

            -- Instant hit: force inflict part to target when Instant Hit is on
            if instaHitEnabled then
                local target = getTarget()
                if target and target.Parent then
                    args[1] = target
                end
            end

            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end

        -- ---- Raycast: cheap Instant Hit spoof (only when Instant Hit is on) ----
        if methodStr == "Raycast" then
            if instaHitEnabled then
                local target = getTarget()
                if target and target.Parent then
                    local origin = args[1]
                    if typeof(origin) == "Vector3" then
                        local delta = target.Position - origin
                        local dist = delta.Magnitude
                        local dir = args[2]
                        if dist > 1 and dist < 1200 and typeof(dir) == "Vector3" and dir.Magnitude > 0 then
                            if delta.Unit:Dot(dir.Unit) > 0.9 then
                                return {
                                    Instance = target,
                                    Position = target.Position,
                                    Normal   = delta.Unit * -1,
                                    Material = target.Material,
                                    Distance = dist,
                                }
                            end
                        end
                    end
                end
            end
            if setnamecallmethod then setnamecallmethod(methodStr) end
            return oldNC(self, unpack(args, 1, n))
        end

        if setnamecallmethod then setnamecallmethod(methodStr) end
        return oldNC(self, unpack(args, 1, n))
    end

    local wrappedNC = typeof(newcclosure) == "function" and newcclosure(newNC) or newNC

    -- Prefer hookmetamethod
    if typeof(hookmetamethod) == "function" then
        local ok, result = pcall(function()
            return hookmetamethod(game, "__namecall", wrappedNC)
        end)
        if ok and type(result) == "function" then
            oldNC = result
            instaHitHooked = true
            print("[Namecall] GHOST_HOOK Force Hit installed via hookmetamethod")
            return
        end
    end

    -- Fallback: raw metatable
    local mt = getrawmetatable and getrawmetatable(game)
    if not mt then
        Library:Notification("Insta Hit: no metatable / hookmetamethod", 4, Color3.fromRGB(255, 0, 0))
        instaHitEnabled = false
        return
    end
    oldNC = mt.__namecall
    if not oldNC then
        Library:Notification("Insta Hit: __namecall is nil", 4, Color3.fromRGB(255, 0, 0))
        instaHitEnabled = false
        return
    end
    local ok, err = pcall(function()
        setreadonly(mt, false)
        mt.__namecall = wrappedNC
        setreadonly(mt, true)
    end)
    if not ok then
        pcall(function() setreadonly(mt, true) end)
        Library:Notification("Insta Hit hook failed: " .. tostring(err), 4, Color3.fromRGB(255, 0, 0))
        instaHitEnabled = false
        return
    end
    instaHitHooked = true
    print("[Namecall] GHOST_HOOK Force Hit installed via raw metatable")
end

RunService.RenderStepped:Connect(function()
    updateFOV()
    if TargetLineSettings.Enabled then
        local mouse = LocalPlayer:GetMouse()
        local guiInset = GuiService:GetGuiInset()
        local mpos = Vector2.new(mouse.X, mouse.Y + guiInset.Y)
        local target = getClosestToCursor()
        if target and target.Parent then
            local headPos, onScreen = Camera:WorldToViewportPoint(target.Position)
            if onScreen then
                tlLine.From = mpos
                tlLine.To = Vector2.new(headPos.X, headPos.Y)
                tlLine.Color = TargetLineSettings.Color
                tlLine.Thickness = TargetLineSettings.Thickness
                tlLine.Visible = true
            else
                tlLine.Visible = false
            end
        else
            tlLine.Visible = false
        end
    else
        tlLine.Visible = false
    end
    if not (AimSettings.Enabled and active) then
        silentAim.targetPart = nil
        if _G._StrixBulletHookState then
            _G._StrixBulletHookState.saEnabled = false
            _G._StrixBulletHookState.saTarget = nil
        end
        if not instaHitEnabled then
            instaHitTarget = nil
        end
        if HitscanSettings.Active then hitscanClear() end
        if ManipulationSettings.Active then
            ManipulationSettings.Active = false
            ManipulationSettings.Origin = nil
            ManipulationSettings.Target = nil
            ManipulationSettings.EndTime = 0
        end
        return
    end
    local target = getClosestToCursor()
    if not target then
        silentAim.targetPart = nil
        if _G._StrixBulletHookState then
            _G._StrixBulletHookState.saEnabled = false
            _G._StrixBulletHookState.saTarget = nil
        end
        instaHitTarget = nil
        return
    end
    -- Random hit part / lift handled via combat pack helpers
    if RageSettings.RandomHitPart or RageSettings.LiftHitboxes or RageSettings.Prediction then
        local charModel = target.Parent
        local pack = _G._NexviCombat
        if charModel and pack and pack.pickPart then
            local part = pack.pickPart(charModel)
            if part then target = part end
        end
    end
    -- Hit chance gate for silent redirect (rage)
    if RageSettings.Enabled then
        local pack = _G._NexviCombat
        if pack and pack.hitChance and not pack.hitChance(RageSettings.HitChance) then
            return
        end
    end
    silentAim.targetPart = target
    instaHitTarget = target

    -- Hitscan: if enabled and target not LOS, solve offset origin
    if HitscanSettings.Enabled then
        local charModel = target.Parent
        local visible = hitscanIsVisible(Camera.CFrame, charModel, target)
        if not visible then
            local origin, part = hitscanSolve(Camera.CFrame.Position, target)
            if origin and part then
                HitscanSettings.Origin = origin
                HitscanSettings.TargetPart = part
                HitscanSettings.Active = true
                HitscanSettings.OriginMethod = "hitscan"
                silentAim.targetPart = part
                instaHitTarget = part
            else
                hitscanClear()
            end
        else
            hitscanClear()
        end
        hitscanApplySnap()
    else
        if HitscanSettings.Active then hitscanClear() end
    end

    -- Manipulation is peek-based (DoManipulation); no origin solver in aim loop

    local fp = ensureFakePart()
    if _G._StrixBulletHookState then
        local isSilent = AimSettings.Mode == "Silent"
        _G._StrixBulletHookState.saEnabled = isSilent and active
        _G._StrixBulletHookState.saTarget = isSilent and target or nil
        _G._StrixBulletHookState.saFakePart = fp
    end
    if AimSettings.Mode == "Mouse" then
        local screenPos, onScreen = Camera:WorldToViewportPoint(target.Position)
        if onScreen then
            local mpos = UserInputService:GetMouseLocation()
            local delta = Vector2.new(screenPos.X, screenPos.Y) - mpos
            local move = delta * math.clamp(AimSettings.Smoothness, 0.01, 1)
            if move.Magnitude > 0.5 then
                mousemoverel(move.X, move.Y)
            end
        end
    end
end)

-- CreateBullet hook
task.spawn(function()
    task.wait(1)
    local modules = ReplicatedStorage:FindFirstChild("Modules")
    local fps = modules and modules:FindFirstChild("FPS")
    local bullet = fps and fps:FindFirstChild("Bullet")
    if not bullet then warn("[Silent Aim] Bullet module not found") return end
    local ok, bulletModule = pcall(require, bullet)
    if not ok or not bulletModule or not bulletModule.CreateBullet then
        warn("[Silent Aim] Failed to require Bullet module")
        return
    end
    local original = bulletModule.CreateBullet
    local function hooked(...)
        local args = {...}
        pcall(function()
            local state = _G._StrixBulletHookState
            if state and state.saEnabled and state.saTarget then
                if state.saTarget.Parent and state.saFakePart and state.saFakePart.Parent then
                    local origin = Camera.CFrame.Position
                    state.saFakePart.CFrame = CFrame.lookAt(origin, state.saTarget.Position)
                    args[5] = state.saFakePart
                end
            end
        end)
        if GunModSettings.DoubleTap then
            pcall(original, unpack(args))
        end
        return original(unpack(args))
    end
    rawset(bulletModule, "CreateBullet", hooked)
    print("[Silent Aim] CreateBullet hooked successfully")
end)

--======= MAIN LOOP (ESP + Box ESP + Fullbright) =======--
RunService.RenderStepped:Connect(function()
    if ESPSettings.Fullbright then
        Lighting.Brightness = 2
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
        Lighting.ClockTime = 14
        Lighting.FogEnd = 100000
    end
    local localChar = LocalPlayer.Character
    local localRoot = localChar and localChar:FindFirstChild("HumanoidRootPart")
    for player, data in pairs(espData) do
        if not (localRoot and data.root and data.root.Parent) then
            if data.highlight then data.highlight.Enabled = false end
            if data.billboard then data.billboard.Enabled = false end
            if data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then entry.line.Visible = false end
                end
            end
            if data.box then
                for _, line in pairs(data.box) do line.Visible = false end
            end
            if data.glow then
                for _, line in pairs(data.glow) do line.Visible = false end
            end
            if data.fill then data.fill.Visible = false end
            continue
        end

        local dist = (data.root.Position - localRoot.Position).Magnitude
        local inRange = dist <= ESPSettings.MaxDistance

        -- VisCheck color (highlight / name / skeleton / box)
        if ESPSettings.Enabled and inRange then
            local color
            if ESPSettings.VisCheck then
                local visible = espIsVisible(data.character, data.root)
                color = visible and ESPSettings.VisibleColor or ESPSettings.HiddenColor
            else
                color = ESPSettings.Color
            end
            if data._lastVisColor ~= color then
                espApplyColor(data, color)
            end
            -- skeleton uses its own default when VisCheck off
            if not ESPSettings.VisCheck and data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then
                        entry.line.Color3 = ESPSettings.SkeletonColor
                    end
                end
            end
            if not ESPSettings.VisCheck and data.box then
                for _, line in pairs(data.box) do
                    if line then line.Color = ESPSettings.BoxColor end
                end
            end
            if not ESPSettings.VisCheck and data.glow then
                for _, line in pairs(data.glow) do
                    if line then line.Color = ESPSettings.BoxGlowColor end
                end
            end
        end

        if data.highlight then
            data.highlight.Enabled = ESPSettings.Enabled and inRange
        end
        if data.billboard then
            data.billboard.Enabled = ESPSettings.Enabled and inRange
        end

        if localRoot and data.root and data.root.Parent and data.label and inRange then
            local text = ""
            if ESPSettings.ShowName then text = player.DisplayName end
            if ESPSettings.ShowDistance then
                local d = math.floor(dist)
                text = text ~= "" and (text .. "  [" .. d .. "]") or tostring(d)
            end
            data.label.Text = text
            data.label.Font = ESPSettings.NameFont
        end

        if data.skeletonLines and ESPSettings.SkeletonEnabled and inRange then
            for _, entry in pairs(data.skeletonLines) do
                local line = entry.line
                local p1 = entry.part1
                local p2 = entry.part2
                if p1 and p2 and p1.Parent and p2.Parent and line then
                    local localTo = p1.CFrame:PointToObjectSpace(p2.Position)
                    line.CFrame = CFrame.lookAt(Vector3.zero, localTo)
                    line.Length = localTo.Magnitude
                    line.Visible = true
                elseif line then
                    line.Visible = false
                end
            end
        else
            if data.skeletonLines then
                for _, entry in pairs(data.skeletonLines) do
                    if entry.line then entry.line.Visible = false end
                end
            end
        end

        if data.box and data.character and data.character.Parent and data.root and data.root.Parent then
            local cf = data.root.CFrame
            local size = data.character:GetExtentsSize()
            local height = size.Y
            local topWorld = (cf * CFrame.new(0, height * 0.5, 0)).Position
            local bottomWorld = (cf * CFrame.new(0, -height * 0.5, 0)).Position
            local topScreen, topOnScreen = Camera:WorldToViewportPoint(topWorld)
            local bottomScreen, bottomOnScreen = Camera:WorldToViewportPoint(bottomWorld)
            if (topOnScreen or bottomOnScreen) and inRange then
                local boxHeight = math.abs(topScreen.Y - bottomScreen.Y)
                local boxWidth = boxHeight * 0.6
                local centerX = (topScreen.X + bottomScreen.X) / 2
                local topY = math.min(topScreen.Y, bottomScreen.Y)
                local bottomY = math.max(topScreen.Y, bottomScreen.Y)
                local left = centerX - boxWidth / 2
                local right = centerX + boxWidth / 2
                if ESPSettings.BoxEnabled then
                    data.box.Top.From = Vector2.new(left, topY)
                    data.box.Top.To = Vector2.new(right, topY)
                    data.box.Bottom.From = Vector2.new(left, bottomY)
                    data.box.Bottom.To = Vector2.new(right, bottomY)
                    data.box.Left.From = Vector2.new(left, topY)
                    data.box.Left.To = Vector2.new(left, bottomY)
                    data.box.Right.From = Vector2.new(right, topY)
                    data.box.Right.To = Vector2.new(right, bottomY)
                    for _, line in pairs(data.box) do
                        line.Color = ESPSettings.BoxColor
                        line.Thickness = ESPSettings.BoxThickness
                        line.Visible = true
                    end
                    if ESPSettings.BoxGlow and data.glow then
                        data.glow.Top.From = Vector2.new(left, topY)
                        data.glow.Top.To = Vector2.new(right, topY)
                        data.glow.Bottom.From = Vector2.new(left, bottomY)
                        data.glow.Bottom.To = Vector2.new(right, bottomY)
                        data.glow.Left.From = Vector2.new(left, topY)
                        data.glow.Left.To = Vector2.new(left, bottomY)
                        data.glow.Right.From = Vector2.new(right, topY)
                        data.glow.Right.To = Vector2.new(right, bottomY)
                        for _, line in pairs(data.glow) do
                            line.Color = ESPSettings.BoxGlowColor
                            line.Thickness = ESPSettings.BoxGlowThickness
                            line.Visible = true
                        end
                    else
                        for _, line in pairs(data.glow) do line.Visible = false end
                    end
                    if ESPSettings.BoxFilled and data.fill then
                        data.fill.Position = Vector2.new(left, topY)
                        data.fill.Size = Vector2.new(boxWidth, boxHeight)
                        data.fill.Color = ESPSettings.BoxColor
                        data.fill.Transparency = ESPSettings.BoxFillTransparency
                        data.fill.Visible = true
                    else
                        if data.fill then data.fill.Visible = false end
                    end
                    -- outline
                    if data.outline then
                        local o = 1
                        data.outline.Top.From = Vector2.new(left - o, topY - o)
                        data.outline.Top.To = Vector2.new(right + o, topY - o)
                        data.outline.Bottom.From = Vector2.new(left - o, bottomY + o)
                        data.outline.Bottom.To = Vector2.new(right + o, bottomY + o)
                        data.outline.Left.From = Vector2.new(left - o, topY - o)
                        data.outline.Left.To = Vector2.new(left - o, bottomY + o)
                        data.outline.Right.From = Vector2.new(right + o, topY - o)
                        data.outline.Right.To = Vector2.new(right + o, bottomY + o)
                        for _, line in pairs(data.outline) do line.Visible = true end
                    end
                    -- health bar (left side)
                    if data.healthBg and data.healthBar then
                        local hum = data.humanoid
                        local hp = (hum and hum.Health or 100)
                        local maxHp = (hum and hum.MaxHealth or 100)
                        local ratio = math.clamp(maxHp > 0 and hp / maxHp or 1, 0, 1)
                        local barW = 3
                        data.healthBg.Position = Vector2.new(left - 6, topY)
                        data.healthBg.Size = Vector2.new(barW, boxHeight)
                        data.healthBg.Visible = true
                        local barH = boxHeight * ratio
                        data.healthBar.Position = Vector2.new(left - 6, bottomY - barH)
                        data.healthBar.Size = Vector2.new(barW, barH)
                        data.healthBar.Color = Color3.fromRGB(255 * (1 - ratio), 255 * ratio, 60)
                        data.healthBar.Visible = true
                    end
                    -- Drawing text (backtrack style)
                    if data.nameText then
                        data.nameText.Position = Vector2.new(centerX, topY - 16)
                        data.nameText.Color = ESPSettings.Color
                        data.nameText.Visible = true
                    end
                    if data.distText and data.root then
                        local dist = math.floor((data.root.Position - Camera.CFrame.Position).Magnitude)
                        data.distText.Text = tostring(dist) .. "m"
                        data.distText.Position = Vector2.new(centerX, bottomY + 2)
                        data.distText.Color = ESPSettings.Color
                        data.distText.Visible = true
                    end
                else
                    for _, line in pairs(data.box) do line.Visible = false end
                    for _, line in pairs(data.glow) do line.Visible = false end
                    if data.fill then data.fill.Visible = false end
                end
            else
                for _, line in pairs(data.box) do line.Visible = false end
                for _, line in pairs(data.glow) do line.Visible = false end
                if data.fill then data.fill.Visible = false end
                if data.outline then for _, line in pairs(data.outline) do line.Visible = false end end
                if data.healthBg then data.healthBg.Visible = false end
                if data.healthBar then data.healthBar.Visible = false end
                if data.nameText then data.nameText.Visible = false end
                if data.distText then data.distText.Visible = false end
            end
        end
    end
end)

for _, player in ipairs(Players:GetPlayers()) do
    setupPlayer(player)
end
Players.PlayerAdded:Connect(setupPlayer)
Players.PlayerRemoving:Connect(removeESP)

pcall(hookInstaHit)

--======= NO RECOIL (GHOST_HOOK Spring shove/update kill) =======--
-- Game recoil is SpringV2 tables with :shove() / :update().
-- GHOST_HOOK walks getgc, nulls shove when norecoil is on, and wraps SpringV2.create
-- so newly spawned springs inherit the same behavior.
do
    local hookedSprings = setmetatable({}, { __mode = "k" })
    local hookedModules = setmetatable({}, { __mode = "k" })

    local function wrapSpring(spring)
        if type(spring) ~= "table" or hookedSprings[spring] then
            return spring
        end
        hookedSprings[spring] = true

        local origShove = rawget(spring, "shove")
        local origUpdate = rawget(spring, "update")

        if type(origShove) == "function" then
            pcall(function()
                spring.shove = function(...)
                    if noRecoilEnabled or GunModSettings.NoSway or GunModSettings.RemoveObstructions then
                        return nil
                    end
                    local ok, res = pcall(origShove, ...)
                    if ok then return res end
                    return nil
                end
            end)
        end

        -- leave update alone for recoil (GHOST uses update kill for gun-bob only)
        return spring
    end

    local function scanExisting()
        local ok, objs = pcall(getgc, true)
        if not ok or type(objs) ~= "table" then return end

        for _, obj in pairs(objs) do
            if type(obj) == "table" then
                -- live spring instances
                local shove = rawget(obj, "shove")
                local update = rawget(obj, "update")
                if type(shove) == "function" and type(update) == "function" then
                    wrapSpring(obj)
                end

                -- SpringV2 module (create factory)
                local create = rawget(obj, "create")
                if type(create) == "function" and not hookedModules[obj] then
                    local infoOk, info = pcall(debug.getinfo, create)
                    local src = infoOk and info and info.short_src or ""
                    if type(src) == "string" and src:find("SpringV2") then
                        hookedModules[obj] = true
                        local origCreate = create
                        pcall(function()
                            obj.create = function(...)
                                local spring = origCreate(...)
                                return wrapSpring(spring)
                            end
                        end)
                    end
                end
            end
        end
    end

    -- initial sweep + a few delayed retries (module may not exist until first equip)
    task.spawn(function()
        for i = 1, 8 do
            pcall(scanExisting)
            task.wait(i <= 3 and 0.5 or 1.5)
        end
    end)

    -- rescan on character respawn (new viewmodel springs)
    LocalPlayer.CharacterAdded:Connect(function()
        task.delay(1, function()
            pcall(scanExisting)
        end)
    end)

    print("[Gun Mods] No Recoil spring scanner armed")
end

--======= AI / HIGHWAY BANDIT / BOT ESP RUNTIME =======--
do
    local ESP_BILLBOARD = "PDVibeAiESP"
    local ESP_HIGHLIGHT = "PDVibeAiHighlight"
    local aiConnections = {}

    local function track(conn)
        if conn then
            aiConnections[#aiConnections + 1] = conn
        end
        return conn
    end

    local function getAdornee(model)
        if not model then return nil end
        if model:IsA("BasePart") then return model end
        if model:IsA("Model") then
            return model.PrimaryPart
                or model:FindFirstChild("HumanoidRootPart")
                or model:FindFirstChild("Head")
                or model:FindFirstChildWhichIsA("BasePart", true)
        end
        return model:FindFirstChildWhichIsA("BasePart", true)
    end

    local function clearBillboard(model)
        if not model then return end
        local existing = model:FindFirstChild(ESP_BILLBOARD)
        if existing then pcall(function() existing:Destroy() end) end
    end

    local function clearHighlight(model)
        if not model then return end
        local existing = model:FindFirstChild(ESP_HIGHLIGHT)
        if existing then pcall(function() existing:Destroy() end) end
    end

    local function applyNameTag(model)
        local part = getAdornee(model)
        if not part then return end
        clearBillboard(model)
        local bb = Instance.new("BillboardGui")
        bb.Name = ESP_BILLBOARD
        bb.Adornee = part
        bb.AlwaysOnTop = true
        bb.Size = UDim2.new(0, 220, 0, 32)
        bb.StudsOffset = Vector3.new(0, 1.75, 0)
        bb.Parent = model
        local label = Instance.new("TextLabel")
        label.Name = "Text"
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(1, 0, 1, 0)
        label.Font = Enum.Font.SourceSansBold
        label.Text = tostring(model.Name) .. " | NPC"
        label.TextColor3 = AiEspSettings.NameColor
        label.TextSize = AiEspSettings.NameSize
        label.TextStrokeTransparency = 0
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.Parent = bb
    end

    local function applyHighlight(model)
        local hl = model:FindFirstChild(ESP_HIGHLIGHT)
        if not hl then
            hl = Instance.new("Highlight")
            hl.Name = ESP_HIGHLIGHT
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            hl.Parent = model
        end
        hl.FillColor = AiEspSettings.HighlightColor
        hl.OutlineColor = AiEspSettings.HighlightColor
        hl.FillTransparency = AiEspSettings.HighlightTransparency
        hl.OutlineTransparency = math.clamp(AiEspSettings.HighlightTransparency * 0.5, 0, 1)
    end

    local function applyAiEsp(model)
        if not model or not model:IsA("Model") then return end
        local humanoid = model:FindFirstChildOfClass("Humanoid")
        if not humanoid or humanoid.Health <= 0 then
            clearBillboard(model)
            clearHighlight(model)
            return
        end
        if AiEspSettings.NameEnabled then
            applyNameTag(model)
        else
            clearBillboard(model)
        end
        if AiEspSettings.HighlightEnabled then
            applyHighlight(model)
        else
            clearHighlight(model)
        end
    end

    local function refreshAllAi()
        local aiZones = workspace:FindFirstChild("AiZones")
        if not aiZones then return end
        for _, zone in ipairs(aiZones:GetChildren()) do
            for _, child in ipairs(zone:GetChildren()) do
                applyAiEsp(child)
            end
        end
    end
    _G._AiEspRefresh = refreshAllAi

    local function hookZone(zone)
        if not zone then return end
        track(zone.ChildAdded:Connect(function(model)
            task.defer(applyAiEsp, model)
        end))
        for _, model in ipairs(zone:GetChildren()) do
            applyAiEsp(model)
        end
    end

    local function setupListeners()
        local aiZones = workspace:FindFirstChild("AiZones")
        if not aiZones then
            track(workspace.ChildAdded:Connect(function(child)
                if child.Name == "AiZones" then
                    task.defer(setupListeners)
                    task.defer(refreshAllAi)
                end
            end))
            return
        end
        for _, zone in ipairs(aiZones:GetChildren()) do
            hookZone(zone)
        end
        track(aiZones.ChildAdded:Connect(function(zone)
            task.defer(hookZone, zone)
        end))
    end

    setupListeners()
    refreshAllAi()

    local lastScan = 0
    track(RunService.Heartbeat:Connect(function()
        if not AiEspSettings.NameEnabled and not AiEspSettings.HighlightEnabled then
            return
        end
        local now = os.clock()
        if now - lastScan < 2 then return end
        lastScan = now
        refreshAllAi()
    end))

    print("[AI ESP] Highway bandit / bot ESP ready (Visuals tab → AiZones)")
end


--======= DESYNC RUNTIME =======--
local function is_flying_or_tp()
    return false
end

local function is_dead_or_respawning()
    local char = LocalPlayer.Character
    if not char then return true end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return true end
    return false
end

local function build_hrp_offset()
    local hrp_offset = CFrame.new(
        DesyncSettings.XOffset,
        DesyncSettings.YOffset,
        DesyncSettings.ZOffset
    ) * CFrame.Angles(
        DesyncSettings.XRotate,
        DesyncSettings.YRotate,
        DesyncSettings.ZRotate
    )
    if DesyncSettings.RandomPosition then
        hrp_offset = hrp_offset + (
            CFrame.Angles(
                (math.random() - math.random()) * 2 * math.pi,
                (math.random() - math.random()) * 2 * math.pi,
                (math.random() - math.random()) * 2 * math.pi
            ) * CFrame.new(0, 0, -DesyncSettings.RandomPositionRange)
        ).Position
    end
    if DesyncSettings.RandomRotation then
        hrp_offset = hrp_offset * CFrame.Angles(
            (math.random() - math.random()) * 2 * math.pi,
            (math.random() - math.random()) * 2 * math.pi,
            (math.random() - math.random()) * 2 * math.pi
        )
    end
    return hrp_offset
end

RunService.Heartbeat:Connect(function()
    replicated_hrp_cframe = nil

    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not (hum and hrp) then return end

    if not DesyncSettings.Enabled and not desync_turned_on then
        replicated_hrp_cframe = nil
        real_CFrame = nil
        return
    end

    if is_dead_or_respawning() or is_flying_or_tp() then return end
    if not DesyncSettings.Enabled then return end

    old_cframe = hrp.CFrame
    real_CFrame = forced_cframe or old_cframe
    old_velocity = hrp.AssemblyLinearVelocity

    local hrp_offset = build_hrp_offset()
    replicated_hrp_cframe = forced_cframe or (old_cframe * hrp_offset)
    hrp.CFrame = replicated_hrp_cframe

    if DesyncSettings.Velocity then
        hrp.AssemblyLinearVelocity = Vector3.new(
            DesyncSettings.VelocityX,
            DesyncSettings.VelocityY,
            DesyncSettings.VelocityZ
        )
    end

    RunService.RenderStepped:Wait()
    real_CFrame = nil
    if not hrp or not hrp.Parent then return end

    hrp.CFrame = old_cframe
    if DesyncSettings.Velocity then
        hrp.AssemblyLinearVelocity = old_velocity
    end
end)

-- Ghost clone
local desync_ghost_model = Instance.new("Model")
desync_ghost_model.Name = "PinReta_DesyncGhost"
desync_ghost_model.Parent = workspace.Terrain

local ghost_parts = {}
local ghost_chams = {}
local last_ghost_char = nil

local function clear_ghost_parts()
    for _, cham_obj in pairs(ghost_chams) do
        if cham_obj and cham_obj.Parent then
            pcall(function() cham_obj:Destroy() end)
        end
    end
    table.clear(ghost_chams)
    for _, clone_p in pairs(ghost_parts) do
        if clone_p and clone_p.Parent then
            pcall(function() clone_p:Destroy() end)
        end
    end
    table.clear(ghost_parts)
    last_ghost_char = nil
end

local function is_desync_body_part(name)
    return name == "Head"
        or name:find("Torso") ~= nil
        or name:find("Leg") ~= nil
        or name:find("Arm") ~= nil
end

local function rebuild_ghost_model(character)
    clear_ghost_parts()
    if not character then return end
    last_ghost_char = character

    for _, part in ipairs(character:GetChildren()) do
        if part:IsA("BasePart") and is_desync_body_part(part.Name) and part.Name ~= "HumanoidRootPart" then
            local clone_p = part:Clone()
            clone_p.Anchored = true
            clone_p.CanCollide = false
            clone_p.CanTouch = false
            clone_p.CanQuery = false
            clone_p.CastShadow = false
            clone_p.Transparency = 1

            for _, sub in ipairs(clone_p:GetChildren()) do
                if not sub:IsA("SpecialMesh") then
                    sub:Destroy()
                end
            end
            clone_p.Parent = desync_ghost_model
            ghost_parts[part] = clone_p

            local cham_obj = Instance.new("BoxHandleAdornment")
            cham_obj.Name = "SwimDesyncCham_" .. part.Name
            cham_obj.Parent = desync_ghost_model
            cham_obj.Size = part.Size * 0.95
            cham_obj.Adornee = clone_p
            cham_obj.Shading = Enum.AdornShading.XRayShaded
            cham_obj.ZIndex = 5
            cham_obj.AlwaysOnTop = true
            ghost_chams[part] = cham_obj
        end
    end
end

LocalPlayer.CharacterRemoving:Connect(function()
    clear_ghost_parts()
end)

RunService.RenderStepped:Connect(function()
    if not DesyncSettings.Visualize then
        for _, cham_obj in pairs(ghost_chams) do
            if cham_obj and cham_obj.Adornee then
                cham_obj.Adornee = nil
            end
        end
        return
    end

    local character = LocalPlayer.Character
    if not character or not character.Parent then
        clear_ghost_parts()
        return
    end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    if character ~= last_ghost_char then
        rebuild_ghost_model(character)
    end

    local root_cf = hrp.CFrame
    local hrp_offset = CFrame.identity
    if DesyncSettings.Enabled then
        hrp_offset = build_hrp_offset()
    end

    local p_folder = ReplicatedStorage:FindFirstChild("Players")
        and ReplicatedStorage.Players:FindFirstChild(LocalPlayer.Name)
    local status = p_folder and p_folder:FindFirstChild("Status")
    local uac = status and status:FindFirstChild("UAC")
    local lastpos = uac and uac:GetAttribute("LastVerifiedPos")

    local desync_root_cf
    if DesyncSettings.Enabled then
        if lastpos and typeof(lastpos) == "Vector3" then
            desync_root_cf = CFrame.new(lastpos) * (root_cf * hrp_offset).Rotation
        else
            desync_root_cf = root_cf * hrp_offset
        end
    else
        if lastpos and typeof(lastpos) == "Vector3" then
            desync_root_cf = CFrame.new(lastpos) * root_cf.Rotation
        else
            desync_root_cf = root_cf
        end
    end

    local delta_cf = desync_root_cf * root_cf:Inverse()
    local dist_to_ghost = (desync_root_cf.Position - root_cf.Position).Magnitude
    local fade_ratio = 1
    if not DesyncSettings.Enabled then
        fade_ratio = 0
    elseif dist_to_ghost < 3 then
        fade_ratio = math.clamp((dist_to_ghost - 0.5) / 2.5, 0, 1)
    end

    if fade_ratio <= 0.001 then
        for _, cham_obj in pairs(ghost_chams) do
            if cham_obj and cham_obj.Adornee then
                cham_obj.Adornee = nil
            end
        end
        return
    end

    local base_color = DesyncSettings.VisualizeColor or Color3.fromRGB(255, 255, 255)
    local base_transp = DesyncSettings.Transparency or 0.5
    local transp = 1 - ((1 - base_transp) * fade_ratio)

    local count = 0
    for orig_part, clone_part in pairs(ghost_parts) do
        if orig_part and orig_part.Parent and clone_part and clone_part.Parent then
            count = count + 1
            clone_part.CFrame = delta_cf * orig_part.CFrame
            local cham_obj = ghost_chams[orig_part]
            if cham_obj and cham_obj.Parent then
                cham_obj.Adornee = clone_part
                cham_obj.Color3 = base_color
                cham_obj.Transparency = transp
                cham_obj.Size = orig_part.Size * 0.95
            end
        end
    end

    if count == 0 then
        rebuild_ghost_model(character)
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == DesyncSettings.ToggleKey then
        DesyncSettings.Enabled = not DesyncSettings.Enabled
        desync_turned_on = true
        if not DesyncSettings.Enabled then
            real_CFrame = nil
        end
        Library:Notification(
            "Desync " .. (DesyncSettings.Enabled and "ON" or "OFF"),
            2,
            Color3.fromRGB(0, 200, 255)
        )
    end
end)

print("[Desync] Loaded — Misc tab + keybind toggle")



--======= BURY / UNDERGROUND RUNTIME =======--
local buryState = {
    conn = nil,
    jumpConn = nil,
    charConn = nil,
    targetPart = nil,
    att0 = nil,
    att1 = nil,
    alignPos = nil,
    alignOri = nil,
    isJumping = false,
    jumpElapsed = 0,
    currentYRot = 0,
    shoulderOrig = {},   -- joint -> original C0
    collisionOrig = {},  -- part -> original CanCollide
    platformStandOrig = nil,
    autoRotateOrig = nil,
}

local function buryCleanupCharacter(char)
    if not char then return end
    pcall(function() char:SetAttribute("BuriedActive", false) end)

    for joint, c0 in pairs(buryState.shoulderOrig) do
        if joint and joint.Parent then
            pcall(function() joint.C0 = c0 end)
        end
    end
    table.clear(buryState.shoulderOrig)

    for part, can in pairs(buryState.collisionOrig) do
        if part and part.Parent then
            pcall(function() part.CanCollide = can end)
        end
    end
    table.clear(buryState.collisionOrig)

    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then
        if buryState.platformStandOrig ~= nil then
            pcall(function() hum.PlatformStand = buryState.platformStandOrig end)
        end
        if buryState.autoRotateOrig ~= nil then
            pcall(function() hum.AutoRotate = buryState.autoRotateOrig end)
        end
    end
    buryState.platformStandOrig = nil
    buryState.autoRotateOrig = nil
end

local function buryDestroyConstraints()
    for _, key in ipairs({"alignPos", "alignOri", "att0", "att1", "targetPart"}) do
        local obj = buryState[key]
        if obj then
            pcall(function() obj:Destroy() end)
            buryState[key] = nil
        end
    end
end

function stopBury()
    BurySettings.Enabled = false
    if buryState.conn then
        buryState.conn:Disconnect()
        buryState.conn = nil
    end
    if buryState.jumpConn then
        buryState.jumpConn:Disconnect()
        buryState.jumpConn = nil
    end
    if buryState.charConn then
        buryState.charConn:Disconnect()
        buryState.charConn = nil
    end
    buryDestroyConstraints()
    buryCleanupCharacter(LocalPlayer.Character)
    buryState.isJumping = false
    buryState.jumpElapsed = 0
end

local function burySetupOnCharacter(char)
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart", 3)
    local hum = char:FindFirstChildOfClass("Humanoid") or char:WaitForChild("Humanoid", 3)
    if not hrp or not hum then return end

    buryCleanupCharacter(char)
    buryDestroyConstraints()

    buryState.platformStandOrig = hum.PlatformStand
    buryState.autoRotateOrig = hum.AutoRotate
    hum.PlatformStand = true
    hum.AutoRotate = false
    hrp.Anchored = false

    -- selective collision
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            buryState.collisionOrig[part] = part.CanCollide
            if BurySettings.PeekHands and (part.Name == "LeftHand" or part.Name == "RightHand" or part.Name == "Head") then
                part.CanCollide = true
            else
                part.CanCollide = false
            end
        end
    end

    -- shoulder peek
    if BurySettings.PeekHands then
        local upperTorso = char:FindFirstChild("UpperTorso")
        if upperTorso then
            for _, joint in ipairs(upperTorso:GetChildren()) do
                if joint:IsA("Motor6D") and (joint.Name == "RightShoulder" or joint.Name == "LeftShoulder") then
                    buryState.shoulderOrig[joint] = joint.C0
                    joint.C0 = joint.C0 * CFrame.Angles(0, 0, math.rad(160))
                end
            end
        end
    end

    char:SetAttribute("BuriedActive", true)

    local targetPart = Instance.new("Part")
    targetPart.Name = "BuryTarget"
    targetPart.Size = Vector3.new(1, 1, 1)
    targetPart.Transparency = 1
    targetPart.CanCollide = false
    targetPart.Anchored = true
    targetPart.Position = hrp.Position + Vector3.new(0, BurySettings.Depth, 0)
    targetPart.Parent = workspace
    buryState.targetPart = targetPart

    local att0 = Instance.new("Attachment")
    att0.Parent = hrp
    local att1 = Instance.new("Attachment")
    att1.Parent = targetPart
    buryState.att0 = att0
    buryState.att1 = att1

    local alignPos = Instance.new("AlignPosition")
    alignPos.Attachment0 = att0
    alignPos.Attachment1 = att1
    alignPos.RigidityEnabled = true
    alignPos.MaxForce = math.huge
    alignPos.Parent = hrp
    buryState.alignPos = alignPos

    local alignOri = Instance.new("AlignOrientation")
    alignOri.Attachment0 = att0
    alignOri.Attachment1 = att1
    alignOri.RigidityEnabled = true
    alignOri.MaxTorque = math.huge
    alignOri.Parent = hrp
    buryState.alignOri = alignOri

    local _, yRot, _ = hrp.CFrame:ToOrientation()
    buryState.currentYRot = yRot
    buryState.isJumping = false
    buryState.jumpElapsed = 0

    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Exclude
    rayParams.FilterDescendantsInstances = {char, targetPart}

    if buryState.jumpConn then buryState.jumpConn:Disconnect() end
    buryState.jumpConn = UserInputService.JumpRequest:Connect(function()
        if BurySettings.Enabled and char:GetAttribute("BuriedActive") and not buryState.isJumping then
            buryState.isJumping = true
            buryState.jumpElapsed = 0
        end
    end)

    if buryState.conn then buryState.conn:Disconnect() end
    buryState.conn = RunService.Heartbeat:Connect(function(dt)
        if not BurySettings.Enabled then return end
        if not char or not char.Parent or not hrp.Parent or not char:GetAttribute("BuriedActive") then
            stopBury()
            return
        end
        if not targetPart or not targetPart.Parent then return end

        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then
            moveDir = Vector3.zero
        end

        local speed = hum.WalkSpeed or 16
        local pos = targetPart.Position

        rayParams.FilterDescendantsInstances = {char, targetPart}
        local hit = workspace:Raycast(pos + Vector3.new(0, 5, 0), Vector3.new(0, -20, 0), rayParams)
        local floorY = hit and hit.Position.Y or pos.Y

        local newX = pos.X + moveDir.X * speed * dt
        local newZ = pos.Z + moveDir.Z * speed * dt

        local yOff = BurySettings.Depth
        if buryState.isJumping then
            buryState.jumpElapsed = buryState.jumpElapsed + dt
            local progress = buryState.jumpElapsed / math.max(BurySettings.JumpDuration, 0.05)
            if progress >= 1 then
                buryState.isJumping = false
            else
                yOff = BurySettings.Depth + (BurySettings.JumpHeight * math.sin(progress * math.pi))
            end
        end
        local targetY = floorY + yOff

        if moveDir.Magnitude > 0 then
            local look = Vector3.new(newX, targetY, newZ) + Vector3.new(moveDir.X, 0, moveDir.Z)
            local tmp = CFrame.lookAt(Vector3.new(newX, targetY, newZ), look)
            local _, yr, _ = tmp:ToOrientation()
            buryState.currentYRot = yr
        end

        targetPart.CFrame = CFrame.new(newX, targetY, newZ) * CFrame.Angles(math.rad(90), 0, buryState.currentYRot)
    end)
end

function startBury()
    stopBury()
    BurySettings.Enabled = true
    local char = LocalPlayer.Character
    if char then
        burySetupOnCharacter(char)
    end
    buryState.charConn = LocalPlayer.CharacterAdded:Connect(function(c)
        if not BurySettings.Enabled then return end
        task.wait(0.3)
        burySetupOnCharacter(c)
    end)
end

-- forward-declare safety: ensure globals exist for UI callbacks defined earlier
if BurySettings.Enabled then
    task.defer(startBury)
end

print("[Bury] Underground movement ready — Misc tab (left)")


--======= VIEWMODEL CHANGER RUNTIME (ported from backtrack.tech) =======--
local function update_viewmodel()
    local camera = Workspace.CurrentCamera
    local vm = camera:FindFirstChild("ViewModel")
    if not vm then return end

    local highlight = vm:FindFirstChildOfClass("Highlight")
    local settings = ViewmodelSettings

    -- Offset via Motor6D C0 on HRP
    if settings.OffsetEnabled then
        local hrp = vm:FindFirstChild("HumanoidRootPart")
        if hrp then
            for _, child in ipairs(hrp:GetChildren()) do
                if child:IsA("Motor6D") then
                    if not viewmodel_cache[child] then
                        viewmodel_cache[child] = child.C0
                    end
                    child.C0 = viewmodel_cache[child] + Vector3.new(settings.OffsetX, settings.OffsetY, settings.OffsetZ)
                end
            end
        end
    end

    if not settings.Enabled then
        -- Restore surfaces / materials
        for _, store in pairs(stored_surface_appearances) do
            for part, data in pairs(store) do
                if part and part.Parent and data.surface then
                    data.surface.Parent = data.parent
                end
            end
        end
        stored_surface_appearances.weapon = {}
        stored_surface_appearances.clothing = {}

        for part, orig in pairs(original_arm_colors) do
            if part and part.Parent then
                part.Material = orig.material or Enum.Material.Plastic
                part.Color = orig.color or Color3.new(1,1,1)
                part.Transparency = orig.transparency or 0
            end
        end

        if highlight then highlight:Destroy() end
        return
    end

    -- Clothing / arms handling
    local function process_clothing(model)
        if not model then return end
        for _, desc in ipairs(model:GetDescendants()) do
            if desc:IsA("MeshPart") then
                if not original_arm_colors[desc] then
                    original_arm_colors[desc] = {
                        color = desc.Color,
                        material = desc.Material,
                        transparency = desc.Transparency
                    }
                end
                if settings.RemoveClothing then
                    desc.Transparency = 1
                elseif settings.ArmsEnabled then
                    desc.Material = Enum.Material[settings.ArmsMaterial] or Enum.Material.ForceField
                    desc.Color = settings.ArmsColor
                    desc.Transparency = settings.ArmsTransparency
                    local sa = desc:FindFirstChildOfClass("SurfaceAppearance")
                    if sa and not stored_surface_appearances.clothing[desc] then
                        stored_surface_appearances.clothing[desc] = { surface = sa, parent = sa.Parent }
                        sa.Parent = nil
                    end
                else
                    local orig = original_arm_colors[desc]
                    if orig then
                        desc.Material = orig.material
                        desc.Color = orig.color
                        desc.Transparency = orig.transparency or 0
                    end
                    if stored_surface_appearances.clothing[desc] then
                        local data = stored_surface_appearances.clothing[desc]
                        data.surface.Parent = data.parent
                        stored_surface_appearances.clothing[desc] = nil
                    end
                end
            end
        end
    end

    -- Find shirt/gloves models
    for _, child in ipairs(vm:GetChildren()) do
        if child:IsA("Model") then
            local itemType = child:GetAttribute("ItemType")
            if itemType == "Shirt" or itemType == "Gloves" then
                process_clothing(child)
            end
        elseif child:IsA("MeshPart") then
            if not original_arm_colors[child] then
                original_arm_colors[child] = { color = child.Color, material = child.Material, transparency = child.Transparency }
            end
            if settings.ArmsEnabled then
                child.Material = Enum.Material[settings.ArmsMaterial] or Enum.Material.ForceField
                child.Color = settings.ArmsColor
                child.Transparency = settings.ArmsTransparency
            else
                local orig = original_arm_colors[child]
                if orig then
                    child.Material = orig.material
                    child.Color = orig.color
                    child.Transparency = orig.transparency or 0
                end
            end
        end
    end

    -- Weapon
    local item = vm:FindFirstChild("Item")
    if item and settings.WeaponEnabled then
        local function process_weapon_part(part)
            if part:IsA("MeshPart") and part.MeshId ~= "" and part.Transparency ~= 1 then
                local sa = part:FindFirstChildOfClass("SurfaceAppearance")
                if sa and not stored_surface_appearances.weapon[part] then
                    stored_surface_appearances.weapon[part] = { surface = sa, parent = sa.Parent }
                    sa.Parent = nil
                end
                part.Material = Enum.Material[settings.WeaponMaterial] or Enum.Material.ForceField
                part.Color = settings.WeaponColor
                part.Transparency = settings.WeaponTransparency
            end
        end
        for _, desc in ipairs(item:GetDescendants()) do
            process_weapon_part(desc)
        end
        local atts = item:FindFirstChild("Attachments")
        if atts then
            for _, desc in ipairs(atts:GetDescendants()) do
                process_weapon_part(desc)
            end
        end
    else
        for part, data in pairs(stored_surface_appearances.weapon) do
            if part and part.Parent and data.surface then
                data.surface.Parent = data.parent
                part.Material = Enum.Material.Plastic
                part.Color = Color3.new(1,1,1)
            end
        end
        stored_surface_appearances.weapon = {}
    end

    -- Highlight
    if not highlight then
        highlight = Instance.new("Highlight")
        highlight.DepthMode = Enum.HighlightDepthMode.Occluded
        highlight.Parent = vm
    end
    highlight.Enabled = settings.HighlightEnabled
    highlight.FillColor = settings.HighlightFillColor
    highlight.FillTransparency = math.clamp(settings.HighlightFillTransparency * settings.HighlightFillMultiplier, 0, 1)
    highlight.OutlineColor = settings.HighlightOutlineColor
    highlight.OutlineTransparency = math.clamp(settings.HighlightOutlineTransparency * settings.HighlightOutlineMultiplier, 0, 1)
end

-- Hook ViewModel changes
local function hook_viewmodel()
    local camera = Workspace.CurrentCamera
    local vm = camera:FindFirstChild("ViewModel")
    if vm then
        vm.DescendantAdded:Connect(function()
            task.defer(update_viewmodel)
        end)
        update_viewmodel()
    end
    camera.ChildAdded:Connect(function(child)
        if child.Name == "ViewModel" then
            task.defer(function()
                hook_viewmodel()
                update_viewmodel()
            end)
        end
    end)
end
task.defer(hook_viewmodel)

local lastVmUpdate = 0
RunService.Heartbeat:Connect(function()
    if not (ViewmodelSettings.Enabled or ViewmodelSettings.OffsetEnabled) then return end
    local now = os.clock()
    if now - lastVmUpdate < 0.1 then return end
    lastVmUpdate = now
    pcall(update_viewmodel)
end)

print("[Viewmodel] Changer loaded (Visuals tab)")


--======= THIRD PERSON RUNTIME (GHOST_HOOK) =======--
local function tp_is_inventory_preview_open()
    local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not pg then return false end
    local main = pg:FindFirstChild("MainGui")
    if not main then return false end
    local preview = main:FindFirstChild("InventoryPreview", true)
        or main:FindFirstChild("ItemPreview", true)
    return preview ~= nil and preview.Visible == true
end

local function tp_is_aiming()
    if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        return true
    end
    local players = ReplicatedStorage:FindFirstChild("Players")
    local me = players and players:FindFirstChild(LocalPlayer.Name)
    local status = me and me:FindFirstChild("Status")
    local gv = status and status:FindFirstChild("GameplayVariables")
    if not gv then return false end
    if gv:GetAttribute("Aiming") == true then return true end
    local aimVal = gv:FindFirstChild("Aiming")
    if aimVal and aimVal.Value ~= nil and aimVal.Value ~= false then
        return true
    end
    return false
end

local function tp_restore_camera()
    LocalPlayer.CameraMaxZoomDistance = tp_original.CameraMaxZoomDistance or 128
    LocalPlayer.CameraMinZoomDistance = tp_original.CameraMinZoomDistance or 0.5
    LocalPlayer.CameraMode = tp_original.CameraMode or Enum.CameraMode.Classic
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    tp_mouse_locked = false
    tp_inv_paused = false
end

local function tp_apply()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")

    if tp_is_inventory_preview_open() then
        if not tp_inv_paused or tp_mouse_locked then
            tp_restore_camera()
        end
        tp_inv_paused = true
        return
    end
    tp_inv_paused = false

    LocalPlayer.CameraMode = Enum.CameraMode.Classic
    LocalPlayer.CameraMaxZoomDistance = ThirdPersonSettings.Distance
    LocalPlayer.CameraMinZoomDistance = ThirdPersonSettings.Distance
    Camera.CameraType = Enum.CameraType.Custom
    if hum then
        Camera.CameraSubject = hum
    end

    -- only lock mouse when library menu is closed (if detectable)
    local menuOpen = Library and (Library.Opened == true or Library.Open == true)
    if not menuOpen then
        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
        tp_mouse_locked = true
    end

    if ThirdPersonSettings.LockBody and hrp then
        local look = Camera.CFrame.LookVector
        hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + Vector3.new(look.X, 0, look.Z))
    end
end

RunService.RenderStepped:Connect(function(dt)
    dt = dt or (1 / 60)
    local char = LocalPlayer.Character
    if not char then
        tp_fade_current = 0
        tp_fade_applied = 0
        return
    end

    local want = 0
    if ThirdPersonSettings.Enabled and ThirdPersonSettings.ZoomFade and tp_is_aiming() then
        want = ThirdPersonSettings.FadeTarget
    end

    if math.abs(want - tp_fade_current) > 0.001 then
        tp_fade_current = tp_fade_current + (want - tp_fade_current) * math.clamp(dt * ThirdPersonSettings.FadeSpeed, 0, 1)
    else
        tp_fade_current = want
    end

    if tp_fade_current > 0.001 or tp_fade_applied > 0.001 then
        tp_fade_applied = tp_fade_current
        for _, d in ipairs(char:GetDescendants()) do
            if d:IsA("BasePart") and d.Transparency < 1 then
                d.LocalTransparencyModifier = tp_fade_current
            end
        end
    end
end)

RunService.RenderStepped:Connect(function()
    local active = ThirdPersonSettings.Enabled
    if active then
        tp_apply()
    elseif tp_was_active then
        tp_restore_camera()
        local char = LocalPlayer.Character
        if char then
            for _, d in ipairs(char:GetDescendants()) do
                if d:IsA("BasePart") then
                    d.LocalTransparencyModifier = 0
                end
            end
        end
        tp_fade_current = 0
        tp_fade_applied = 0
    end
    tp_was_active = active
end)

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == ThirdPersonSettings.ToggleKey then
        ThirdPersonSettings.Enabled = not ThirdPersonSettings.Enabled
        Library:Notification(
            "Third Person " .. (ThirdPersonSettings.Enabled and "ON" or "OFF"),
            2,
            Color3.fromRGB(120, 200, 255)
        )
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    tp_fade_current = 0
    tp_fade_applied = 0
    if not ThirdPersonSettings.Enabled then
        task.defer(tp_restore_camera)
    end
end)

print("[ThirdPerson] Visuals tab + keybind loaded")


--======= COMBAT PACK RUNTIME (GHOST ports) =======--
local HIT_PARTS = {"Head", "UpperTorso", "LowerTorso", "HumanoidRootPart", "LeftUpperArm", "RightUpperArm"}

local function combatHitChance(pct)
    pct = math.clamp(tonumber(pct) or 100, 1, 100)
    return math.random(1, 100) <= pct
end

local function combatWallbangable(fromPos, toPos)
    if not fromPos or not toPos then return false end
    local dir = toPos - fromPos
    if dir.Magnitude < 0.05 then return false end
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Exclude
    local filter = { LocalPlayer.Character, Camera }
    local noCol = workspace:FindFirstChild("NoCollision")
    if noCol then filter[#filter + 1] = noCol end
    rp.FilterDescendantsInstances = filter
    local thick = tonumber(RageSettings.WallbangThickness) or 2
    local hit = workspace:Raycast(fromPos, dir, rp)
    if not hit or not hit.Instance then return true end
    local sz = hit.Instance.Size
    if math.min(sz.X, sz.Y, sz.Z) > thick then return false end
    local cont = hit.Position + dir.Unit * 0.2
    local hit2 = workspace:Raycast(cont, toPos - cont, rp)
    if not hit2 or not hit2.Instance then return true end
    local sz2 = hit2.Instance.Size
    return math.min(sz2.X, sz2.Y, sz2.Z) <= thick
end

local function combatPredict(pos, part, mult)
    if not RageSettings.Prediction or not part then return pos end
    mult = mult or RageSettings.PredictionMult or 1
    local vel = Vector3.zero
    pcall(function()
        vel = part.AssemblyLinearVelocity or part.Velocity or Vector3.zero
    end)
    local dist = (pos - Camera.CFrame.Position).Magnitude
    local muzzle = 900
    local t = (dist / muzzle) * mult
    return pos + vel * t
end

local function combatPickAimPart(character)
    if RageSettings.RandomHitPart then
        local choices = {}
        for _, name in ipairs(HIT_PARTS) do
            local p = character:FindFirstChild(name)
            if p and p:IsA("BasePart") then choices[#choices + 1] = p end
        end
        if #choices > 0 then
            return choices[math.random(1, #choices)]
        end
    end
    local name = AimSettings.AimPart or "Head"
    return character:FindFirstChild(name) or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
end

local function combatAimPosition(part)
    if not part then return nil end
    local pos = part.Position
    pos = combatPredict(pos, part)
    if RageSettings.LiftHitboxes then
        pos = pos + Vector3.new(0, RageSettings.LiftHeight or 2, 0)
    end
    return pos
end

-- expose for silent aim integration
_G._NexviCombat = {
    wallbangable = combatWallbangable,
    aimPosition = combatAimPosition,
    pickPart = combatPickAimPart,
    hitChance = combatHitChance,
    rage = RageSettings,
    trigger = TriggerSettings,
    gun = GunModSettings,
}

-- ---- Rage / Trigger: force silent-aim active & auto-click ----
local mouseService = game:GetService("VirtualInputManager")
local lastAutoFire = 0
local function combatTryClick()
    local now = tick()
    if now - lastAutoFire < 0.05 then return end
    lastAutoFire = now
    pcall(function()
        if mouse1click then
            mouse1click()
        elseif mouseService then
            mouseService:SendMouseButtonEvent(0, 0, 0, true, game, 0)
            task.wait()
            mouseService:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        end
    end)
end

RunService.Heartbeat:Connect(function()
    -- Anti Aim
    if AntiAimSettings.Enabled then
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hrp then
            if hum then hum.AutoRotate = false end
            local mode = AntiAimSettings.Mode
            if mode == "Spin" then
                hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(AntiAimSettings.Speed), 0)
            elseif mode == "Jitter" then
                local j = (math.random() > 0.5 and 1 or -1) * math.rad(AntiAimSettings.Speed * 3)
                hrp.CFrame = hrp.CFrame * CFrame.Angles(0, j, 0)
            elseif mode == "Static" then
                local pos = hrp.Position
                local yaw = math.rad(AntiAimSettings.Yaw or 180)
                hrp.CFrame = CFrame.new(pos) * CFrame.Angles(0, yaw, 0)
            end
        end
    end

    -- Rage auto-fire / triggerbot when we have a silent-aim target
    local target = silentAim and silentAim.targetPart
    if not target or not target.Parent then return end

    local allowWall = RageSettings.Wallbang or RageSettings.AutoWallbang
    local camPos = Camera.CFrame.Position
    local visible = true
    do
        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        rp.FilterDescendantsInstances = { LocalPlayer.Character, Camera }
        local hit = workspace:Raycast(camPos, target.Position - camPos, rp)
        if hit and not hit.Instance:IsDescendantOf(target.Parent) then
            visible = allowWall and combatWallbangable(camPos, target.Position)
        end
    end
    if not visible then return end

    if RageSettings.Enabled and RageSettings.AutoFire then
        if combatHitChance(RageSettings.HitChance) then
            combatTryClick()
        end
    end

    if TriggerSettings.Enabled then
        if TriggerSettings.ShootOnManip and not ManipulationSettings.Active then
            return
        end
        if combatHitChance(TriggerSettings.HitChance) then
            combatTryClick()
        end
    end
end)

-- ---- Gun mod SettingsModule scanner ----
local gunModHooked = false
local function tryHookGunSettings()
    if gunModHooked then return end
    if not getgc then return end
    for _, obj in ipairs(getgc(true)) do
        if type(obj) == "table" then
            local ok, fr = pcall(function() return rawget(obj, "FireRate") end)
            if ok and type(fr) == "number" then
                -- fragile; prefer require path
            end
        end
    end
end

-- Patch SettingsModule on character tools via periodic scan
task.spawn(function()
    while true do
        task.wait(1)
        if not (GunModSettings.RapidFire or GunModSettings.UnlockFiremodes or GunModSettings.NoGunBob
            or GunModSettings.InstantEquip or GunModSettings.InstantReload or GunModSettings.InstantAim
            or GunModSettings.RemoveObstructions or GunModSettings.NoSway) then
            continue
        end
        local playersFolder = ReplicatedStorage:FindFirstChild("Players")
        local me = playersFolder and playersFolder:FindFirstChild(LocalPlayer.Name)
        local inv = me and me:FindFirstChild("Inventory")
        if not inv then continue end
        for _, tool in ipairs(inv:GetChildren()) do
            local sm = tool:FindFirstChild("SettingsModule")
            if sm and sm:IsA("ModuleScript") then
                local ok, settings = pcall(require, sm)
                if ok and type(settings) == "table" then
                    if GunModSettings.RapidFire then
                        local rpm = GunModSettings.FireRateRPM or 1200
                        pcall(function() settings.FireRate = 60 / rpm end)
                    end
                    if GunModSettings.UnlockFiremodes and settings.FireModes then
                        pcall(function() settings.FireModes = {"Auto", "Semi"} end)
                    end
                    if GunModSettings.NoGunBob then
                        pcall(function()
                            settings.AimInSpeed = 0
                            settings.AimOutSpeed = 0
                        end)
                    end
                    if GunModSettings.InstantEquip then
                        pcall(function()
                            settings.EquipTime = 0
                            settings.UnequipTime = 0
                        end)
                    end
                    if GunModSettings.InstantReload then
                        pcall(function()
                            settings.ReloadTime = 0
                            settings.EmptyReloadTime = 0
                        end)
                    end
                    if GunModSettings.InstantAim then
                        pcall(function()
                            settings.AimInSpeed = 0
                            settings.AimOutSpeed = 0
                        end)
                    end
                    if GunModSettings.RemoveObstructions then
                        pcall(function()
                            settings.TouchWallPosY = 0
                            settings.TouchWallPosZ = 0
                            settings.TouchWallRotX = 0
                            settings.TouchWallRotY = 0
                        end)
                    end
                    if GunModSettings.NoSway then
                        pcall(function()
                            if settings.sway then
                                settings.sway.Force = 0
                                settings.sway.Speed = 0
                            end
                        end)
                    end
                end
            end
        end
    end
end)

-- Magic bullet enables Instant Hit (wallhack path)
RunService.Heartbeat:Connect(function()
    if GunModSettings.MagicBullet then
        instaHitEnabled = true
    end
end)

-- ---- Melee reach / cooldown (attribute & tool scan) ----
RunService.Heartbeat:Connect(function()
    if not (MeleeSettings.NoCooldown or MeleeSettings.Reach > 0) then return end
    local char = LocalPlayer.Character
    if not char then return end
    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            if MeleeSettings.NoCooldown then
                pcall(function()
                    tool:SetAttribute("Cooldown", 0)
                    if tool:FindFirstChild("Cooldown") and tool.Cooldown:IsA("NumberValue") then
                        tool.Cooldown.Value = 0
                    end
                end)
            end
            if MeleeSettings.Reach > 0 then
                pcall(function()
                    tool:SetAttribute("Reach", MeleeSettings.Reach)
                    local h = tool:FindFirstChild("Handle")
                    if h and h:IsA("BasePart") then
                        -- visual only; server validates melee separately
                    end
                end)
            end
        end
    end
end)

-- ---- Grenade ServerProjectile redirect ----
do
    local oldNC
    local hooked = false
    local function ensureGrenadeHook()
        if hooked or not hookmetamethod then return end
        hooked = true
        oldNC = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            local n = select("#", ...)
            if (method == "FireServer" or method == "fireServer" or method == "InvokeServer") then
                local ok, name = pcall(function() return self.Name end)
                if ok and name == "ServerProjectile" and GrenadeSettings.AutoAim then
                    local target = silentAim and silentAim.targetPart
                    if target and target.Parent and typeof(args[1]) == "Vector3" then
                        local origin = Camera.CFrame.Position
                        local dest = target.Position
                        if GrenadeSettings.ArcMode then
                            dest = dest + Vector3.new(0, 8 + (GrenadeSettings.Bounces or 0) * 2, 0)
                        end
                        local dir = (dest - origin)
                        if dir.Magnitude > 0.01 then
                            args[1] = dir.Unit
                        end
                        if setnamecallmethod then setnamecallmethod(method) end
                        return oldNC(self, unpack(args, 1, n))
                    end
                end
            end
            if setnamecallmethod then setnamecallmethod(method) end
            return oldNC(self, unpack(args, 1, n))
        end))
    end
    task.defer(ensureGrenadeHook)
end

-- ---- Hit Logs + Damage Numbers ----
local hitLogActive = {}
local function pushHitLog(name, partName, dist)
    if not HitFeedbackSettings.HitLogs then return end
    local text = string.format("%s hit %s @ %dm", name, partName, dist)
    local bg = Drawing.new("Square")
    bg.Filled = true
    bg.Color = Color3.fromRGB(20, 20, 20)
    bg.Transparency = 0.3
    bg.ZIndex = 80
    local line = Drawing.new("Square")
    line.Filled = true
    line.Color = Color3.fromRGB(150, 255, 150)
    line.ZIndex = 81
    local label = Drawing.new("Text")
    label.Text = text
    label.Size = HitFeedbackSettings.HitLogsSize or 14
    label.Center = false
    label.Outline = true
    label.Color = Color3.new(1, 1, 1)
    label.ZIndex = 82
    table.insert(hitLogActive, 1, {
        bg = bg, line = line, label = label,
        born = os.clock(), y = HitFeedbackSettings.HitLogsY or 400,
    })
end

local function spawnDamageNumber(worldPos)
    if not HitFeedbackSettings.DamageNumbers then return end
    local part = Instance.new("Part")
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1
    part.Size = Vector3.new(0.1, 0.1, 0.1)
    local spread = HitFeedbackSettings.DamageSpread or 30
    local off = Vector3.new(
        (math.random() - 0.5) * spread * 0.05,
        (math.random() - 0.5) * spread * 0.05,
        (math.random() - 0.5) * spread * 0.05
    )
    part.Position = worldPos + off
    part.Parent = workspace
    local bb = Instance.new("BillboardGui")
    bb.Size = UDim2.fromOffset(80, 40)
    bb.AlwaysOnTop = true
    bb.Adornee = part
    bb.Parent = part
    local tl = Instance.new("TextLabel")
    tl.Size = UDim2.fromScale(1, 1)
    tl.BackgroundTransparency = 1
    tl.Text = tostring(math.random(20, 100))
    tl.TextColor3 = Color3.fromRGB(255, 80, 80)
    tl.TextStrokeTransparency = 0.3
    tl.Font = Enum.Font.GothamBold
    tl.TextSize = 18
    tl.Parent = bb
    task.spawn(function()
        local t0 = os.clock()
        while os.clock() - t0 < 0.8 do
            local a = (os.clock() - t0) / 0.8
            part.Position = part.Position + Vector3.new(0, 0.03, 0)
            tl.TextTransparency = a
            tl.TextStrokeTransparency = 0.3 + a * 0.7
            task.wait()
        end
        part:Destroy()
    end)
end

-- Hook into ProjectileInflict path: piggyback existing insta-hit namecall if present
-- Separate lightweight namecall for hit feedback only
do
    local old
    local done = false
    task.defer(function()
        if done or not hookmetamethod then return end
        -- Use a parallel approach: listen via getconnections is unreliable; use __namecall chain
        -- Only if we can safely compose - skip if already heavy hooks; use Descendant? 
        -- FireServer on ProjectileInflict is already hooked in hookInstaHit — extend there if possible
    end)
end

-- Patch: wrap createHitmarker path by monitoring Hitmarker creation is already on ProjectileInflict
-- Add to existing hookInstaHit ProjectileInflict branch via string injection
-- Fallback: RenderStepped scan is too heavy; inject call sites into hookInstaHit block

RunService.RenderStepped:Connect(function()
    if not HitFeedbackSettings.HitLogs then
        for _, e in ipairs(hitLogActive) do
            pcall(function() e.label:Remove() end)
            pcall(function() e.bg:Remove() end)
            pcall(function() e.line:Remove() end)
        end
        table.clear(hitLogActive)
        return
    end
    local now = os.clock()
    local baseY = HitFeedbackSettings.HitLogsY or 400
    for i = #hitLogActive, 1, -1 do
        local e = hitLogActive[i]
        local age = now - e.born
        if age > 4 then
            pcall(function() e.label:Remove() end)
            pcall(function() e.bg:Remove() end)
            pcall(function() e.line:Remove() end)
            table.remove(hitLogActive, i)
        else
            local y = baseY + (i - 1) * 22
            local x = 20
            local alpha = age > 3 and (1 - (age - 3)) or 1
            e.label.Position = Vector2.new(x + 8, y + 2)
            e.label.Size = HitFeedbackSettings.HitLogsSize or 14
            e.label.Transparency = 1 - alpha
            e.label.Visible = true
            local tb = e.label.TextBounds
            e.bg.Position = Vector2.new(x, y)
            e.bg.Size = Vector2.new(tb.X + 16, tb.Y + 8)
            e.bg.Transparency = 0.3 + (1 - alpha) * 0.7
            e.bg.Visible = true
            e.line.Position = Vector2.new(x, y)
            e.line.Size = Vector2.new(3, tb.Y + 8)
            e.line.Transparency = 0.2 + (1 - alpha) * 0.8
            e.line.Visible = true
        end
    end
end)

-- Public API for insta-hit hook to call
_G._NexviOnHit = function(hitPart)
    if not hitPart or typeof(hitPart) ~= "Instance" then return end
    local parent = hitPart.Parent
    local name = parent and parent.Name or "Unknown"
    local dist = 0
    pcall(function()
        dist = math.floor((hitPart.Position - Camera.CFrame.Position).Magnitude / 2.8)
    end)
    pushHitLog(name, hitPart.Name, dist)
    spawnDamageNumber(hitPart.Position)
end

print("[CombatPack] Rage/Trigger/Wallbang/Prediction/AA/GunMods/Melee/Grenade/HitFeed loaded")


--======= CHARACTER RUNTIME (wallhack.rbx misc) =======--
local jesusPart = nil
_G._NexviJesusPart = nil

RunService.RenderStepped:Connect(function()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")

    -- WalkSpeed speedhack (separate from Movement velocity boost)
    if hum and CharacterSettings.SpeedHackEnabled then
        hum.WalkSpeed = CharacterSettings.SpeedHackSpeed or 18.2
    end

    -- Spiderman: climb when W pressed into vertical surface
    if CharacterSettings.SpidermanEnabled and hum and hrp and UserInputService:IsKeyDown(Enum.KeyCode.W) then
        local look = Camera.CFrame.LookVector
        local flat = Vector3.new(look.X, 0, look.Z)
        if flat.Magnitude > 0.01 then
            local rp = RaycastParams.new()
            rp.FilterType = Enum.RaycastFilterType.Exclude
            rp.FilterDescendantsInstances = { char, Camera }
            local hit = workspace:Raycast(hrp.Position, flat.Unit * 3.5, rp)
            if hit and math.abs(hit.Normal.Y) < 0.65 then
                local vel = hrp.AssemblyLinearVelocity
                hrp.AssemblyLinearVelocity = Vector3.new(vel.X, CharacterSettings.SpidermanSpeed or 26, vel.Z)
                pcall(function() hum:ChangeState(Enum.HumanoidStateType.Climbing) end)
            end
        end
    end

    -- Jesus: invisible platform on water
    if CharacterSettings.JesusEnabled and hrp then
        local origin = hrp.Position
        local dir = Vector3.new(0, -10, 0)
        local hitPart, hitPos, hitNormal, hitMat
        -- Prefer modern Raycast on Terrain materials
        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Include
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if terrain then
            rp.FilterDescendantsInstances = { terrain }
            local res = workspace:Raycast(origin, dir, rp)
            if res then
                hitPart = res.Instance
                hitPos = res.Position
                hitMat = res.Material
            end
        end
        -- Fallback FindPartOnRayWithWhitelist
        if not hitPos then
            local ok, a, b, c, d = pcall(function()
                local ray = Ray.new(origin, dir)
                return workspace:FindPartOnRayWithWhitelist(ray, { terrain or workspace.Terrain })
            end)
            if ok then
                hitPart, hitPos, hitNormal, hitMat = a, b, c, d
            end
        end
        local isWater = (hitMat == Enum.Material.Water)
        if isWater and hitPos then
            if not jesusPart or not jesusPart.Parent then
                local parent = workspace:FindFirstChild("NoCollision") or workspace
                jesusPart = Instance.new("Part")
                jesusPart.Name = "NexviJesus"
                jesusPart.Transparency = 1
                jesusPart.Size = Vector3.new(10, 1, 10)
                jesusPart.CanCollide = true
                jesusPart.Anchored = true
                jesusPart.Parent = parent
                _G._NexviJesusPart = jesusPart
            end
            jesusPart.Position = hitPos
        elseif jesusPart then
            pcall(function() jesusPart:Destroy() end)
            jesusPart = nil
            _G._NexviJesusPart = nil
        end
    elseif jesusPart then
        pcall(function() jesusPart:Destroy() end)
        jesusPart = nil
        _G._NexviJesusPart = nil
    end
end)

LocalPlayer.CharacterRemoving:Connect(function()
    if jesusPart then
        pcall(function() jesusPart:Destroy() end)
        jesusPart = nil
        _G._NexviJesusPart = nil
    end
end)

print("[Character] Speedhack / Jesus / Spiderman — Misc tab")


--======= NO VISOR / SCREEN EFFECTS (wallhack.rbx noscreenfx) =======--
local function applyNoVisor()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if not pg then return end
    local noInset = pg:FindFirstChild("NoInsetGui")
    local main = noInset and noInset:FindFirstChild("MainFrame")
    local screenFx = main and main:FindFirstChild("ScreenEffects")
    if screenFx then
        -- Enabled → hide visor / vignette / screen FX
        screenFx.Visible = not NoVisorSettings.Enabled
    end
end

RunService.RenderStepped:Connect(applyNoVisor)

local function hookPlayerGui(pg)
    if not pg then return end
    pg.DescendantAdded:Connect(function(obj)
        if NoVisorSettings.Enabled and obj.Name == "ScreenEffects" then
            obj.Visible = false
        end
    end)
end

if LocalPlayer:FindFirstChild("PlayerGui") then
    hookPlayerGui(LocalPlayer.PlayerGui)
end
LocalPlayer.ChildAdded:Connect(function(child)
    if child.Name == "PlayerGui" then
        hookPlayerGui(child)
    end
end)

print("[NoVisor] ScreenEffects hide — World tab")



--======= AUTOLOAD CONFIG (wallhack SaveManager:LoadAutoloadConfig parity) =======--
task.defer(function()
    local ok, name = pcall(function()
        return readfile(ConfigFolder .. "/autoload.txt")
    end)
    if not ok or type(name) ~= "string" or name == "" then return end
    name = name:gsub("%s+$", ""):gsub("^%s+", "")
    local ok2, content = pcall(function()
        return readfile(ConfigFolder .. "/" .. name .. ".json")
    end)
    if not ok2 or not content then
        warn("[Config] Autoload file missing: " .. tostring(name))
        return
    end
    local ok3, data = pcall(function()
        return HttpService:JSONDecode(content)
    end)
    if ok3 and type(data) == "table" then
        if type(data.LibraryFlags) == "table" then
            local okEnc, encoded = pcall(function() return HttpService:JSONEncode(data.LibraryFlags) end)
            if okEnc and encoded then
                pcall(function() Library:LoadConfig(encoded) end)
            end
        end
        applyConfigPayload(data)
        CurrentConfig = name
        Library:Notification("Autoloaded config: " .. name, 3, Color3.fromRGB(0, 200, 255))
        print("[Config] Autoloaded " .. name)
    else
        warn("[Config] Autoload parse failed")
    end
end)


Library:Notification("ESP + Silent Aim + Hitscan + Manipulation + Third Person + Bury + Desync Loaded", 3, Color3.fromRGB(0, 255, 0))
print("[Silent Aim] Fully loaded – Hold RMB + Mode = Silent")
print("[Silent Aim] CreateBullet hooked successfully (rawset anti-hook protection preserved)")
print("[Box ESP] Loaded with Glow option")
print("[No Grass] Added to Misc tab")
print("[ESP] Max Distance slider added (200-5000 studs)")
print("[Hitmarkers] Only on ProjectileInflict:FireServer(hitPart, ...)")
print("[Insta Hit] Available in Aim tab – only works with Silent Aim")
print("[Movement] Speed + Position Lock added to Misc tab")
print("[Visuals] AI / Highway Bandit / Bot ESP (Workspace.AiZones)")
print("[Desync] Misc tab controls + Heartbeat/RenderStepped desync")
print("[Hitscan] GHOST_HOOK corner-shoot port — Aim tab")
print("[ThirdPerson] GHOST_HOOK port — Visuals tab")
print("[Bury] GHOST-style underground — Misc left column")
print("[Manipulation] GHOST_HOOK free-space origin — Aim tab")
print("[ESP] Visibility Check — color by LOS")
print("[Manipulation] Readiness bar under crosshair")
print("[Instant Hit] wallhack.rbx FireProjectile tick spoof port")
print("[Wallbang] Aim tab combat section")
