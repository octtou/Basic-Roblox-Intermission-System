print("edit hire")
local s = script.Stat
local Vals = game.ReplicatedStorage.Vals
t = 0
while true do
	t = 15
	repeat
		t = t-1
		s.Value = "Intermision..."..t
		wait(1)
	until t == 0
	s.Value = "Game starting"
	wait(2)
	local mapselect = game.ReplicatedStorage.Games:GetChildren()
	local choose = math.random(1,#mapselect)
	curnum = 0
	for i =1,#mapselect do
		curnum = curnum +1
		if curnum == choose then
			mapselect[i]:Clone().Parent = workspace
			curmap = mapselect[i].Name
			s.Value = "We'll be playing"..mapselect[i].Name
		end
	end
	wait(3)
	local plrs = game.Players:GetChildren()
	for i = 1,#plrs do
		local num = math.random(1,4) -- Change this to how much teleports part you have
		plrs[i].Character.Head.CFrame = CFrame.new(workspace.Teleports["Part"..num].Position) -- Change the "Part" to the name of the Teleport part
		plrs[i].Character.Parent = workspace.Ingame
	end
	t=100
	repeat
		t = t-1
		s.Value = t.." second left"
		wait(1)
	until t ==0 or Vals.Winner.Value ~= ""
	if Vals.Winner.Value ~= "" then
		s.Value = Vals.Winner.Value.."has found the exit!"
	end
	wait(3)
	local Ingame = workspace.Ingame:GetChildren()
	for i =1,#Ingame do
		    local plr = game.Players:GetPlayerFromCharacter(Ingame[i])
		plr:loadCharacter()
		workspace[curmap]:Destroy()
	end	
end
