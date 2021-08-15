local userInput = game:GetService("UserInputService")
local ws = workspace
local plrs = game:GetService("Players")
local rService = game:GetService("RunService")
local sGui = game:GetService("StarterGui")

--reg variables
local lp = plrs.LocalPlayer
local chara = lp.Character or lp.CharacterAdded:Wait()
local camera = ws.CurrentCamera
local mouse = lp:GetMouse()

local selected = "Right"
local range = 0.01
local plrGui = lp.PlayerGui
local gameUI = plrGui.GameUI
local arrows = gameUI.Arrows
local sel = arrows[selected]

local left = sel.Left
local up = sel.Up
local right = sel.Right
local down = sel.Down

left.ChildAdded:Connect(function(obj)
    local receptor = left.Receptor
    local ifPress = false
    if obj.Name == "Note" then
        obj:GetPropertyChangedSignal("Position"):Connect(function()
            if obj.Position.Y.Scale >= -range and obj.Position.Y.Scale <= range then
                print("CLOSE")
                if not ifPress then
                    keypress(0x41)
                    wait(0.05)
                    keyrelease(0x41)
                    ifPress = true
                end
            end
            --print(obj.Position)
        end)
    end
end)

up.ChildAdded:Connect(function(obj)
    local receptor = up.Receptor
    local ifPress = false
    if obj.Name == "Note" then
        obj:GetPropertyChangedSignal("Position"):Connect(function()
            if obj.Position.Y.Scale >= -range and obj.Position.Y.Scale <= range then
                print("CLOSE")
                if not ifPress then
                    keypress(0x57)
                    wait(0.05)
                    keyrelease(0x57)
                    ifPress = true
                end
            end
            --print(obj.Position)
        end)
    end
end)

right.ChildAdded:Connect(function(obj)
    local receptor = right.Receptor
    local ifPress = false
    if obj.Name == "Note" then
        obj:GetPropertyChangedSignal("Position"):Connect(function()
            if obj.Position.Y.Scale >= -range and obj.Position.Y.Scale <= range then
                print("CLOSE")
                if not ifPress then
                    keypress(0x44)
                    wait(0.05)
                    keyrelease(0x44)
                    ifPress = true
                end
            end
            --print(obj.Position)
        end)
    end
end)

down.ChildAdded:Connect(function(obj)
    local receptor = down.Receptor
    local ifPress = false
    if obj.Name == "Note" then
        obj:GetPropertyChangedSignal("Position"):Connect(function()
            if obj.Position.Y.Scale >= -range and obj.Position.Y.Scale <= range then
                print("CLOSE")
                if not ifPress then
                    keypress(0x53)
                    wait(0.05)
                    keyrelease(0x53)
                    ifPress = true
                end
            end
            --print(obj.Position)
        end)
    end
end)
