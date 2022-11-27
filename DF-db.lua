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
			[172052] = true, -- Aethereal Meat
			[172053] = true, -- Tenebrous Ribs
			[172054] = true, -- Raw Seraphic Wing
			[172055] = true, -- Phantasmal Haunch
			[179314] = true, -- Creeping Crawler Meat
			[179315] = true, -- Shadowy Shank
			[187704] = true -- Protoflesh
		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Cooking Reagents",
		uiDesc = "Reagents from cooking vendors used in " .. Expansion,
		title = "Cooking Reagents",
		items = {
			[172056] = true, -- Medley of Transplanar Spices
			[172057] = true, -- Inconceivably Aged Vinegar
			[172058] = true, -- Smuggled Azerothian Produce
			[172059] = true, -- Rich Grazer Milk
			[178786] = true, -- Lusterwheat Flour
			[159] = true, -- Refreshing spring water - [ Required for kettle of stone soup ]
			[187812] = true -- Empty Kettle - [ Required for kettle of stone soup ]
		}
	},
	["Fish"] = {
		uiName = Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name
			[173032] = true, -- Lost Sole
			[173033] = true, -- Iridescent Amberjack
			[173034] = true, -- Silvergill Pike
			[173035] = true, -- Pocked Bonefish
			[173036] = true, -- Spinefin Piranha
			[173037] = true, -- Elysian Thade
			[174327] = true, -- Malformed Gnasher
			[187702] = true -- Precurser Placoderm
		}
	},
	["Ore"] = {
		uiName = Expansion .. " Mining",
		uiDesc = "Ore found in " .. Expansion,
		title = "Ore",
		items = {
			-- ID  = true,		--Item name
			[171841] = true -- Shaded Stone - [ Required for kettle of stone soup ]
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
