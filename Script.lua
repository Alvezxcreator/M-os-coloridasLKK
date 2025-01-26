
```lua
local player = game.Players.LocalPlayer
local character = player.Character

-- Verifica se o personagem está pronto
while not character do
character = player.Character
wait()
end

-- Encontra as mãos do personagem
local rightHand = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm")
local leftHand = character:FindFirstChild("LeftHand") or character:FindFirstChild("Left Arm")

-- Cria o efeito de rastro colorido
local function createTrail(hand)
local trail = Instance.new("Trail")
trail.Parent = hand
trail.Name = "ColorfulTrail"
trail.Lifetime = 0.5
trail.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0),
NumberSequenceKeypoint.new(1, 1)
})
trail.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
ColorSequenceKeypoint.new(0.2, Color3.new(1, 1, 0)),
ColorSequenceKeypoint.new(0.4, Color3.new(0, 1, 0)),
ColorSequenceKeypoint.new(0.6, Color3.new(0, 1, 1)),
ColorSequenceKeypoint.new(0.8, Color3.new(0, 0, 1)),
ColorSequenceKeypoint.new(1, Color3.new(1, 0, 1))
})
trail.Width0 = 0.5
trail.Width1 = 0.05
end

createTrail(rightHand)
createTrail(leftHand)

-- Dá os créditos no chat
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "HumanGPT is fire🔥"
})
```
