local NotificationHolder = SetProps(SetChildren(MakeElement("TFrame"), {
    SetProps(MakeElement("List"), {
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Top,
        Padding = UDim.new(0, 5)
    })
}), {
    Position = UDim2.new(1, -1, 0, -56),
    Size = UDim2.new(0, 300, 1, -25),
    AnchorPoint = Vector2.new(1, 0),
    Parent = Orion
})

function OrionLib:MakeNotification(NotificationConfig)
    spawn(function()
        NotificationConfig.Name = NotificationConfig.Name or "Notification"
        NotificationConfig.Content = NotificationConfig.Content or "Test"
        NotificationConfig.Image = NotificationConfig.Image or "rbxassetid://4384403532"
        NotificationConfig.Time = NotificationConfig.Time or 15

        local NotificationParent = Instance.new("Frame")
        NotificationParent.Name = "NotificationParent"
        NotificationParent.Size = UDim2.new(1, 0, 0, 0)
        NotificationParent.AutomaticSize = Enum.AutomaticSize.None
        NotificationParent.BackgroundTransparency = 1
        NotificationParent.ClipsDescendants = true
        NotificationParent.Parent = NotificationHolder

        local NotificationFrame = Instance.new("Frame")
        NotificationFrame.Name = "NotificationFrame"
        NotificationFrame.Size = UDim2.new(1, 0, 0, 0)
        NotificationFrame.Position = UDim2.new(1, 30, 0, 0)
        NotificationFrame.AutomaticSize = Enum.AutomaticSize.Y
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.Parent = NotificationParent

        local NotificationCorner = Instance.new("UICorner")
        NotificationCorner.CornerRadius = UDim.new(0, 16)
        NotificationCorner.Parent = NotificationFrame

        local Stroke = Instance.new("UIStroke")
        Stroke.Color = Color3.fromRGB(93, 93, 93)
        Stroke.Thickness = 1.2
        Stroke.Transparency = 0
        Stroke.Parent = NotificationFrame

        local ListLayout = Instance.new("UIListLayout")
        ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ListLayout.Padding = UDim.new(0, 8)
        ListLayout.Parent = NotificationFrame

        local Padding = Instance.new("UIPadding")
        Padding.PaddingLeft = UDim.new(0, 12)
        Padding.PaddingRight = UDim.new(0, 12)
        Padding.PaddingTop = UDim.new(0, 12)
        Padding.PaddingBottom = UDim.new(0, 12)
        Padding.Parent = NotificationFrame

        local Header = Instance.new("Frame")
        Header.Name = "Header"
        Header.Size = UDim2.new(1, 0, 0, 20)
        Header.BackgroundTransparency = 1
        Header.LayoutOrder = 1
        Header.Parent = NotificationFrame

        local Icon = Instance.new("ImageLabel")
        Icon.Name = "Icon"
        Icon.Size = UDim2.new(0, 20, 0, 20)
        Icon.Position = UDim2.new(0, 0, 0, 0)
        Icon.BackgroundTransparency = 1
        Icon.Image = NotificationConfig.Image
        Icon.ImageColor3 = Color3.fromRGB(240, 240, 240)
        Icon.Parent = Header

        local Title = Instance.new("TextLabel")
        Title.Name = "Title"
        Title.Size = UDim2.new(1, -30, 0, 20)
        Title.Position = UDim2.new(0, 30, 0, 0)
        Title.BackgroundTransparency = 1
        Title.Text = NotificationConfig.Name
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15
        Title.Font = Enum.Font.GothamBold
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.TextYAlignment = Enum.TextYAlignment.Center
        Title.Parent = Header

        local Content = Instance.new("TextLabel")
        Content.Name = "Content"
        Content.Size = UDim2.new(1, 0, 0, 0)
        Content.AutomaticSize = Enum.AutomaticSize.Y
        Content.BackgroundTransparency = 1
        Content.Text = NotificationConfig.Content
        Content.TextColor3 = Color3.fromRGB(200, 200, 200)
        Content.TextSize = 14
        Content.Font = Enum.Font.GothamSemibold
        Content.TextWrapped = true
        Content.TextXAlignment = Enum.TextXAlignment.Left
        Content.TextYAlignment = Enum.TextYAlignment.Top
        Content.LayoutOrder = 2
        Content.Parent = NotificationFrame

        local ProgressOuter = Instance.new("Frame")
        ProgressOuter.Name = "ProgressOuter"
        ProgressOuter.Size = UDim2.new(1, 0, 0, 10)
        ProgressOuter.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        ProgressOuter.BorderSizePixel = 0
        ProgressOuter.LayoutOrder = 3
        ProgressOuter.Parent = NotificationFrame

        local ProgressOuterCorner = Instance.new("UICorner")
        ProgressOuterCorner.CornerRadius = UDim.new(1, 0)
        ProgressOuterCorner.Parent = ProgressOuter

        local ProgressOuterStroke = Instance.new("UIStroke")
        ProgressOuterStroke.Color = Color3.fromRGB(70, 70, 70)
        ProgressOuterStroke.Thickness = 1
        ProgressOuterStroke.Transparency = 0.15
        ProgressOuterStroke.Parent = ProgressOuter

        local ProgressInner = Instance.new("Frame")
        ProgressInner.Name = "ProgressInner"
        ProgressInner.Size = UDim2.new(1, -4, 1, -4)
        ProgressInner.Position = UDim2.new(0, 2, 0, 2)
        ProgressInner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ProgressInner.BorderSizePixel = 0
        ProgressInner.ClipsDescendants = true
        ProgressInner.Parent = ProgressOuter

        local ProgressInnerCorner = Instance.new("UICorner")
        ProgressInnerCorner.CornerRadius = UDim.new(1, 0)
        ProgressInnerCorner.Parent = ProgressInner

        local ProgressBar = Instance.new("Frame")
        ProgressBar.Name = "ProgressBar"
        ProgressBar.Size = UDim2.new(0, 0, 1, 0)
        ProgressBar.Position = UDim2.new(0, 0, 0, 0)
        ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ProgressBar.BorderSizePixel = 0
        ProgressBar.Parent = ProgressInner

        local ProgressBarCorner = Instance.new("UICorner")
        ProgressBarCorner.CornerRadius = UDim.new(1, 0)
        ProgressBarCorner.Parent = ProgressBar

        local ProgressHighlight = Instance.new("Frame")
        ProgressHighlight.Name = "ProgressHighlight"
        ProgressHighlight.Size = UDim2.new(1, 0, 0.45, 0)
        ProgressHighlight.Position = UDim2.new(0, 0, 0, 0)
        ProgressHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ProgressHighlight.BackgroundTransparency = 0.78
        ProgressHighlight.BorderSizePixel = 0
        ProgressHighlight.Parent = ProgressBar

        local ProgressHighlightCorner = Instance.new("UICorner")
        ProgressHighlightCorner.CornerRadius = UDim.new(1, 0)
        ProgressHighlightCorner.Parent = ProgressHighlight

        local ProgressTip = Instance.new("Frame")
        ProgressTip.Name = "ProgressTip"
        ProgressTip.AnchorPoint = Vector2.new(1, 0.5)
        ProgressTip.Size = UDim2.new(0, 10, 0, 10)
        ProgressTip.Position = UDim2.new(1, 0, 0.5, 0)
        ProgressTip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ProgressTip.BackgroundTransparency = 0.12
        ProgressTip.BorderSizePixel = 0
        ProgressTip.Parent = ProgressBar

        local ProgressTipCorner = Instance.new("UICorner")
        ProgressTipCorner.CornerRadius = UDim.new(1, 0)
        ProgressTipCorner.Parent = ProgressTip

        task.wait(0.02)
        NotificationParent.AutomaticSize = Enum.AutomaticSize.Y

        TweenService:Create(
            NotificationFrame,
            TweenInfo.new(0.6, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
            {
                Position = UDim2.new(0, 0, 0, 0)
            }
        ):Play()

        TweenService:Create(
            ProgressBar,
            TweenInfo.new(NotificationConfig.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {
                Size = UDim2.new(1, 0, 1, 0)
            }
        ):Play()

        wait(NotificationConfig.Time - 0.5)

        local fadeTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        
        TweenService:Create(NotificationFrame, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(Stroke, fadeTweenInfo, {Transparency = 1}):Play()
        TweenService:Create(Icon, fadeTweenInfo, {ImageTransparency = 1}):Play()
        TweenService:Create(Title, fadeTweenInfo, {TextTransparency = 1}):Play()
        TweenService:Create(Content, fadeTweenInfo, {TextTransparency = 1}):Play()
        TweenService:Create(ProgressOuter, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(ProgressInner, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(ProgressBar, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(ProgressHighlight, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(ProgressTip, fadeTweenInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(ProgressOuterStroke, fadeTweenInfo, {Transparency = 1}):Play()

        TweenService:Create(
            NotificationFrame,
            TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.In),
            {
                Position = UDim2.new(1, 30, 0, 0)
            }
        ):Play()

        wait(0.4)

        NotificationParent.AutomaticSize = Enum.AutomaticSize.None
        TweenService:Create(
            NotificationParent,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {
                Size = UDim2.new(1, 0, 0, 0)
            }
        ):Play()

        wait(0.3)
        NotificationParent:Destroy()
    end)
end
