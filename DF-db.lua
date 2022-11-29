-- AdiBags Bears Ultimate - Database
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

db.name = Expansion .. " Ultimate"
db.desc = "Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Meat"] = {
		uiName = Expansion .. " Meat",
		uiDesc = "Meat found in " .. Expansion,
		title = "Meat",
		items = {

		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Cooking Reagents",
		uiDesc = "Reagents from cooking vendors used in " .. Expansion,
		title = "Cooking Reagents",
		items = {

		}
	},
	["Fish"] = {
		uiName = Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name

		}
	},
	["Ore"] = {
		uiName = Expansion .. " Mining",
		uiDesc = "Ore found in " .. Expansion,
		title = "Ore",
		items = {
			-- ID  = true,		--Item name

		}
	},
	["Cloth"] = {
		uiName = Expansion .. " Tailoring",
		uiDesc = "Cloth found in " .. Expansion,
		title = "Cloth",
		items = {
			-- ID  = true,		--Item name
			[193050] = true, -- Tattered Wildercloth
			[193922] = true, -- Wildercloth
		}
	},
	["Alchemy"] = {
		uiName = Expansion .. " Alchemy",
		uiDesc = "Alchemy reagents found in " .. Expansion,
		title = "Alchemy",
		items = {
			-- ID  = true,		--Item name
			[191396] = true, -- Potion of Gusts
		}
	},
	["Pots"] = {
		uiName = Expansion .. " Raiding pots",
		uiDesc = "Potions, Oils & food used for raiding in " .. Expansion,
		title = "Pots",
		items = {
			-- ID  = true,		--Item name
			[191384] = true, -- Aerated Mana Potion
		}
	},
	["Elemental"] = {
		uiName = Expansion .. " Elemental",
		uiDesc = "Elemental reagents found in " .. Expansion,
		title = "Elemental",
		items = {
			-- ID  = true,		--Item name
			[190326] = true, -- Rousing Air
			[190315] = true, -- Rousing Earth
			[190320] = true, -- Rousing Fire
			[190451] = true, -- Rousing Ire
			[190328] = true, -- Rousing Frost
			[190321] = true, -- Awakened Fire
			[190327] = true, -- Awakened Air
			[190329] = true, -- Awakened Frost
			[190316] = true, -- Awakened Fire
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
