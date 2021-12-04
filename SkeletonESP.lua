local _SKELETONESPCOLOR = Color3.new(255,255,255)
_G.SkelESPToggle = true
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local plrs = game:GetService("Workspace").Players
local guy = "gaminggangstar33"



function isdead(player)
    if game.Workspace.Players:FindFirstChild(tostring(player)) then
        return false
    else
        return true
    end
end
for i,v in pairs(game.Players:GetPlayers()) do
    --LINLES--

    --LEGS--
    local leftLowerLeg = Drawing.new("Line")
    local rightLowerLeg = Drawing.new("Line")
    leftLowerLeg.Visible = false
    leftLowerLeg.Color = _SKELETONESPCOLOR
    leftLowerLeg.Thickness = 1
    leftLowerLeg.Transparency = 1
    rightLowerLeg.Visible = false
    rightLowerLeg.Color = _SKELETONESPCOLOR
    rightLowerLeg.Thickness = 1
    rightLowerLeg.Transparency = 1
    
    local leftUpperLeg = Drawing.new("Line")
    local rightUpperLeg = Drawing.new("Line")
    leftUpperLeg.Visible = false
    leftUpperLeg.Color = _SKELETONESPCOLOR
    leftUpperLeg.Thickness = 1
    leftUpperLeg.Transparency = 1
    rightUpperLeg.Visible = false
    rightUpperLeg.Color = _SKELETONESPCOLOR
    rightUpperLeg.Thickness = 1
    rightUpperLeg.Transparency = 1
    --//--
    
    --TORSO--
    local Torso = Drawing.new("Line")
    Torso.Visible = false
    Torso.Color = _SKELETONESPCOLOR
    Torso.Thickness = 1
    Torso.Transparency = 1
    
    local hipLine = Drawing.new("Line")
    hipLine.Visible = false
    hipLine.Color = _SKELETONESPCOLOR
    hipLine.Thickness = 1
    hipLine.Transparency = 1

    local shoulderLine = Drawing.new("Line")
    shoulderLine.Visible = false
    shoulderLine.Color = _SKELETONESPCOLOR
    shoulderLine.Thickness = 1
    shoulderLine.Transparency = 1
    --//--

    --ARMS--
    local leftUpperArm = Drawing.new("Line")
    local rightUpperArm = Drawing.new("Line")
    leftUpperArm.Visible = false
    leftUpperArm.Color = _SKELETONESPCOLOR
    leftUpperArm.Thickness = 1
    leftUpperArm.Transparency = 1
    rightUpperArm.Visible = false
    rightUpperArm.Color = _SKELETONESPCOLOR
    rightUpperArm.Thickness = 1
    rightUpperArm.Transparency = 1
    
    local leftLowerArm = Drawing.new("Line")
    local rightLowerArm = Drawing.new("Line")
    leftLowerArm.Visible = false
    leftLowerArm.Color = _SKELETONESPCOLOR
    leftLowerArm.Thickness = 1
    leftLowerArm.Transparency = 1
    rightLowerArm.Visible = false
    rightLowerArm.Color = _SKELETONESPCOLOR
    rightLowerArm.Thickness = 1
    rightLowerArm.Transparency = 1
    --//--
    
    --HEAD--
    local Head = Drawing.new("Line")
    Head.Visible = false
    Head.Color = _SKELETONESPCOLOR
    Head.Thickness = 1
    Head.Transparency = 1
    --//--
    
    function drawSkeleton()
        joseph = game:GetService("RunService").RenderStepped:Connect(function()
            
            if v and v.Character and v.Character.HumanoidRootPart and v ~= lplr then
                local VECTOR, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                -- 3 DIMENSIONAL OBJECTS --
                local OBJ_RootPart = v.Character.HumanoidRootPart
                local OBJ_Torso = v.Character.Base
                --LEGS--

                local OBJ_leftLowerLeg = v.Character.LeftLeg.LeftLegLower
                local OBJ_rightLowerLeg = v.Character.RightLeg.RightLegLower
                
                local OBJ_leftUpperLeg = v.Character.LeftLeg.LeftLegUpper
                local OBJ_rightUpperLeg = v.Character.RightLeg.RightLegUpper
                --//--
                --ARMS--
                local OBJ_leftLowerArm = v.Character.LeftArm.LeftArmLower
                local OBJ_rightLowerArm = v.Character.RightArm.RightArmLower
                    
                local OBJ_leftUpperArm = v.Character.LeftArm.LeftArmUpper
                local OBJ_rightUpperArm = v.Character.RightArm.RightArmUpper
                --//--
                --HEAD--
                    local OBJ_Head = v.Character.Head
                    --//--
                -- OBJECTS SCREEN POSITION --
                local SCRN_RootPosition = worldToViewportPoint(CurrentCamera, OBJ_RootPart.Position)
                local SCRN_Torso = worldToViewportPoint(CurrentCamera, OBJ_Torso.Position)
                
                local SCRN_rightLowerLeg = worldToViewportPoint(CurrentCamera, OBJ_rightLowerLeg.Position - Vector3.new(0,0.7,0))
                
                local SCRN_leftUpperLeg = worldToViewportPoint(CurrentCamera, OBJ_leftUpperLeg.Position)
                local SCRN_rightUpperLeg = worldToViewportPoint(CurrentCamera, OBJ_rightUpperLeg.Position)
                
                local SCRN_leftLowerArm = worldToViewportPoint(CurrentCamera, OBJ_leftLowerArm.Position)
                local SCRN_rightLowerArm = worldToViewportPoint(CurrentCamera, OBJ_rightLowerArm.Position)
                
                local SCRN_leftUpperArm = worldToViewportPoint(CurrentCamera, OBJ_leftUpperArm.Position)
                local SCRN_rightUpperArm = worldToViewportPoint(CurrentCamera, OBJ_rightUpperArm.Position)
                
                local SCRN_Head = worldToViewportPoint(CurrentCamera, OBJ_Head.Position)
                
                local SCRN_LeftFoot = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerLeg.CFrame * CFrame.new(0, OBJ_leftLowerLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_LeftKnee = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerLeg.CFrame * CFrame.new(0, OBJ_leftLowerLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_RightFoot = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerLeg.CFrame * CFrame.new(0, OBJ_rightLowerLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_RightKnee = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerLeg.CFrame * CFrame.new(0, OBJ_rightLowerLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_LeftThigh = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperLeg.CFrame * CFrame.new(0, OBJ_leftUpperLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_LeftHip = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperLeg.CFrame * CFrame.new(0, OBJ_leftUpperLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_RightThigh = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperLeg.CFrame * CFrame.new(0, OBJ_rightUpperLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_RightHip = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperLeg.CFrame * CFrame.new(0, OBJ_rightUpperLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_TorsoBottom = worldToViewportPoint(CurrentCamera, (OBJ_Torso.CFrame * CFrame.new(0, OBJ_Torso.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_TorsoTop = worldToViewportPoint(CurrentCamera, (OBJ_Torso.CFrame * CFrame.new(0, OBJ_Torso.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_LeftShoulder = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperArm.CFrame * CFrame.new(0, OBJ_leftUpperArm.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_RightShoulder = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperArm.CFrame * CFrame.new(0, OBJ_rightUpperArm.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_LeftElbow = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperArm.CFrame * CFrame.new(0, OBJ_leftUpperArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_RightElbow = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperArm.CFrame * CFrame.new(0, OBJ_rightUpperArm.Size.Y / 22, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                
                local SCRN_LeftHand = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerArm.CFrame * CFrame.new(0, OBJ_leftLowerArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_RightHand = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerArm.CFrame * CFrame.new(0, OBJ_rightLowerArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                local SCRN_Head =  worldToViewportPoint(CurrentCamera, (OBJ_Head.CFrame * CFrame.new(0, OBJ_Head.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                if onScreen and _G.SkelESPToggle then
                    leftLowerLeg.Visible = true
                    leftLowerLeg.From = Vector2.new(SCRN_LeftFoot.X, SCRN_LeftFoot.Y)
                    leftLowerLeg.To = Vector2.new(SCRN_LeftKnee.X, SCRN_LeftKnee.Y)

                    rightLowerLeg.Visible = true
                    rightLowerLeg.From = Vector2.new(SCRN_RightFoot.X, SCRN_LeftFoot.Y)
                    rightLowerLeg.To = Vector2.new(SCRN_RightKnee.X, SCRN_RightKnee.Y)
                    
                    leftUpperLeg.Visible = true
                    leftUpperLeg.From = Vector2.new(SCRN_LeftThigh.X, SCRN_LeftThigh.Y)
                    leftUpperLeg.To = Vector2.new(SCRN_LeftHip.X, SCRN_LeftHip.Y)
                    
                    rightUpperLeg.Visible = true
                    rightUpperLeg.From = Vector2.new(SCRN_RightThigh.X, SCRN_RightThigh.Y)
                    rightUpperLeg.To = Vector2.new(SCRN_RightHip.X, SCRN_RightHip.Y)
                    
                    hipLine.Visible = true
                    hipLine.From = Vector2.new(SCRN_RightHip.X, SCRN_RightHip.Y)
                    hipLine.To = Vector2.new(SCRN_LeftHip.X, SCRN_LeftHip.Y)
                    
                    Torso.Visible = true
                    Torso.From = Vector2.new(SCRN_TorsoBottom.X, SCRN_TorsoBottom.Y)
                    Torso.To = Vector2.new(SCRN_TorsoTop.X, SCRN_TorsoTop.Y)
                    
                    leftUpperArm.Visible = true
                    leftUpperArm.From = Vector2.new(SCRN_LeftShoulder.X, SCRN_LeftShoulder.Y)
                    leftUpperArm.To = Vector2.new(SCRN_LeftElbow.X, SCRN_LeftElbow.Y)
                    
                    leftLowerArm.Visible = true
                    leftLowerArm.From = Vector2.new(SCRN_LeftElbow.X, SCRN_LeftElbow.Y)
                    leftLowerArm.To = Vector2.new(SCRN_LeftHand.X, SCRN_LeftHand.Y)
                    
                    rightUpperArm.Visible = true
                    rightUpperArm.From = Vector2.new(SCRN_RightShoulder.X, SCRN_RightShoulder.Y)
                    rightUpperArm.To = Vector2.new(SCRN_RightElbow.X, SCRN_RightElbow.Y)
                    
                    rightLowerArm.Visible = true
                    rightLowerArm.From = Vector2.new(SCRN_RightElbow.X, SCRN_RightElbow.Y)
                    rightLowerArm.To = Vector2.new(SCRN_RightHand.X, SCRN_RightHand.Y)
                    
                    shoulderLine.Visible = true
                    shoulderLine.From = Vector2.new(SCRN_LeftShoulder.X, SCRN_LeftShoulder.Y)
                    shoulderLine.To = Vector2.new(SCRN_RightShoulder.X, SCRN_RightShoulder.Y)
                    
                    Head.Visible = true
                    Head.From = Vector2.new(SCRN_TorsoTop.X, SCRN_TorsoTop.Y)
                    Head.To = Vector2.new(SCRN_Head.X, SCRN_Head.Y)
                else
                    Head.Visible = false
                    rightLowerArm.Visible = false
                    leftLowerArm.Visible = false
                    rightUpperArm.Visible = false
                    leftUpperArm.Visible = false
                    Torso.Visible = false
                    rightUpperLeg.Visible = false
                    leftUpperLeg.Visible = false
                    rightLowerLeg.Visible = false
                    leftLowerLeg.Visible = false
                    shoulderLine.Visible = false
                    hipLine.Visible = false
                end
                if isdead(v) then
                    Head.Visible = false
                    rightLowerArm.Visible = false
                    leftLowerArm.Visible = false
                    rightUpperArm.Visible = false
                    leftUpperArm.Visible = false
                    Torso.Visible = false
                    rightUpperLeg.Visible = false
                    leftUpperLeg.Visible = false
                    rightLowerLeg.Visible = false
                    leftLowerLeg.Visible = false
                    shoulderLine.Visible = false
                    hipLine.Visible = false
                    joseph:Disconnect()
                end
            else
                Head.Visible = false
                rightLowerArm.Visible = false
                leftLowerArm.Visible = false
                rightUpperArm.Visible = false
                leftUpperArm.Visible = false
                Torso.Visible = false
                rightUpperLeg.Visible = false
                leftUpperLeg.Visible = false
                rightLowerLeg.Visible = false
                leftLowerLeg.Visible = false
                shoulderLine.Visible = false
                hipLine.Visible = false
            end
        end)
    end
    coroutine.wrap(drawSkeleton)()
end

plrs.ChildAdded:Connect(function(childThatsAdded)
    print("waiting for Base")
    repeat wait() until childThatsAdded:FindFirstChild("RightArm")
    repeat wait() until childThatsAdded:FindFirstChild("LeftArm")
    repeat wait() until childThatsAdded:FindFirstChild("RightLeg")
    repeat wait() until childThatsAdded:FindFirstChild("LeftLeg")
    repeat wait() until childThatsAdded:FindFirstChild("Base")
    repeat wait() until childThatsAdded:FindFirstChild("Humanoid")
    print("Base Loaded!")
    if childThatsAdded.Name ~= lplr.Name then

        --LINLES--
        --LEGS--
        local leftLowerLeg = Drawing.new("Line")
        local rightLowerLeg = Drawing.new("Line")
        leftLowerLeg.Visible = false
        leftLowerLeg.Color = _SKELETONESPCOLOR
        leftLowerLeg.Thickness = 1
        leftLowerLeg.Transparency = 1
        rightLowerLeg.Visible = false
        rightLowerLeg.Color = _SKELETONESPCOLOR
        rightLowerLeg.Thickness = 1
        rightLowerLeg.Transparency = 1

        local leftUpperLeg = Drawing.new("Line")
        local rightUpperLeg = Drawing.new("Line")
        leftUpperLeg.Visible = false
        leftUpperLeg.Color = _SKELETONESPCOLOR
        leftUpperLeg.Thickness = 1
        leftUpperLeg.Transparency = 1
        rightUpperLeg.Visible = false
        rightUpperLeg.Color = _SKELETONESPCOLOR
        rightUpperLeg.Thickness = 1
        rightUpperLeg.Transparency = 1
        --//--

        --TORSO--
        local Torso = Drawing.new("Line")
        Torso.Visible = false
        Torso.Color = _SKELETONESPCOLOR
        Torso.Thickness = 1
        Torso.Transparency = 1

        local hipLine = Drawing.new("Line")
        hipLine.Visible = false
        hipLine.Color = _SKELETONESPCOLOR
        hipLine.Thickness = 1
        hipLine.Transparency = 1

        local shoulderLine = Drawing.new("Line")
        shoulderLine.Visible = false
        shoulderLine.Color = _SKELETONESPCOLOR
        shoulderLine.Thickness = 1
        shoulderLine.Transparency = 1
        --//--

        --ARMS--
        local leftUpperArm = Drawing.new("Line")
        local rightUpperArm = Drawing.new("Line")
        leftUpperArm.Visible = false
        leftUpperArm.Color = _SKELETONESPCOLOR
        leftUpperArm.Thickness = 1
        leftUpperArm.Transparency = 1
        rightUpperArm.Visible = false
        rightUpperArm.Color = _SKELETONESPCOLOR
        rightUpperArm.Thickness = 1
        rightUpperArm.Transparency = 1

        local leftLowerArm = Drawing.new("Line")
        local rightLowerArm = Drawing.new("Line")
        leftLowerArm.Visible = false
        leftLowerArm.Color = _SKELETONESPCOLOR
        leftLowerArm.Thickness = 1
        leftLowerArm.Transparency = 1
        rightLowerArm.Visible = false
        rightLowerArm.Color = _SKELETONESPCOLOR
        rightLowerArm.Thickness = 1
        rightLowerArm.Transparency = 1
        --//--
        
        --HEAD--
        local Head = Drawing.new("Line")
        Head.Visible = false
        Head.Color = _SKELETONESPCOLOR
        Head.Thickness = 1
        Head.Transparency = 1
        --//--


        function drawSkeleton()
            local joseph = game:GetService("RunService").RenderStepped:Connect(function()
                if childThatsAdded and game.Players:GetPlayerFromCharacter(childThatsAdded) ~= lplr then
                    local VECTOR, onScreen = camera:worldToViewportPoint(childThatsAdded.HumanoidRootPart.Position)
                    -- 3 DIMENSIONAL OBJECTS --
                    local OBJ_RootPart = childThatsAdded.HumanoidRootPart
                    local OBJ_Torso = childThatsAdded.Base
                    --LEGS--

                    local OBJ_leftLowerLeg = childThatsAdded.LeftLeg.LeftLegLower
                    local OBJ_rightLowerLeg = childThatsAdded.RightLeg.RightLegLower
                    
                    local OBJ_leftUpperLeg = childThatsAdded.LeftLeg.LeftLegUpper
                        local OBJ_rightUpperLeg = childThatsAdded.RightLeg.RightLegUpper
                        --//--
                        --ARMS--
                        local OBJ_leftLowerArm = childThatsAdded.LeftArm.LeftArmLower
                        local OBJ_rightLowerArm = childThatsAdded.RightArm.RightArmLower
                        
                        local OBJ_leftUpperArm = childThatsAdded.LeftArm.LeftArmUpper
                        local OBJ_rightUpperArm = childThatsAdded.RightArm.RightArmUpper
                        --//--
                        --HEAD--
                        local OBJ_Head = childThatsAdded.Head
                        --//--
                    -- OBJECTS SCREEN POSITION --
                    local SCRN_RootPosition = worldToViewportPoint(CurrentCamera, OBJ_RootPart.Position)
                    local SCRN_Torso = worldToViewportPoint(CurrentCamera, OBJ_Torso.Position)
                    
                    local SCRN_rightLowerLeg = worldToViewportPoint(CurrentCamera, OBJ_rightLowerLeg.Position - Vector3.new(0,0.7,0))
                    
                    local SCRN_leftUpperLeg = worldToViewportPoint(CurrentCamera, OBJ_leftUpperLeg.Position)
                    local SCRN_rightUpperLeg = worldToViewportPoint(CurrentCamera, OBJ_rightUpperLeg.Position)

                    local SCRN_leftLowerArm = worldToViewportPoint(CurrentCamera, OBJ_leftLowerArm.Position)
                    local SCRN_rightLowerArm = worldToViewportPoint(CurrentCamera, OBJ_rightLowerArm.Position)

                    local SCRN_leftUpperArm = worldToViewportPoint(CurrentCamera, OBJ_leftUpperArm.Position)
                    local SCRN_rightUpperArm = worldToViewportPoint(CurrentCamera, OBJ_rightUpperArm.Position)
                    
                    local SCRN_Head = worldToViewportPoint(CurrentCamera, OBJ_Head.Position)

                    local SCRN_LeftFoot = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerLeg.CFrame * CFrame.new(0, OBJ_leftLowerLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_LeftKnee = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerLeg.CFrame * CFrame.new(0, OBJ_leftLowerLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_RightFoot = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerLeg.CFrame * CFrame.new(0, OBJ_rightLowerLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_RightKnee = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerLeg.CFrame * CFrame.new(0, OBJ_rightLowerLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_LeftThigh = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperLeg.CFrame * CFrame.new(0, OBJ_leftUpperLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_LeftHip = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperLeg.CFrame * CFrame.new(0, OBJ_leftUpperLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_RightThigh = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperLeg.CFrame * CFrame.new(0, OBJ_rightUpperLeg.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_RightHip = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperLeg.CFrame * CFrame.new(0, OBJ_rightUpperLeg.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_TorsoBottom = worldToViewportPoint(CurrentCamera, (OBJ_Torso.CFrame * CFrame.new(0, OBJ_Torso.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_TorsoTop = worldToViewportPoint(CurrentCamera, (OBJ_Torso.CFrame * CFrame.new(0, OBJ_Torso.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_LeftShoulder = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperArm.CFrame * CFrame.new(0, OBJ_leftUpperArm.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_RightShoulder = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperArm.CFrame * CFrame.new(0, OBJ_rightUpperArm.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_LeftElbow = worldToViewportPoint(CurrentCamera, (OBJ_leftUpperArm.CFrame * CFrame.new(0, OBJ_leftUpperArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_RightElbow = worldToViewportPoint(CurrentCamera, (OBJ_rightUpperArm.CFrame * CFrame.new(0, OBJ_rightUpperArm.Size.Y / 22, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    
                    local SCRN_LeftHand = worldToViewportPoint(CurrentCamera, (OBJ_leftLowerArm.CFrame * CFrame.new(0, OBJ_leftLowerArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_RightHand = worldToViewportPoint(CurrentCamera, (OBJ_rightLowerArm.CFrame * CFrame.new(0, OBJ_rightLowerArm.Size.Y / -2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    local SCRN_Head =  worldToViewportPoint(CurrentCamera, (OBJ_Head.CFrame * CFrame.new(0, OBJ_Head.Size.Y / 2, 0) * CFrame.Angles(math.pi / 2, 0, 0)).Position)
                    if onScreen and _G.SkelESPToggle then
                        leftLowerLeg.Visible = true
                        leftLowerLeg.From = Vector2.new(SCRN_LeftFoot.X, SCRN_LeftFoot.Y)
                        leftLowerLeg.To = Vector2.new(SCRN_LeftKnee.X, SCRN_LeftKnee.Y)

                        rightLowerLeg.Visible = true
                        rightLowerLeg.From = Vector2.new(SCRN_RightFoot.X, SCRN_LeftFoot.Y)
                        rightLowerLeg.To = Vector2.new(SCRN_RightKnee.X, SCRN_RightKnee.Y)
                        
                        leftUpperLeg.Visible = true
                        leftUpperLeg.From = Vector2.new(SCRN_LeftThigh.X, SCRN_LeftThigh.Y)
                        leftUpperLeg.To = Vector2.new(SCRN_LeftHip.X, SCRN_LeftHip.Y)
                        
                        rightUpperLeg.Visible = true
                        rightUpperLeg.From = Vector2.new(SCRN_RightThigh.X, SCRN_RightThigh.Y)
                        rightUpperLeg.To = Vector2.new(SCRN_RightHip.X, SCRN_RightHip.Y)
                        
                        hipLine.Visible = true
                        hipLine.From = Vector2.new(SCRN_RightHip.X, SCRN_RightHip.Y)
                        hipLine.To = Vector2.new(SCRN_LeftHip.X, SCRN_LeftHip.Y)
                        
                        Torso.Visible = true
                        Torso.From = Vector2.new(SCRN_TorsoBottom.X, SCRN_TorsoBottom.Y)
                        Torso.To = Vector2.new(SCRN_TorsoTop.X, SCRN_TorsoTop.Y)
                        
                        leftUpperArm.Visible = true
                        leftUpperArm.From = Vector2.new(SCRN_LeftShoulder.X, SCRN_LeftShoulder.Y)
                        leftUpperArm.To = Vector2.new(SCRN_LeftElbow.X, SCRN_LeftElbow.Y)
                        
                        leftLowerArm.Visible = true
                        leftLowerArm.From = Vector2.new(SCRN_LeftElbow.X, SCRN_LeftElbow.Y)
                        leftLowerArm.To = Vector2.new(SCRN_LeftHand.X, SCRN_LeftHand.Y)
                        
                        rightUpperArm.Visible = true
                        rightUpperArm.From = Vector2.new(SCRN_RightShoulder.X, SCRN_RightShoulder.Y)
                        rightUpperArm.To = Vector2.new(SCRN_RightElbow.X, SCRN_RightElbow.Y)
                        
                        rightLowerArm.Visible = true
                        rightLowerArm.From = Vector2.new(SCRN_RightElbow.X, SCRN_RightElbow.Y)
                        rightLowerArm.To = Vector2.new(SCRN_RightHand.X, SCRN_RightHand.Y)
                        
                        shoulderLine.Visible = true
                        shoulderLine.From = Vector2.new(SCRN_LeftShoulder.X, SCRN_LeftShoulder.Y)
                        shoulderLine.To = Vector2.new(SCRN_RightShoulder.X, SCRN_RightShoulder.Y)
                        
                        Head.Visible = true
                        Head.From = Vector2.new(SCRN_TorsoTop.X, SCRN_TorsoTop.Y)
                        Head.To = Vector2.new(SCRN_Head.X, SCRN_Head.Y)
                    else
                        Head.Visible = false
                        rightLowerArm.Visible = false
                        leftLowerArm.Visible = false
                        rightUpperArm.Visible = false
                        leftUpperArm.Visible = false
                        Torso.Visible = false
                        rightUpperLeg.Visible = false
                        leftUpperLeg.Visible = false
                        rightLowerLeg.Visible = false
                        leftLowerLeg.Visible = false
                        shoulderLine.Visible = false
                        hipLine.Visible = false
                    end
                if isdead(childThatsAdded) then
                    Head.Visible = false
                    rightLowerArm.Visible = false
                    leftLowerArm.Visible = false
                    rightUpperArm.Visible = false
                    leftUpperArm.Visible = false
                    Torso.Visible = false
                    rightUpperLeg.Visible = false
                    leftUpperLeg.Visible = false
                    rightLowerLeg.Visible = false
                    leftLowerLeg.Visible = false
                    shoulderLine.Visible = false
                    hipLine.Visible = false
                end
                else
                    Head.Visible = false
                    rightLowerArm.Visible = false
                    leftLowerArm.Visible = false
                    rightUpperArm.Visible = false
                    leftUpperArm.Visible = false
                    Torso.Visible = false
                    rightUpperLeg.Visible = false
                    leftUpperLeg.Visible = false
                    rightLowerLeg.Visible = false
                    leftLowerLeg.Visible = false
                    shoulderLine.Visible = false
                    hipLine.Visible = false
                end 
            end)
        end
        coroutine.wrap(drawSkeleton)()
    end
end)

wait(30)

_G.SkelESPToggle = false