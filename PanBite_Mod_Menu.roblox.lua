local player = game[string.char(
    80*1, 
    108+0, 
    97-0, 
    121/1, 
    101*1, 
    114-0, 
    (115+5)-5
)][string.char(
    (76*2)/2, 
    (111+222)/3, 
    97-0, 
    (99*2)/2, 
    (97+3)-3, 
    (108*3)/3, 
    80/1, 
    (108+0), 
    (97*2)/2, 
    (121-0), 
    (101+5)-5, 
    114/1
)]
local modelsFolder = workspace[string.char(
    (87*5)/5,        -- e
    (97+8)-8,        -- z
    (105*2)/2,       -- z
    (116*2)/2,       -- z
    (70*5)/5,        -- z
    (111+0)-0,       -- z
    (114*1)/1,       -- z
    (67+0)-0,        -- z
    (104*2)/2,       -- z
    (105+0)-0,       -- z
    (108*2)/2,       -- z
    (100*3)/3        -- z
)](string.char(
    (86*5)/5,        -- h
    (97+1)-1,        -- e
    (115*2)/2,       -- a
    (101*1)/1,       -- l
    (115*2)/2        -- t
))                   -- h

do
    local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
    for _ = 1, 500 do
        local useless = (((a+b-c)*d/e)+f-g+h*i-j+k-l+m-n+o*p/q-r+s-t)
        if useless ~= nil then
            useless = useless + math.random(1,100)
            useless = useless - math.random(1,50)
            useless = useless * 2 / 2
            if useless % 2 == 0 then
                local fakeVar = "ThisIsUseless"..tostring(useless)
            else
                local anotherFake = "CompletelyFake"..tostring(useless)
            end
        end
    end
end

local lugares = {
    Vector3.new(-1695, -87, -711),
    Vector3.new(-371, -83, -1253),
    Vector3.new(48, -164, 624),
    Vector3.new(-554, -182, -133),
    Vector3.new(-237, -172, 1706),
    Vector3.new(985, -183, 430),
    Vector3.new(-122, -158, 1080),
    Vector3.new(-451, -169, -547),
    Vector3.new(-85, -102, -2013),
    Vector3.new(1512, -155, -331),
    Vector3.new(-674, -143, 1351),
}

    local trash1 = fakeFunction(math.random(1, 1000))
    local trash2 = fakeFunction(math.random(1, 1000))
    local trash3 = fakeFunction(math.random(1, 1000))
    local trash4 = fakeFunction(math.random(1, 1000))

    for i = 1, 100 do
        local y = (trash1 + trash2) * (trash3 - trash4) / (i + 1)
        if y > 100000 then
            y = y / 2
        else
            y = y * 2
        end
    end
end

-- Variables de control
local cooldownModels = {}
local infiniteTeleporting = false
local infiniteTeleportThread
local specialTeleportThread
local humanoidRootPart

local zonaSegura = Vector3.new(0, 300, 0) -- <<< Esta es tu zona segura (puedes cambiarla)

-- Función para teletransportar
local function teleportTo(position)
    if humanoidRootPart then
        humanoidRootPart.CFrame = CFrame.new(position)
    end
end

-- Función para hacer el recorrido normal
local function recorrido()
    for _, pos in ipairs(lugares) do
        teleportTo(pos)
        task.wait(1)
    end
end

local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end



-- Teleport 7 veces
local function teleportToModel7Times(model)
    if not model:IsA("Model") then return end
    if cooldownModels[model] then return end

    cooldownModels[model] = true

    local targetPosition = nil

    if model.PrimaryPart then
        targetPosition = model.PrimaryPart.Position
    else
        local primary = model:FindFirstChildWhichIsA("BasePart")
        if primary then
            targetPosition = primary.Position
        end
    end

    if targetPosition then
        local elevatedPosition = targetPosition + Vector3.new(0, 7, 0)

        for i = 1, 7 do
            teleportTo(elevatedPosition)
            task.wait(1.4)
        end
    end

    task.delay(20, function()
        cooldownModels[model] = nil
    end)
end

-- Función para activar o desactivar el teletransporte infinito
local function toggleInfiniteTeleport(state)
    infiniteTeleporting = state

    if infiniteTeleporting then
        -- Iniciar recorrido normal
        infiniteTeleportThread = task.spawn(function()
            while infiniteTeleporting do
                recorrido()
            end
        end)

        -- Iniciar teleport especial cada 30 segundos
        specialTeleportThread = task.spawn(function()
            while infiniteTeleporting do
                task.wait(30)
                if humanoidRootPart then
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame + Vector3.new(0, 5000, 0)
                    task.wait(1)
                end
            end
        end)

    else
        -- Detener todo
        if infiniteTeleportThread then
            task.cancel(infiniteTeleportThread)
            infiniteTeleportThread = nil
        end
        if specialTeleportThread then
            task.cancel(specialTeleportThread)
            specialTeleportThread = nil
        end

        -- Resetear el personaje
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end
end

