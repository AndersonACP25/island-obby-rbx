--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local shared = ReplicatedStorage:WaitForChild("IslaObbyShared")
local config = require(shared:WaitForChild("GameConfig") :: ModuleScript)

print(string.format("[%s] Servidor listo - v%s", config.Name, config.Version))
