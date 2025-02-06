local hakaiItem = game:GetService("TestService"):FindFirstChild("Hakai")
            if hakaiItem then
                local hakaiClone = hakaiItem:Clone()
                hakaiClone.Parent = LocalPlayer.Backpack
end
