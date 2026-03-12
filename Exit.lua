print("door")
script.Parent.Touched:Connect(function(hit)
	local h = hit.Parent:FindFirstChild("Humanoid")
	if (h~=nil) then
		game.ReplicatedStorage.Vals.Winner.Value = hit.Parent.Name
		script.Parent:Destroy()
	end
end)
