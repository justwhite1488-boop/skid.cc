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

function ThemeManager:CreateThemeManager(Themesbox: any)
    assert(ThemeManager.Library, "Library is not set, call ThemeManager:SetLibrary(Library) first.")

    local Lib = ThemeManager.Library

    local function CreateColorOption(Text, SchemeIndex)
        Themesbox:AddLabel(Text):AddColorPicker(SchemeIndex, {
            Default = Lib.Scheme[SchemeIndex]
        })

        return Lib.Options[SchemeIndex]
    end

    Themesbox:AddDivider("Colors")

    CreateColorOption("Background Color", "BackgroundColor")
    CreateColorOption("Main Color", "MainColor")
    CreateColorOption("Accent Color", "AccentColor")
    CreateColorOption("Outline Color", "OutlineColor")
    CreateColorOption("Font Color", "FontColor")

    Themesbox:AddDivider("Font")

    Themesbox:AddDropdown("FontFace", {
        Text = "Font Face",
        Default = "Code",
        Values = { "BuilderSans", "Code", "Fantasy", "Gotham", "Jura", "Roboto", "RobotoMono", "SourceSans" },
        Multi = false,
    })

    Themesbox:AddDivider("Background")

    Themesbox:AddInput("BackgroundImage", {
        Text = "Background Image",
        Default = "",
        Finished = true,
        ClearTextOnFocus = false,
        ClearTextOnBlur = false,
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

    return Themesbox
end

function ThemeManager:CreateGroupBox(Tab: any, IconName: string)
    return Tab:AddGroupbox({
        Side = "Left",
        Name = "Themes",
        IconName = IconName or "paintbrush",
    })
end

function ThemeManager:ApplyToTab(Tab: any, IconName: string)
    local Groupbox = ThemeManager:CreateGroupBox(Tab, IconName)
    return ThemeManager:CreateThemeManager(Groupbox)
end

function ThemeManager:ApplyToGroupbox(Groupbox: any)
    return ThemeManager:CreateThemeManager(Groupbox)
end

getgenv().ObsidianThemeManager = ThemeManager
return ThemeManager