-- Nueva variables
local hintActive = false
local hintPart = nil

-- Editamos createGUI() para agregar el subtítulo y botón de Hint
local function createGUI()
    -- Verificar si ya existe
    if player:FindFirstChild("PlayerGui"):FindFirstChild("TeleportGui") then
        return
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TeleportGui"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 230)
    frame.Position = UDim2.new(0, 20, 0, 20)
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    frame.Active = true
    frame.Draggable = true
    frame.Parent = screenGui

    -- Titulo principal
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 40)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    titleLabel.Text = "PanBite Mod Menu 1.0"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 28
    titleLabel.Parent = frame

    -- Subtitulo faraaara
    local farLabel = Instance.new("TextLabel")
    farLabel.Size = UDim2.new(0, 120, 0, 20)
    farLabel.Position = UDim2.new(0, 5, 0, 50)
    farLabel.BackgroundTransparency = 1
    farLabel.Text = "Auto Farm"
    farLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    farLabel.Font = Enum.Font.SourceSansBold
    farLabel.TextSize = 20
    farLabel.Parent = frame

    -- Botón de toggle faraaara
    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 100, 0, 30)
    toggleButton.Position = UDim2.new(0, 10, 0, 75)
    toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    toggleButton.Text = "OFF"
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Font = Enum.Font.SourceSans
    toggleButton.TextSize = 20
    toggleButton.Parent = frame

    toggleButton.MouseButton1Click:Connect(function()
        if toggleButton.Text == "OFF" then
            toggleButton.Text = "ON"
            toggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
            toggleInfiniteTeleport(true)
        else
            toggleButton.Text = "OFF"
            toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            toggleInfiniteTeleport(false)
        end
    end)

    -- Subtitulo Zona segura
    local safeLabel = Instance.new("TextLabel")
    safeLabel.Size = UDim2.new(0, 120, 0, 20)
    safeLabel.Position = UDim2.new(0, 125, 0, 50)
    safeLabel.BackgroundTransparency = 1
    safeLabel.Text = "Safe Zone"
    safeLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    safeLabel.Font = Enum.Font.SourceSansBold
    safeLabel.TextSize = 20
    safeLabel.Parent = frame

    -- Botón de zona segura
    local safeButton = Instance.new("TextButton")
    safeButton.Size = UDim2.new(0, 100, 0, 30)
    safeButton.Position = UDim2.new(0, 130, 0, 75)
    safeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 170)
    safeButton.Text = "GO"
    safeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    safeButton.Font = Enum.Font.SourceSans
    safeButton.TextSize = 20
    safeButton.Parent = frame

    safeButton.MouseButton1Click:Connect(function()
        teleportTo(Vector3.new(0, 100, 0)) -- <-- Cambia esta posición por tu zona segura
    end)

    -- Subtitulo Hint
-- Variables para controlar el hint
local hintActive = false
local hintPart = nil

-- Label de "Hint"
local hintLabel = Instance.new("TextLabel")
hintLabel.Size = UDim2.new(0, 120, 0, 20)
hintLabel.Position = UDim2.new(0, 125, 0, 120)
hintLabel.BackgroundTransparency = 1
hintLabel.Text = "Shark ESP"
hintLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
hintLabel.Font = Enum.Font.SourceSansBold
hintLabel.TextSize = 20
hintLabel.Parent = frame
local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end

local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end


-- Botón de Hint
local hintButton = Instance.new("TextButton")
hintButton.Size = UDim2.new(0, 100, 0, 30)
hintButton.Position = UDim2.new(0, 130, 0, 145)
hintButton.BackgroundColor3 = Color3.fromRGB(170, 70, 70)
hintButton.Text = "Turn On"
hintButton.TextColor3 = Color3.fromRGB(255, 255, 255)
hintButton.Font = Enum.Font.SourceSans
hintButton.TextSize = 20
hintButton.Parent = frame

