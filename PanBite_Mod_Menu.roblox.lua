local player = game.Players.LocalPlayer
local modelsFolder = workspace:WaitForChild("Vases")
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

-- Crear GUI al inicio
createGUI()