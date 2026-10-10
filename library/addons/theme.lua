local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)
local clonefunction = (clonefunction or copyfunction or function(func) 
    return func 
end)

local HttpService: HttpService = cloneref(game:GetService("HttpService"))

local isfolder, isfile, listfiles = isfolder, isfile, listfiles
local isfolder_copy, isfile_copy, listfiles_copy = clonefunction(isfolder), clonefunction(isfile), clonefunction(listfiles)
local isfolder_success, isfolder_error = pcall(function() return isfolder_copy("test" .. tostring(math.random(1000000, 9999999))) end)

if isfolder_success == false or typeof(isfolder_error) ~= "boolean" then
    isfolder = function(folder)
        local success, data = pcall(isfolder_copy, folder)
        return (if success then data else false)
    end

    isfile = function(file)
        local success, data = pcall(isfile_copy, file)
        return (if success then data else false)
    end

    listfiles = function(folder)
        local success, data = pcall(listfiles_copy, folder)
        return (if success then data else {})
    end
end

local SchemeIndexes = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }

local DefaultTheme = {
    BackgroundColor = "0f0f0f",
    MainColor = "191919",
    AccentColor = "7d55ff",
    OutlineColor = "282828",
    FontColor = "ffffff",
    FontFace = "Code",
    BackgroundImage = "",
}

local ThemeManager = {
    Library = nil,
    AppliedToTab = false,
}

function ThemeManager:SetLibrary(Library)
    ThemeManager.Library = Library
end

function ThemeManager:ThemeUpdate()
    local Library = ThemeManager.Library

    for _, SchemeIndex in SchemeIndexes do
        local Element = Library.Options[SchemeIndex]
        if not Element then continue end

        Library.Scheme[SchemeIndex] = Element.Value
    end

    Library:UpdateColorsUsingRegistry()
end

function ThemeManager:ResetTheme()
    local Library = ThemeManager.Library

    for _, SchemeIndex in SchemeIndexes do
        local Element = Library.Options[SchemeIndex]
        if not Element then continue end

        Element:SetValue(Color3.fromHex(DefaultTheme[SchemeIndex]))
    end

    local FontFace = Library.Options.FontFace
    if FontFace then
        FontFace:SetValue(DefaultTheme.FontFace)
    end

    local BackgroundImage = Library.Options.BackgroundImage
    if BackgroundImage then
        BackgroundImage:SetValue(DefaultTheme.BackgroundImage)
    end

    ThemeManager:ThemeUpdate()
end

function ThemeManager:CreateThemeManager(ThemesBox: any)
    assert(ThemeManager.Library, "Library is not set, call ThemeManager:SetLibrary(Library) first.")

    local Lib = ThemeManager.Library

    local function CreateColorOption(Text, SchemeIndex)
        ThemesBox:AddLabel(Text):AddColorPicker(SchemeIndex, {
            Default = Lib.Scheme[SchemeIndex]
        })

        return Lib.Options[SchemeIndex]
    end

    CreateColorOption("Background Color", "BackgroundColor")
    CreateColorOption("Main Color", "MainColor")
    CreateColorOption("Accent Color", "AccentColor")
    CreateColorOption("Outline Color", "OutlineColor")

    ThemesBox:AddDivider()

    CreateColorOption("Font Color", "FontColor")
    ThemesBox:AddDropdown("FontFace", {
        Text = "Font Face",
        Default = "Code",
        Values = { "BuilderSans", "Code", "Fantasy", "Gotham", "Jura", "Roboto", "RobotoMono", "SourceSans" },
        Multi = false,
    })

    ThemesBox:AddDivider()

    ThemesBox:AddInput("BackgroundImage", {
        Text = "Background Image",
        Default = "",
        Finished = true,
        ClearTextOnFocus = false,
        ClearTextOnBlur = false,
    })
    
    ThemesBox:AddButton({
        Text = "Reset Theme",
        DoubleClick = false,

        Func = function()
            ThemeManager:ResetTheme()
            Lib:Notify("Reset theme.")
        end,
    })

    local FontFace = Lib.Options.FontFace
    local BackgroundImage = Lib.Options.BackgroundImage

    local UpdateTheme = function() ThemeManager:ThemeUpdate() end

    for _, SchemeIndex in SchemeIndexes do
        local Element = Lib.Options[SchemeIndex]
        if Element then
            Element:OnChanged(UpdateTheme)
        end
    end

    FontFace:OnChanged(function(Value) Lib:SetFont(Enum.Font[Value]) end)
    BackgroundImage:OnChanged(function(Value) Lib:SetBackgroundImage(Value) end)

    ThemeManager.AppliedToTab = true

    return ThemesBox
end

function ThemeManager:CreateGroupBox(Tab: any)
    return Tab:AddGroupbox({
        Side = "Left",
        Name = "Themes",
    })
end

function ThemeManager:ApplyToTab(Tab: any)
    local Groupbox = ThemeManager:CreateGroupBox(Tab)
    return ThemeManager:CreateThemeManager(Groupbox)
end

function ThemeManager:ApplyToGroupbox(Groupbox: any)
    return ThemeManager:CreateThemeManager(Groupbox)
end

getgenv().ObsidianThemeManager = ThemeManager
return ThemeManager