hintButton.MouseButton1Click:Connect(function()
    if not hintActive then
        local sharksFolder = workspace:WaitForChild("Sharks")
        local foundTarget = nil

        for _, descendant in ipairs(sharksFolder:GetDescendants()) do
            if descendant:IsA("BasePart") then
                foundTarget = descendant
                break
            end
        end

        if foundTarget then
            hintPart = Instance.new("BillboardGui")
            hintPart.Size = UDim2.new(0, 20, 0, 20) -- Tamaño del punto rojo
            hintPart.AlwaysOnTop = true -- Que siempre sea visible
            hintPart.Adornee = foundTarget -- Lo "pega" al tiburón
            hintPart.Parent = foundTarget -- Lo ponemos como hijo del tiburón

            local redDot = Instance.new("Frame")
            redDot.Size = UDim2.new(1, 0, 1, 0)
            redDot.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            redDot.BackgroundTransparency = 0
            redDot.BorderSizePixel = 0
            redDot.Parent = hintPart

            -- Puedes hacer el punto redondo:
            redDot.AnchorPoint = Vector2.new(0.5, 0.5)
            redDot.Position = UDim2.new(0.5, 0, 0.5, 0)
            redDot.SizeConstraint = Enum.SizeConstraint.RelativeYY
            redDot.ClipsDescendants = true
            redDot.BackgroundTransparency = 0
            redDot.ZIndex = 10
            redDot.Name = "RedDot"

            local uicorner = Instance.new("UICorner")
            uicorner.CornerRadius = UDim.new(1, 0) -- Hacerlo círculo
            uicorner.Parent = redDot
        end

        hintButton.Text = "Turn Off"
        hintActive = true
    else
        if hintPart then
            hintPart:Destroy()
            hintPart = nil
        end

        hintButton.Text = "Turn On"
        hintActive = false
    end
end)

-- Subtítulo de Volar
local flyLabel = Instance.new("TextLabel")
flyLabel.Size = UDim2.new(0, 120, 0, 20)
flyLabel.Position = UDim2.new(0, 5, 0, 120)
flyLabel.BackgroundTransparency = 1
flyLabel.Text = "Fly"
flyLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
flyLabel.Font = Enum.Font.SourceSansBold
flyLabel.TextSize = 20
flyLabel.Parent = frame

-- Botón de Seleccionar Velocidad
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 100, 0, 30)
flyButton.Position = UDim2.new(0, 10, 0, 145)
flyButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
flyButton.Text = "Select Speed"
flyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flyButton.Font = Enum.Font.SourceSans
flyButton.TextSize = 18
flyButton.Parent = frame
local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end

local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end

-- Frame para las opciones de velocidad
local speedOptionsFrame = Instance.new("Frame")
speedOptionsFrame.Size = UDim2.new(0, 180, 0, 160)
speedOptionsFrame.Position = UDim2.new(0.5, -90, 0, 240)
speedOptionsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
speedOptionsFrame.Visible = false
speedOptionsFrame.Parent = frame

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = speedOptionsFrame
uiListLayout.FillDirection = Enum.FillDirection.Vertical
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Padding = UDim.new(0, 5)

local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end

local youezzkiddo = ("hi local character = character.world.ezz.local character = character.world.ezz.local character = character.world.ezzlocal character = character.world.ezzlocal character = character.world.ezz")
local youezzkiddo = ("hi local character = character.world.ezz.local character = character.world.ezz.local character = character.world.ezzlocal character = character.world.ezzlocal character = character.world.ezz")



local fakeCode99 = "local player = game.Players.LocalPlayer; function jump() player.Character.Humanoid.Jump = true end"

local fakeLoop99 = "for i = 1, 10 do print('Fake Loop: '..i) end"

local fakeIf99 = "if player.TeamColor == BrickColor.new('Bright red') then print('Red team!') else print('Not red!') end"

local fakeModule99 = "local module = {}; function module.Hello() print('Hello from fake module!') end return module"

local fakeEvent99 = "local event = Instance.new('RemoteEvent'); event.Name = 'FakeEvent'; event.Parent = game.ReplicatedStorage"

local anotherFakeThing99 = "while wait(1) do print('Infinite fake loop!') end"





local speeds = {0, 1, 5, 10, 20, 30, 40, 50, 100, 200, 500}
local flying = false
local flySpeed = 0
local flyBody = nil
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Función para activar vuelo
local function startFlying(speed)
    if not flying then
        flyBody = Instance.new("BodyVelocity")
        flyBody.Velocity = Vector3.new(0, 0, 0)
        flyBody.MaxForce = Vector3.new(400000, 400000, 400000)
        flyBody.Parent = humanoidRootPart
        flying = true
    end
    flySpeed = speed
end

-- Función para detener vuelo
local function stopFlying()
    if flying then
        if flyBody then
            flyBody:Destroy()
            flyBody = nil
        end
        flying = false
    end
end

-- local speed1 = game.workspace.THuman.Walkspeed
-- local speed2 = game.workspace.THuman.Walkspeed
-- local speed3 = game.workspace.THuman.Walkspeed
-- local speed4 = game.workspace.THuman.Walkspeed
-- local speed5 = game.workspace.THuman.Walkspeed
-- local speed6 = game.workspace.THuman.Walkspeed
-- local speed7 = game.workspace.THuman.Walkspeed
-- local speed8 = game.workspace.THuman.Walkspeed
-- local speed9 = game.workspace.THuman.Walkspeed
-- local speed0 = game.workspace.THuman.Walkspeed
-- local speed12 = game.workspace.THuman.Walkspeed

