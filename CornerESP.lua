local _CORNERESPCOLOR = Color3.new(255,255,255)

local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    --LINES--
    local leftUpHorizontal = Drawing.new("Line")
    local leftUpVertical = Drawing.new("Line")
    leftUpHorizontal.Visible = false
    leftUpHorizontal.Color = _CORNERESPCOLOR
    leftUpHorizontal.Thickness = 2
    leftUpHorizontal.Transparency = 1
    leftUpHorizontal.ZIndex = 1

    leftUpVertical.Visible = false
    leftUpVertical.Color = _CORNERESPCOLOR
    leftUpVertical.Thickness = 2
    leftUpVertical.Transparency = 1

    
    local rightUpHorizontal = Drawing.new("Line")
    local rightUpVertical = Drawing.new("Line")
    rightUpHorizontal.Visible = false
    rightUpHorizontal.Color = _CORNERESPCOLOR
    rightUpHorizontal.Thickness = 2
    rightUpHorizontal.Transparency = 1

    rightUpVertical.Visible = false
    rightUpVertical.Color = _CORNERESPCOLOR
    rightUpVertical.Thickness = 2
    rightUpVertical.Transparency = 1


    local leftDownHorizontal = Drawing.new("Line")
    local leftDownVertical = Drawing.new("Line")
    leftDownHorizontal.Visible = false
    leftDownHorizontal.Color = _CORNERESPCOLOR
    leftDownHorizontal.Thickness = 2
    leftDownHorizontal.Transparency = 1
    
    leftDownVertical.Visible = false
    leftDownVertical.Color = _CORNERESPCOLOR
    leftDownVertical.Thickness = 2
    leftDownVertical.Transparency = 1


    local rightDownHorizontal = Drawing.new("Line")
    local rightDownVertical = Drawing.new("Line")
    rightDownHorizontal.Visible = false
    rightDownHorizontal.Color = _CORNERESPCOLOR
    rightDownHorizontal.Thickness = 2
    rightDownHorizontal.Transparency = 1
    
    rightDownVertical.Visible = false
    rightDownVertical.Color = _CORNERESPCOLOR
    rightDownVertical.Thickness = 2
    rightDownVertical.Transparency = 1

    function stationCorners()
        game:GetService("RunService").RenderStepped:Connect(function ()
            if v and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local VectorWTF, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
                if onScreen then
                    local idkwtfimdoing = (1000 / RootPosition.Z)
                    --UPLEFT--
                    leftUpVertical.Visible = true
                    leftUpVertical.From = Vector2.new(RootPosition.X - (idkwtfimdoing), HeadPosition.Y)
                    leftUpVertical.To = Vector2.new(RootPosition.X - (idkwtfimdoing), HeadPosition.Y - idkwtfimdoing)
                
                    leftUpHorizontal.Visible = true
                    leftUpHorizontal.From = Vector2.new(HeadPosition.X - (idkwtfimdoing/3), HeadPosition.Y - idkwtfimdoing)
                    leftUpHorizontal.To = Vector2.new(HeadPosition.X - idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    --UPRIGHT--
                    rightUpHorizontal.Visible = true
                    rightUpHorizontal.From = Vector2.new(HeadPosition.X + idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    rightUpHorizontal.To = Vector2.new(HeadPosition.X + (idkwtfimdoing/3), HeadPosition.Y - idkwtfimdoing)

                    rightUpVertical.Visible = true
                    rightUpVertical.From = Vector2.new(RootPosition.X + idkwtfimdoing, HeadPosition.Y)
                    rightUpVertical.To = Vector2.new(RootPosition.X + idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    --DOWNLEFT--
                    leftDownVertical.Visible = true
                    leftDownVertical.From = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y - idkwtfimdoing )
                    leftDownVertical.To = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y)
                
                    leftDownHorizontal.Visible = true
                    leftDownHorizontal.From = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y)
                    leftDownHorizontal.To = Vector2.new(LegPosition.X - (idkwtfimdoing/3), LegPosition.Y)
                    --DOWNRIGHT--
                    rightDownVertical.Visible = true
                    rightDownVertical.From = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y - idkwtfimdoing )
                    rightDownVertical.To = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y)

                    rightDownHorizontal.Visible = true
                    rightDownHorizontal.From = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y)
                    rightDownHorizontal.To = Vector2.new(LegPosition.X + (idkwtfimdoing/3), LegPosition.Y)
                else
                    leftUpVertical.Visible = false
                    leftUpHorizontal.Visible = false
                    rightUpHorizontal.Visible = false
                    rightUpVertical.Visible = false
                    leftDownVertical.Visible = false
                    leftDownHorizontal.Visible = false
                    rightDownVertical.Visible = false
                    rightDownHorizontal.Visible = false
                end
            else
                leftUpVertical.Visible = false
                leftUpHorizontal.Visible = false
                rightUpHorizontal.Visible = false
                rightUpVertical.Visible = false
                leftDownVertical.Visible = false
                leftDownHorizontal.Visible = false
                rightDownVertical.Visible = false
                rightDownHorizontal.Visible = false
            end
        end)
    end
    coroutine.wrap(stationCorners)()
end

