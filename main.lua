
--====================================
-- DAJH HOODSIDE v1.0
-- AMAZONA | DELTA MOBILE
--====================================

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DAJH_HOODSIDE"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 280, 0, 300)
main.Position = UDim2.new(0.5, -140, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(7, 12, 25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 110, 255)
stroke.Thickness = 2
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 48)
title.BackgroundColor3 = Color3.fromRGB(10, 35, 75)
title.Text = "DAJH HOODSIDE"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 21
title.Font = Enum.Font.GothamBold
title.Parent = main

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 35)
status.Position = UDim2.new(0, 0, 0, 65)
status.BackgroundTransparency = 1
status.Text = "ESTADO: DETENIDO"
status.TextColor3 = Color3.fromRGB(255, 90, 90)
status.Font = Enum.Font.GothamBold
status.TextSize = 13
status.Parent = main

local running = false

local function createButton(name, y, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.85, 0, 0, 40)
    button.Position = UDim2.new(0.075, 0, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(12, 65, 140)
    button.Text = name
    button.TextColor3 = Color3.new(1,1,1)
    button.TextSize = 14
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = button

    button.MouseButton1Click:Connect(callback)
end

createButton("START AUTOFARM", 115, function()
    running = true
    status.Text = "ESTADO: ACTIVADO"
    status.TextColor3 = Color3.fromRGB(0,255,140)
end)

createButton("STOP AUTOFARM", 165, function()
    running = false
    status.Text = "ESTADO: DETENIDO"
    status.TextColor3 = Color3.fromRGB(255,90,90)
end)

createButton("CERRAR MENU", 215, function()
    running = false
    gui:Destroy()
end)

local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 25)
footer.Position = UDim2.new(0, 0, 1, -25)
footer.BackgroundTransparency = 1
footer.Text = "DAJH HOODSIDE | v1.0"
footer.TextColor3 = Color3.fromRGB(80,150,255)
footer.TextSize = 11
footer.Parent = main