-- Crear los botones de velocidad
for _, speed in ipairs(speeds) do
    local speedButton = Instance.new("TextButton")
    speedButton.Size = UDim2.new(1, 0, 0, 20)
    speedButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    speedButton.Text = tostring(speed)
    speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedButton.Font = Enum.Font.SourceSans
    speedButton.TextSize = 18
    speedButton.Parent = speedOptionsFrame

    speedButton.MouseButton1Click:Connect(function()
        if speed == 0 then
            stopFlying()
        else
            startFlying(speed)
        end
        speedOptionsFrame.Visible = false
    end)
end

local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end


-- Mostrar/Ocultar opciones al pulsar el botón principal
flyButton.MouseButton1Click:Connect(function()
    speedOptionsFrame.Visible = not speedOptionsFrame.Visible
end)

-- Actualizar vuelo mientras se mantiene activo
game:GetService("RunService").Heartbeat:Connect(function()
    if flying and flyBody then
        local camera = workspace.CurrentCamera
        local moveDirection = Vector3.new()

        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            moveDirection = moveDirection + camera.CFrame.LookVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            moveDirection = moveDirection - camera.CFrame.LookVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            moveDirection = moveDirection - camera.CFrame.RightVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            moveDirection = moveDirection + camera.CFrame.RightVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
            moveDirection = moveDirection + camera.CFrame.UpVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            moveDirection = moveDirection - camera.CFrame.UpVector
        end

        moveDirection = moveDirection.Unit
        if moveDirection.Magnitude > 0 then
            flyBody.Velocity = moveDirection * flySpeed * 10 -- Multiplico para que se sienta fluido
        else
            flyBody.Velocity = Vector3.new(0, 0, 0)
        end
    end
end)


local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

-- Basura oculta
local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end


    -- Manejar clicks del botón de zona segura
    safeZoneButton.MouseButton1Click:Connect(function()
        -- Aquí defines tu zona segura
        local safeZonePosition = Vector3.new(0, 150, 0) -- Cambia esto por la posición real
        teleportTo(safeZonePosition)
    end)
end

-- Función para actualizar humanoidRootPart al respawn
local function onCharacterAdded(character)
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
end

-- Escuchar eventos
player.CharacterAdded:Connect(onCharacterAdded)
if player.Character then
    onCharacterAdded(player.Character)
end

modelsFolder.ChildAdded:Connect(function(child)
    task.spawn(function()
        if infiniteTeleporting then
            teleportToModel7Times(child)
        end
    end)
end)

local hechoPorLabel = Instance.new("TextLabel")
hechoPorLabel.Size = UDim2.new(1, 0, 0, 20)
hechoPorLabel.Position = UDim2.new(0, 0, 0, 190)
hechoPorLabel.BackgroundTransparency = 1
hechoPorLabel.Text = "Made by elbrodeboxingleague Tiktok: @panpanpammmn"
hechoPorLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
hechoPorLabel.Font = Enum.Font.SourceSans
hechoPorLabel.TextSize = 14
hechoPorLabel.Parent = frame


local modelsFolder99 = string.char(
    65,98,67,68,69,70,97,98,99,100,101,102,103,104,105,106,
    107,108,109,110,111,112,113,114,115,116,117,118,119,120,
    121,122,48,49,50,51,52,53,54,55,56,57,33,64,35,36,37,94,
    38,42,40,41,95,43,61,45,126,123,125,91,93,58,59,34,39,60,
    62,44,46,47,63,124,92,96,87,88,89,90,97,98,99,100,101,102,
    103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
    118,119,120,121,122
) .. string.char(
    48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,
    74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,33,64,
    35,36,37,94,38,42,40,41,95,43,61,45,126,123,125,91,93,58
)

local playerGui99 = string.char(
    122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,
    107,106,105,104,103,102,101,100,99,98,97,90,89,88,87,86,85,
    84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65
) .. string.char(
    57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,
    38,37,36,35,34,33
)

local remoteEvent99 = string.char(
    66,114,105,99,107,66,114,97,105,110,115,66,97,99,107,119,
    97,114,100,115,66,101,116,97,83,116,97,103,101
) .. string.char(
    77,97,112,83,112,97,99,101,80,111,114,116,97,108,83,116,
    111,114,97,103,101
)

local uselessThing99 = string.char(
    80,76,65,89,69,82,83,84,79,82,69,67,79,68,69,83,66,85,84,
    78,79,84,82,69,65,76,76,89,85,83,69,68
) .. string.char(
    69,76,83,69,87,72,65,84,69,86,69,82,84,72,73,83,73,83
)

local function randomFunction99()
    local fakeProcess99 = playerGui99 .. remoteEvent99
    local fakeData99 = uselessThing99 .. modelsFolder99
    local result99 = fakeProcess99 .. fakeData99
    return result99
end


-- Crear GUI al inicio
createGUI()
