-- Define the notification message
local notificationMessage = "Overall Connected <>-//-))"


local mainImageAssetId = 14943999371 -- Replace with your main image Asset ID
local additionalImageAssetId = 14931217247

-- Create a ScreenGui for the notification
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create an ImageLabel for the main image
local mainImage = Instance.new("ImageLabel")
mainImage.Size = UDim2.new(0.14, 0, 0.08, 0) -- Adjust the size as needed
mainImage.Position = UDim2.new(0.85, 0, 0.85, 0) -- Adjust the position as needed
mainImage.Image = "rbxassetid://" .. mainImageAssetId
mainImage.BackgroundTransparency = 1
mainImage.Parent = screenGui

-- Create a TextLabel for the notification message
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.0, 0, 0.0, 0) -- Adjust the size as needed
textLabel.Position = UDim2.new(0.90, 0, 0.89, 0) -- Adjust the position as needed
textLabel.Text = notificationMessage
textLabel.TextColor3 = Color3.new(1, 1, 1) -- White text
textLabel.FontSize = Enum.FontSize.Size18 -- Adjust the font size as needed
textLabel.Font = Enum.Font.SourceSansBold -- Use a bold font
textLabel.Parent = screenGui

-- Create an ImageLabel for the additional image
local additionalImage = Instance.new("ImageLabel")
additionalImage.Size = UDim2.new(0.03, 0, 0.05, 0) -- Adjust the size as needed
additionalImage.Position = UDim2.new(0.95, 0, 0.864, 0) -- Adjust the position as needed
additionalImage.Image = "rbxassetid://" .. additionalImageAssetId
additionalImage.BackgroundTransparency = 1
additionalImage.Parent = screenGui

-- Function to fade out and remove the notification
local function fadeOutNotification()
    for i = 1, 10 do
        mainImage.ImageTransparency = i / 10
        textLabel.TextTransparency = i / 10
        additionalImage.ImageTransparency = i / 10
        wait(0.1)
    end
    mainImage:Destroy()
    textLabel:Destroy()
    additionalImage:Destroy()
end

-- Display the notification and start the fade-out process
wait(3) -- Adjust the duration as needed (in seconds)
fadeOutNotification()
