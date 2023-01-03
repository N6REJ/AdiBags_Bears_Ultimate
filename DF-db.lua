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
	["Pots"] = {
		uiName = "Bears " .. Expansion .. " Raiding pots",
		uiDesc = "Potions, Oils & food used for raiding in " .. Expansion,
		title = "Pots",
		items = {
			-- ID  = true,		--Item name
			[191377] = true, -- Suspension of spores
			[201438] = true, -- Weary Sands
			[201436] = true, -- Temporally-Locked Sands
			[201428] = true, -- Quicksilver Sands
			[200121] = true, -- Potion of beginners luck
			[194337] = true, -- Liquid Courage
			[191384] = true, -- Aerated Mana Potion 1
			[191385] = true, -- Aerated Mana Potion 2
			[191386] = true, -- Aerated Mana Potion 3
			[191393] = true, -- Potion of the Hushed Zephyr 1
			[191394] = true, -- Potion of the Hushed Zephyr 2
			[191395] = true, -- Potion of the Hushed Zephyr 3
			[191378] = true, -- Refreshing Healing Potion 1
			[191379] = true, -- Refreshing Healing Potion 2
			[191380] = true, -- Refreshing Healing Potion 3
			[191396] = true, -- Potion of gusts 1
			[191397] = true, -- Potion of gusts 2
			[191398] = true, -- Potion of gusts 3
			[191372] = true, -- Residual Neural Channeling Agent 1
			[191373] = true, -- Residual Neural Channeling Agent 2
			[191374] = true, -- Residual Neural Channeling Agent 3
			[191387] = true, -- Potion of power 1
			[191388] = true, -- Potion of Power 2
			[191389] = true, -- Potion of Power 3
			[191381] = true, -- Potion of ultimate power 1
			[191382] = true, -- Potion of ultimate power 2
			[191383] = true, -- Potion of ultimate power 3
			[191912] = true, -- Fleeting Elemental Potion of Ultimate power 1
			[191913] = true, -- Fleeting Elemental Potion of Ultimate power 2
			[191914] = true, -- Fleeting Elemental Potion of Ultimate power 3
			[191360] = true, -- Bottled Putrescence 1
			[191361] = true, -- Bottled Putrescence 2
			[191362] = true, -- Bottled Putrescence 3
			[191366] = true, -- Potion of chilled clarity 1
			[191367] = true, -- Potion of chilled clarity 2
			[191368] = true, -- Potion of chilled clarity 3
			[191351] = true, -- Potion of Frozen Fatality 1
			[191352] = true, -- Potion of Frozen Fatality 2
			[191353] = true, -- Potion of Frozen Fatality 3
			[191363] = true, -- Potion of Frozen Focus 1
			[191364] = true, -- Potion of Frozen Focus 2
			[191365] = true, -- Potion of Frozen Focus 3
			[191399] = true, -- Potion of Shocking Disclosure 1
			[191400] = true, -- Potion of Shocking Disclosure 2
			[191401] = true, -- Potion of Shocking Disclosure 3
			[191369] = true, -- Potion of Withering Vitality 1
			[191370] = true, -- Potion of Withering Vitality 2
			[191371] = true, -- Potion of Withering Vitality 3
		}
	},
	["Phials"] = {
		uiName = "Bears " .. Expansion .. " Phials",
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
		uiName = "Bears " .. Expansion .. " Raiding Food",
		uiDesc = "Food used for raiding in " .. Expansion,
		title = "Food",
		items = {
			-- ID  = true,		--Item name
			[197760] = true, -- Mackerel Snackerel
			[197761] = true, -- Probably Protein
			[197770] = true, -- Zesty Water
			[197777] = true, -- Hopefully Healthy
			[197772] = true, -- Churnbelly Tea
		}
	},
	["Knowledge"] = {
		uiName = Expansion .. " Knowledge Items",
		uiDesc = "Special items to aid in crafting in" .. Expansion,
		title = "Knowledge",
		items = {
			-- ID  = true,		--Item name
			[191784] = true, -- Dragon Shard of Knowledge
			[198137] = true, -- Esoteric Dragon Shard of Knowledge
			[200677] = true, -- Dreambloom Petal
			[198964] = true, -- Elementiouis Splinter
			[198978] = true, -- Stupidly Effective Stitchery
			[201300] = true, -- Iridescent Ore Fragments
			[194062] = true, -- Unyielding stone chunk
			[198977] = true, -- Ohn'arhan Weave
			[193900] = true, -- Prismatic Focusing Shard
			[193891] = true, -- Experimental Substance
			[202014] = true, -- Infused Pollen
			[193897] = true, -- Reawakened Catalyst
			[201023] = true, -- Draconic Treatise on Skinning
			[194697] = true, -- Draconic Treatise on Alchemy
			[194699] = true, -- Draconic Treatise on Inscription
			[194702] = true, -- Draconic Treatise on Enchanting
			[194700] = true, -- Draconic Treatise on Leatherworking
			[194704] = true, -- Draconic Treatise on Herbalism
			[194703] = true, -- Draconic Treatise on Jewelcrafting
			[194708] = true, -- Draconic Treatise on Mining
			[194698] = true, -- Draconic Treatise on Tailoring
			[198454] = true, -- Draconic Treatise on Blacksmithing
			[198510] = true, -- Draconic Treatise on Engineering
		}
	},
	["Tools"] = {
		uiName = "Crafters tools",
		uiDesc = "Special tools to aid in crafting " .. Expansion,
		title = "Tools",
		items = {
			-- ID  = true,		--Item name
			[376547] = true, -- Wildercloth Chef's Hat
			[383551] = true, -- Chef's Smooth Rolling Pin
			[376548] = true, -- Master's Wildercloth Chef's Hat
			[383552] = true, -- Chef's Splendid Rolling Pin
			[191294] = true, -- Small Expedition Shovel
		}
	},
	["Turn_In"] = {
		uiName = Expansion .. " Turn in Items",
		uiDesc = "Special items for quests in" .. Expansion,
		title = "Turn in",
		items = {
			-- ID  = true,		--Item name
			[191251] = true, -- Obsidian citadel Key Frame
			[193201] = true, -- Obsidian citadel Key Fragment
			[199906] = true, -- Titan Relic
			[200071] = true, -- Sacred Tuskarr Totem
			[200093] = true, -- Centaur Hunting Trophy
			-- [199080] = true, -- Smoldering Phoenix ash  -- Doesn't appear to be used for anything
			[192055] = true, -- Dragon Isles Artifact
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
