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
	["Ore"] = {
		uiName = Expansion .. " Mining",
		uiDesc = "Ore found in " .. Expansion,
		title = "Ore",
		items = {
			-- ID  = true,		--Item name
			[190394] = true, -- Serevite Ore
			[190395] = true, -- Serevite Ore
			[190396] = true, -- Serevite Ore
			[189143] = true, -- Draconium Ore 1
			[188658] = true, -- Draconium Ore 2
			[190311] = true, -- Draconium Ore 3
		}
	},
	["Pots"] = {
		uiName = Expansion .. " Raiding pots",
		uiDesc = "Potions, Oils & food used for raiding in " .. Expansion,
		title = "Pots",
		items = {
			-- ID  = true,		--Item name
			[191384] = true, -- Aerated Mana Potion 1
			[191385] = true, -- Aerated Mana Potion 2
			[191386] = true, -- Aerated Mana Potion 3
			[191393] = true, -- Potion of the Hushed Zephyr
			[191378] = true, -- Refreshing Healing Potion 1
			[191379] = true, -- Refreshing Healing Potion 2
			[191380] = true, -- Refreshing Healing Potion 3
			[191396] = true, -- Potion of gusts 1
			[191397] = true, -- Potion of gusts 2
			[191398] = true, -- Potion of gusts 3
			[191372] = true, -- Residual Neural Channeling Agent 1
			[191373] = true, -- Residual Neural Channeling Agent 2
			[191374] = true, -- Residual Neural Channeling Agent 3
		}
	},
	["Phials"] = {
		uiName = Expansion .. " Phials",
		uiDesc = "Phials used in " .. Expansion,
		title = "Phials",
		items = {
			-- ID  = true,		--Item name
			[370746] = true, -- Basic Phial Experimentation
			[370747] = true, -- Advanced Phial Experimentation
			[370457] = true, -- Iced Phial of Corrupting Rage
			[191357] = true, -- Phial of Elemental chaos 1
			[191358] = true, -- Phial of Elemental chaos 2
			[191359] = true, -- Phial of Elemental chaos 3
			[191333] = true, -- Phial of Glacial Fury 1
			[191334] = true, -- Phial of Glacial Fury 2
			[191335] = true, -- Phial of Glacial Fury 3
			[191342] = true, -- Aerated Phial of Deftness 1
			[191343] = true, -- Aerated Phial of Deftness 2
			[191344] = true, -- Aerated Phial of Deftness 3
			[191354] = true, -- Crystalline Phial of Perception 1
			[191355] = true, -- Crystalline Phial of Perception 2
			[191356] = true, -- Crystalline Phial of Perception 3
			[191345] = true, -- Steaming Phial of Finesse 1
			[191346] = true, -- Steaming Phial of Finesse 2
			[191347] = true, -- Steaming Phial of Finesse 3
			[191339] = true, -- Phial of Tepid Versatility 1
			[191340] = true, -- Phial of Tepid Versatility 2
			[191341] = true, -- Phial of Tepid Versatility 3
			[191318] = true, -- Phial of the Eye in the Storm 1
			[191319] = true, -- Phial of the Eye in the Storm 2
			[191320] = true, -- Phial of the Eye in the Storm 3
			[191324] = true, -- Phial of Icy Preservation 1
			[191325] = true, -- Phial of Icy Preservation 2
			[191326] = true, -- Phial of Icy Preservation 3
			[191336] = true, -- Phial of Static Empowerment 1
			[191337] = true, -- Phial of Static Empowerment 2
			[191338] = true, -- Phial of Static Empowerment 3
			[197720] = true, -- Aerated Phial of Quick Hands 1
			[197721] = true, -- Aerated Phial of Quick Hands 2
			[197722] = true, -- Aerated Phial of Quick Hands 3
			[191339] = true, -- Phial of Still Air 1
			[191340] = true, -- Phial of Still Air 2
			[191341] = true, -- Phial of Still Air 3
			[191523] = true, -- Reactive Phial Embellishment 1
			[191524] = true, -- Reactive Phial Embellishment 2
			[191525] = true, -- Reactive Phial Embellishment 3
			[191330] = true, -- Phial of Charged Isolation 1
			[191331] = true, -- Phial of Charged Isolation 2
			[191332] = true, -- Phial of Charged Isolation 3
			[191348] = true, -- Charged Phial of Alacrity 1
			[191349] = true, -- Charged Phial of Alacrity 2
			[191350] = true, -- Charged Phial of Alacrity 3
		}
	},
	["Food"] = {
		uiName = Expansion .. " Raiding Food",
		uiDesc = "Food used for raiding in " .. Expansion,
		title = "Food",
		items = {
			-- ID  = true,		--Item name
			[197760] = true, -- Mackerel Snackerel
			[197761] = true, -- Probably Protein
			[197770] = true, -- Zesty Water
			[197777] = true, -- Hopefully Healthy
			[197772] = true, -- CHurnbelly Tea
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
			[197921] = true, -- Primal Infusion
			[194728] = true, -- Fiery Spirit 1
			[194727] = true, -- Fiery Spirit 2
			[194729] = true, -- Fiery Spirit 3
			[197757] = true, -- Assorted Exotic Spices
		}
	},
	["Knowledge"] = {
		uiName = "Special Items",
		uiDesc = "Special items to aid in crafting " .. Expansion,
		title = "Knowledge",
		items = {
			-- ID  = true,		--Item name
			[191784] = true, -- Dragon Shard of Knowledge
			[198137] = true, -- Esoteric Dragon Shard of Knowledge
			[200677] = true, -- Dreambloom Petal
			[198964] = true, -- Elementiouis Splinter
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
