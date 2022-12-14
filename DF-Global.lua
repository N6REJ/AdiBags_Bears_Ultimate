-- AdiBags Global items - Database
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
	["Global_Reagents"] = {
		uiName = "Bears " .. Expansion .. " Global Reagents",
		uiDesc = "Common reagents from " .. Expansion,
		title = "DF Mats",
		items = {
			-- ID  = true,		--Item name
			[190454] = true, -- Primal Chaos
			[202122] = true, -- Primal Chaos Cluster
			[200686] = true, -- Primal Focus
			[190456] = true, -- Artisan's Mettle
			[201405] = true, -- Tuft of Primal Wool -- Used by many professions
			[201406] = true, -- Glowing Titan Orb   -- Used by many professions
			[190453] = true, -- Spark of Ingenuity
			[199197] = true, -- Bottled Essence
			[190455] = true, -- Concentrated Primal Focus
			[198046] = true, -- Concentrated Primal Infusion
			[197921] = true, -- Primal Infusion
		}
	},
	["Finishing_Reagents"] = {
		uiName = "Bears " .. Expansion .. " Finishing Reagents",
		uiDesc = "Assorted Finishing reagents used in " .. Expansion,
		title = "Finishing",
		items = {
			-- ID  = true,		--Item name
			[191529] = true, -- Illustrious Insight
			[191526] = true, -- Lesser Illustrious Insight
			[194902] = true, -- Ooey-Gooey Chocolate
			[197764] = true, -- Salad on the side
			[191517] = true, -- Writhefire Oil 1
			[191518] = true, -- Writhefire Oil 2
			[191519] = true, -- Writhefire Oil 3
			[193950] = true, -- Abrasive Polishing Cloth 1
			[193951] = true, -- Abrasive Polishing Cloth 2
			[193952] = true, -- Abrasive Polishing Cloth 3
			[191520] = true, -- Agitating Potion Augmentation 1
			[191521] = true, -- Agitating Potion Augmentation 2
			[191522] = true, -- Agitating Potion Augmentation 3
			[193956] = true, -- Blazing Embroidery Thread 1
			[193957] = true, -- Blazing Embroidery Thread 2
			[193958] = true, -- Blazing Embroidery Thread 3
			[192894] = true, -- Blotting Sand 1
			[192895] = true, -- Blotting Sand 2
			[192896] = true, -- Blotting Sand 3
			[191514] = true, -- Brood Salt 1
			[191515] = true, -- Brood Salt 2
			[191516] = true, -- Brood Salt 3
			[193959] = true, -- Chromatic embroidery Thread 1
			[193960] = true, -- Chromatic embroidery Thread 2
			[193961] = true, -- Chromatic embroidery Thread 3
			[198216] = true, -- Haphazardly Tethered Wires 1
			[198217] = true, -- Haphazardly Tethered Wires 2
			[198218] = true, -- Haphazardly Tethered Wires 3
			[198219] = true, -- Overcharged Overclocker 1
			[198220] = true, -- Overcharged Overclocker 2
			[198221] = true, -- Overcharged Overclocker 3
			[192897] = true, -- Pounce 1
			[192898] = true, -- Pounce 2
			[192899] = true, -- Pounce 3
			[191523] = true, -- Reactive Phial Embellishment 1
			[191524] = true, -- Reactive Phial Embellishment 2
			[191525] = true, -- Reactive Phial Embellishment 3
			[191511] = true, -- Stable Fluidic Draconium 1
			[191512] = true, -- Stable Fluidic Draconium 2
			[191513] = true, -- Stable Fluidic Draconium 3
			[193953] = true, -- Vibrant Polishing Cloth 1
			[193954] = true, -- Vibrant Polishing Cloth 2
			[193955] = true, -- Vibrant Polishing Cloth 3
		}
	},
	["Special_Reagents"] = {
		uiName = "Bears " .. Expansion .. " Special Reagents",
		uiDesc = "Special reagents from " .. Expansion,
		title = "Special",
		items = {
			-- ID  = true,		--Item name
			[193360] = true, -- Centaur's Trophy Necklace
			[194746] = true, -- Thomas's Empty Bottle
			[194728] = true, -- Fiery Spirit 1
			[194727] = true, -- Fiery Spirit 2
			[194729] = true, -- Fiery Spirit 3
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