game.Players.PlayerAdded:Connect(function(youshouldkillyourselfNOW)
    local leftUpHorizontal = Drawing.new("Line")
    local leftUpVertical = Drawing.new("Line")
    leftUpHorizontal.Visible = false
    leftUpHorizontal.Color = _CORNERESPCOLOR
    leftUpHorizontal.Thickness = 2
    leftUpHorizontal.Transparency = 1

    leftUpVertical.Visible = false
    leftUpVertical.Color = _CORNERESPCOLOR
    leftUpVertical.Thickness = 2
    leftUpVertical.Transparency = 1

    
    local rightUpHorizontal = Drawing.new("Line")
    local rightUpVertical = Drawing.new("Line")
    rightUpHorizontal.Visible = false
    rightUpHorizontal.Color = _CORNERESPCOLOR
    rightUpHorizontal.Thickness = 2
    rightUpHorizontal.Transparency = 1

    rightUpVertical.Visible = false
    rightUpVertical.Color = _CORNERESPCOLOR
    rightUpVertical.Thickness = 2
    rightUpVertical.Transparency = 1


    local leftDownHorizontal = Drawing.new("Line")
    local leftDownVertical = Drawing.new("Line")
    leftDownHorizontal.Visible = false
    leftDownHorizontal.Color = _CORNERESPCOLOR
    leftDownHorizontal.Thickness = 2
    leftDownHorizontal.Transparency = 1
    
    leftDownVertical.Visible = false
    leftDownVertical.Color = _CORNERESPCOLOR
    leftDownVertical.Thickness = 2
    leftDownVertical.Transparency = 1


    local rightDownHorizontal = Drawing.new("Line")
    local rightDownVertical = Drawing.new("Line")
    rightDownHorizontal.Visible = false
    rightDownHorizontal.Color = _CORNERESPCOLOR
    rightDownHorizontal.Thickness = 2
    rightDownHorizontal.Transparency = 1
    
    rightDownVertical.Visible = false
    rightDownVertical.Color = _CORNERESPCOLOR
    rightDownVertical.Thickness = 2
    rightDownVertical.Transparency = 1

    function stationCorners()
        game:GetService("RunService").RenderStepped:Connect(function ()
            if youshouldkillyourselfNOW and youshouldkillyourselfNOW.Character ~= nil and youshouldkillyourselfNOW.Character:FindFirstChild("Humanoid") and youshouldkillyourselfNOW.Character:FindFirstChild("HumanoidRootPart") and youshouldkillyourselfNOW ~= lplr and youshouldkillyourselfNOW.Character.Humanoid.Health > 0 then
                local VectorWTF, onScreen = camera:worldToViewportPoint(youshouldkillyourselfNOW.Character.HumanoidRootPart.Position)
                local RootPart = youshouldkillyourselfNOW.Character.HumanoidRootPart
                local Head = youshouldkillyourselfNOW.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
                if onScreen then
                    local idkwtfimdoing = (1000 / RootPosition.Z)
                    --UPLEFT--
                    leftUpVertical.Visible = true
                    leftUpVertical.From = Vector2.new(HeadPosition.X - idkwtfimdoing, HeadPosition.Y)
                    leftUpVertical.To = Vector2.new(HeadPosition.X -idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                
                    leftUpHorizontal.Visible = true
                    leftUpHorizontal.From = Vector2.new(HeadPosition.X - (idkwtfimdoing/3), HeadPosition.Y - idkwtfimdoing)
                    leftUpHorizontal.To = Vector2.new(HeadPosition.X - idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    --UPRIGHT--
                    rightUpHorizontal.Visible = true
                    rightUpHorizontal.From = Vector2.new(HeadPosition.X + idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    rightUpHorizontal.To = Vector2.new(HeadPosition.X + (idkwtfimdoing/3), HeadPosition.Y - idkwtfimdoing)

                    rightUpVertical.Visible = true
                    rightUpVertical.From = Vector2.new(HeadPosition.X + idkwtfimdoing, HeadPosition.Y)
                    rightUpVertical.To = Vector2.new(HeadPosition.X + idkwtfimdoing, HeadPosition.Y - idkwtfimdoing)
                    --DOWNLEFT--
                    leftDownVertical.Visible = true
                    leftDownVertical.From = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y - idkwtfimdoing )
                    leftDownVertical.To = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y)
                
                    leftDownHorizontal.Visible = true
                    leftDownHorizontal.From = Vector2.new(LegPosition.X - idkwtfimdoing, LegPosition.Y)
                    leftDownHorizontal.To = Vector2.new(LegPosition.X - (idkwtfimdoing/3), LegPosition.Y)
                    --DOWNRIGHT--
                    rightDownVertical.Visible = true
                    rightDownVertical.From = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y - idkwtfimdoing )
                    rightDownVertical.To = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y)

                    rightDownHorizontal.Visible = true
                    rightDownHorizontal.From = Vector2.new(LegPosition.X + idkwtfimdoing, LegPosition.Y)
                    rightDownHorizontal.To = Vector2.new(LegPosition.X + (idkwtfimdoing/3), LegPosition.Y)
                else
                    leftUpVertical.Visible = false
                    leftUpHorizontal.Visible = false
                    rightUpHorizontal.Visible = false
                    rightUpVertical.Visible = false
                    leftDownVertical.Visible = false
                    leftDownHorizontal.Visible = false
                    rightDownVertical.Visible = false
                    rightDownHorizontal.Visible = false
                end
            else
                leftUpVertical.Visible = false
                leftUpHorizontal.Visible = false
                rightUpHorizontal.Visible = false
                rightUpVertical.Visible = false
                leftDownVertical.Visible = false
                leftDownHorizontal.Visible = false
                rightDownVertical.Visible = false
                rightDownHorizontal.Visible = false
            end
        end)
    end
    coroutine.wrap(stationCorners)()
end)