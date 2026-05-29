local Patriot = loadstring(game:HttpGet("https://raw.githubusercontent.com/SyndromeXph/expert-octo-doodle/refs/heads/main/ArqelUi.luau"))()


print("=== Patriot Authentication ===")
                                                              
-- local Patriot = loadstring(game:HttpGet("https://raw.githubusercontent.com/SyndromeXph/expert-octo-doodle/refs/heads/main/PatriotUi-luarmor.luau"))()

-- local LuarmorAPI = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
-- LuarmorAPI.script_id = "YOUR_SCRIPT_ID_HERE"

-- Patriot.Callbacks.OnVerify = function(key)
--    local status = LuarmorAPI.check_key(key)
--    if status.code == "KEY_VALID" then
--        return { valid = true }
--   else
--       local errMsg = status.message
--        if status.code == "KEY_HWID_LOCKED" then
--           errMsg = "Key is locked to a different HWID. Please reset it."
--      elseif status.code == "KEY_INCORRECT" then
--         errMsg = "Key is invalid or does not exist."
--        elseif status.code == "KEY_EXPIRED" then
--          errMsg = "Key has expired."
--      end
--        return { valid = false, message = errMsg }
-- end
--end


-- Patriot:LaunchJunkie({
--    Service = "YOUR_SERVICE_NAME",
--    Identifier = "YOUR_IDENTIFIER",
--    Provider = "YOUR_PROVIDER_NAME"
--})

-- Keys are automatically validated through Junkie


-- local HttpService = game:GetService("HttpService")

-- Patriot.Callbacks.OnVerify = function(key)
--    local success, response = pcall(function()
--        return game:HttpGet("https://api.yoursite.com/validate?key=" .. key)
--    end)    
--    if success then
--        local data = HttpService:JSONDecode(response)
--        return {
--            valid = data.valid,
--            error = data.error or "UNKNOWN",
--            message = data.message or "Invalid key"
--        }
--    end  
--    return false
-- end

-- HTTP API Validation | Validate keys through your own API endpoint

Patriot.Callbacks.OnVerify = function(key)
    return key == ""----Set key
end


Patriot.Appearance = {
    Title = "Patriot",
    Subtitle = "Verify Key to enjoy",
    Icon = "rbxassetid://95721401302279",
    IconSize = UDim2.new(0, 30, 0, 30)
}

Patriot.Links = {
    GetKey = "",
    Discord = "https://discord.gg/xxxxxxx"
}

Patriot.Storage = {
    FileName = "Patriot_Key",
    Remember = true,
    AutoLoad = false
}

Patriot.Options = {
    Keyless = false,
    KeylessUI = false,
    Blur = true,
    Draggable = true
}


Patriot.Theme = {
    Accent = Color3.fromRGB(220, 20, 60),
    AccentHover = Color3.fromRGB(255, 30, 80),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(10, 10, 10),
    Input = Color3.fromRGB(20, 20, 20),
    Text = Color3.fromRGB(255, 255, 255),
    TextDim = Color3.fromRGB(150, 150, 150),
    Success = Color3.fromRGB(50, 255, 50),
    Error = Color3.fromRGB(255, 30, 80),
    Warning = Color3.fromRGB(255, 255, 0),
    StatusIdle = Color3.fromRGB(180, 40, 60),
    Discord = Color3.fromRGB(220, 20, 60),
    DiscordHover = Color3.fromRGB(255, 30, 80),
    Divider = Color3.fromRGB(30, 30, 30),
    Pending = Color3.fromRGB(40, 40, 40)
}


Patriot.Callbacks.OnSuccess = function()
    print("✅ Verification successful, loading cript")
    ----↓↓↓↓↓Source code placement↓↓↓↓↓
-- loadstring(game:HttpGet("YOUR_SCRIPT_URL"))()   
    ----↑↑↑↑↑↑源码放置↑↑↑↑↑↑↑
end

Patriot.Callbacks.OnFail = function(errMsg)
    print("❌ Verification failed: " .. errMsg)
end

Patriot.Callbacks.OnClose = function()
    print("User closed the verification window")
end

Patriot.Changelog = {
    {Version = "v0.0.3", Date = "May 27, 2026", Changes = {"Add Key System Ui"}},
    {Version = "v0.0.2", Date = "May 27, 2026", Changes = {"Add Zombie Survive Arena", "Fixed bug"}},
    {Version = "v0.0.1", Date = "May 27, 2026", Changes = {"Add Death Rail, Gunland FFA"}},
    {Version = "v0.0.0", Date = "May 10, 2026", Changes = {"Initial release"}}
}

Patriot.Shop = {
    Enabled = false,
    Icon = "",
    Title = "Get Premium Access",
    Subtitle = "Instant delivery • 24/7 support",
    ButtonText = "Buy",
    Link = ""
}
Patriot:Launch()

