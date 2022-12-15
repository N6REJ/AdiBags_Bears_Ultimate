-- AdiBags DF Elemental - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

-- Filter info
db.Filters = {
	["Elemental"] = {
		uiName = "Bears " .. Expansion .. " Elemental",
		uiDesc = "Elemental reagents found in " .. Expansion,
		title = "Elemental",
		items = {
			-- ID  = true,		--Item name
			[190326] = true, -- Rousing Air
			[190315] = true, -- Rousing Earth
			[190320] = true, -- Rousing Fire
			[190451] = true, -- Rousing Ire
			[190328] = true, -- Rousing Frost
			[190322] = true, -- Rousing Order
			[190330] = true, -- Rousing Decay
			[190331] = true, -- Awakened Decay
			[190321] = true, -- Awakened Fire
			[190327] = true, -- Awakened Air
			[190329] = true, -- Awakened Frost
			[190316] = true, -- Awakened Fire
			[190324] = true, -- Awakened Order
		}
	}
}

-- now that db is populated lets pass it on.
for _,v in ipairs(db) do
	table.insert(addonTable.Dragonflight, v)
end
