-- AdiBags_Shadowlands_Cooking - Database
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/Adibags_Shadowlands_Fishing
--
local addonName, addonTable, addon = ...

-- Create addon table
local db = {}

db.name = "Shadowlands Cooking"
db.desc = "Cooking items & reagents found in Shadowlands"

-- Filter info
db.Filters = {
    ["Fish"] = {
        uiName = "Shadowlands Fish",
        uiDesc = "Fish found while fishing in Shadowlands",
        title = "Fish",
        items = {
            -- ID,	--Item name
            [173032] = true, -- Lost Sole
            [173033] = true, -- Iridescent Amberjack
            [173034] = true, -- Silvergill Pike
            [173035] = true, -- Pocked Bonefish
            [173036] = true, -- Spinefin Piranha
            [173037] = true, -- Elysian Thade
            [174327] = true -- Malformed Gnasher
        }
    },
    ["Meat"] = {
        uiName = "Shadowlands Meat",
        uiDesc = "Meat found in Shadowlands",
        title = "Meat",
        items = {
            [172052] = true, -- Aethereal Meat
            [172053] = true, -- Tenebrous Ribs
            [172054] = true, -- Raw Seraphic Wing
            [172055] = true, -- Phantasmal Haunch
            [179314] = true, -- Creeping Crawler Meat
            [179315] = true -- Shadowy Shank
        }
    },
    ["Cooking"] = {
        uiName = "Shadowlands Cooking",
        uiDesc = "Reagents for cooking in Shadowlands",
        title = "Cooking",
        items = {
            [172056] = true, -- Medley of Transplanar Spices
            [172057] = true, -- Inconceivably Aged Vinegar
            [172058] = true, -- Smuggled Azerothian Produce
            [172059] = true, -- Rich Grazer Milk
            [178786] = true -- Lusterwheat Flour
        }
    }
}

-- now that db is populated lets pass it on.
addonTable.db = db
