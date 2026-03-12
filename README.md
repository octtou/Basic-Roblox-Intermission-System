# Intermission System for Roblox Game
- Note: this code is very old and basic, but its fine if you still wanted to use it
# History
- Created on 6/22/2020 for my Find The Exit Roblox game
- Created on my first account octtou
- Made this using a tutorial on youtube, i forgot the tutorial it was a long time ago
# How To Use
## Set Up
- First insert a Folder on Workspace, Name it Ingame
- Insert a Server Script Inside Workspace, Name it Main
- Insert 4 Parts inside workspace (can be more than 4), Then name the First part Part1, Second Part Part2, etc
- Group the part and name it Teleports

- Should looked like this:
<img width="246" height="275" alt="image" src="https://github.com/user-attachments/assets/aa139606-d073-4190-baa1-aba62193f449" />

- On Replicated storage, Insert 2 Folders name it Games, and the other one Vals
- In Workspace Make a Map, Name it Whatever you want. inside the Map insert a Part And named it Exit
- Inside Exit add a Script

- Should looked like this:
<img width="238" height="113" alt="image" src="https://github.com/user-attachments/assets/2467e819-c30f-44a5-97cb-47bbd2f30c45" />

- Map Example, The Exit is at the end like a big door:
<img width="549" height="319" alt="image" src="https://github.com/user-attachments/assets/1c5ca1ba-2a12-4782-9add-b8943fa0fbd9" />

- Put the Map inside the Games Folder that we made
- Insert a StringValue inside Vals Folder
  
- Should looked like this:
<img width="280" height="123" alt="image" src="https://github.com/user-attachments/assets/0e2dc69b-8e6c-4dc2-b520-e4395b57aa61" />

- In Starter Gui, Insert a ScreenGui
- In ScreenGui, Insert a TextLabel and inside TextLabel Insert a LocalScript
  
- Should looked like this:
<img width="253" height="112" alt="image" src="https://github.com/user-attachments/assets/f85c71a2-af33-4334-b0ee-9192b62d02e8" />

## Code Set Up
- Copy and Paste the IntermissionServer code to Main in Workspace
- if you have more that 4 Parts inside Teleports, you can change it but never change the 1
  
```luau
for i = 1,#plrs do
	local num = math.random(1,4) -- Change this to how much teleports part you have ex: math.random(1,5)
	plrs[i].Character.Head.CFrame = CFrame.new(workspace.Teleports["Part"..num].Position)
	plrs[i].Character.Parent = workspace.Ingame
end
```

- Copy and Paste the IntermissionClient code to the LocalScript inside the Textlabel in ScreenGui
- Copy and Paste the Exit code to the Script inside Exit
# Game Linky
https://www.roblox.com/games/5218764710/Find-The-Exit
