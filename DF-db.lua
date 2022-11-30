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

db.name = "Bears " .. Expansion .. " Ultimate"
db.desc = "Items & Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Meat"] = {
		uiName = Expansion .. " Meat",
		uiDesc = "Meat found in " .. Expansion,
		title = "Meat",
		items = {
			-- ID  = true,		--Item name
			[197741] = true,-- Maybe meat
			[197747] = true,-- Mighty Mammoth Ribs
		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Vendor Reagents",
		uiDesc = "Reagents from vendors used in " .. Expansion,
		title = "Vendor",
		items = {
			-- ID  = true,		--Item name

			-- Inscription
			[194784] = true, -- Glittering Parchment
		}
	},
	--[[	["Fish"] = {
		uiName = Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name

		}
	},
--]] ["Ore"] = {
		uiName = Expansion .. " Mining",
		uiDesc = "Ore found in " .. Expansion,
		title = "Ore",
		items = {
			-- ID  = true,		--Item name
			[193394] = true, -- Serevite Ore
			[193395] = true, -- Serevite Ore
			[193396] = true, -- Serevite Ore
			[189143] = true, -- Draconium Ore 1
			[188658] = true, -- Draconium Ore 2
			[190311] = true, -- Draconium Ore 3
			-- Cooking!!!!!!
			[197754] = true,-- Cooking reagent!!
		}
	},
	["Cloth"] = {
		uiName = Expansion .. " Tailoring",
		uiDesc = "Cloth found in " .. Expansion,
		title = "Cloth",
		items = {
			-- ID  = true,		--Item name
			[193050] = true, -- Tattered Wildercloth
			[193922] = true,-- Wildercloth
		}
	},
	["Alchemy"] = {
		uiName = Expansion .. " Alchemy",
		uiDesc = "Alchemy reagents found in " .. Expansion,
		title = "Alchemy",
		items = {
			-- ID  = true,		--Item name
			[191396] = true,-- Potion of Gusts
		}
	},
	["Pots"] = {
		uiName = Expansion .. " Raiding pots",
		uiDesc = "Potions, Oils & food used for raiding in " .. Expansion,
		title = "Pots",
		items = {
			-- ID  = true,		--Item name
			[191384] = true, -- Aerated Mana Potion
			[191393] = true, -- Potion of the Hushed Zephyr
			[191378] = true,-- Refreshing Healing Potion
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
	},
	["Crafted_Reagents"] = {
		uiName = Expansion .. " Crafted Reagents",
		uiDesc = "Assorted crafted reagents used in " .. Expansion,
		title = "Crafted Reagents",
		items = {
			-- ID  = true,		--Item name
			[191511] = true, -- Stable Fluidic Draconium 1
			[191512] = true, -- Stable Fluidic Draconium 2
			[191513] = true, -- Stable Fluidic Draconium 3
			[190455] = true, -- Concentrated Primal Focus
			[198046] = true, -- Concentrated Primal Infusion
			[197921] = true,-- Primal Infusion
			[194728] = true,-- Fiery Spirit 1
			[194727] = true,-- Fiery Spirit 2
			[194729] = true,-- Fiery Spirit 3
		}
	},
	["Zone_Reagents"] = {
		uiName = "Special Reagents",
		uiDesc = "Special reagents from " .. Expansion,
		title = "DF Mats",
		items = {
			-- ID  = true,		--Item name
			[190454] = true, -- Primal Chaos
			[202122] = true, -- Primal Chaos Cluster
			[200686] = true, -- Primal Focus
			[190456] = true,-- Artisan's Mettle
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
