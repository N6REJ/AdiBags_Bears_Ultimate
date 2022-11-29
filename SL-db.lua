-- AdiBags Bears Ultimate - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for expansion
local E = addonTable.expansion
local Expansion = E["Shadowlands"]

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
            [187704] = true, -- Protoflesh
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
            [187702] = true, -- Precurser Placoderm
        }
    },
    ["Ore"] = {
        uiName = Expansion .. " Mining",
        uiDesc = "Ore found in " .. Expansion,
        title = "Ore",
        items = {
            -- ID  = true,		--Item name
            [171841] = true, -- Shaded Stone    - [ Required for kettle of stone soup ]
            [171828] = true, -- Laestrite Ore
            [171829] = true, -- Solenium Ore
            [171830] = true, -- Oxxein Ore
            [171831] = true, -- Phaedrum Ore
            [171832] = true, -- Sinvyr Ore
            [171833] = true, -- Elethium Ore
            [171840] = true, -- Porous Stone
            [187700] = true, -- Progenium Ore
        }
    },
    ["Cloth"] = {
        uiName = Expansion .. " Tailoring cloth",
        uiDesc = "Cloth for tailoring in " .. Expansion,
        title = "Cloth",
        items = {
            -- ID    = true,    --Item name
            [172439] = true, -- Enchanted Lightless Silk
            [173202] = true, -- Shrouded Cloth
            [173204] = true, -- Lightless Silk
            [187703] = true, -- Silken Protofiber
        }
    },
    ["Herbs"] = {
        uiName = Expansion .. " Herbs",
        uiDesc = "Herbs found in " .. Expansion,
        title = "Herbs",
        items = {
            -- ID  = true,		--Item name
            [168583] = true, -- Widowbloom
            [168586] = true, -- Rising Glory
            [168589] = true, -- Marrow Root
            [169701] = true, -- Death Blossom
            [170554] = true, -- Vigils Torch
            [171315] = true, -- Nightshade
            [187699] = true, -- First Flower
        }
    },
    ["Ground"] = {
        uiName = Expansion .. " Alchemy Extracts",
        uiDesc = "Ground reagents made from herbs found in " .. Expansion,
        title = "Ground Herbs",
        items = {
            -- ID  = true,		--Item name
            [171287] = true, -- Ground Death Blossom
            [171291] = true, -- Ground Rising Glory
            [171290] = true, -- Ground Marrowroot
            [171292] = true, -- Ground Nightshade
            [171288] = true, -- Ground Vigil's Torch
            [171289] = true, -- Ground Widowbloom
        }
    },
    ["Transmute"] = {
        uiName = Expansion .. " Alchemy Transmute",
        uiDesc = "Transmuted items made from herbs found in " .. Expansion,
        title = "Transmute",
        items = {
            -- ID  = true,		--Item name
            [180457] = true, -- Shadestone
            [171428] = true, -- Shadowgast Ingot
        }
    },
    ["Enchanting"] = {
        uiName = Expansion .. " Enchanting",
        uiDesc = db.desc,
        title = "Enchanting",
        items = {
            -- ID,	--Item name
            [172230] = true, -- Soul Dust
            [172231] = true, -- Sacred Shard
            [172232] = true, -- Eternal Crystal
            [172437] = true, -- Enchanted Elethium Bar
            [172439] = true, -- Enchanted Lightless Silk
            [172438] = true, -- Enchanted Heavy Callous Hide
        }
    },
    ["Bait"] = {
        uiName = Expansion .. " Bait",
        uiDesc = "Bait found while fishing in " .. Expansion,
        title = "Bait",
        items = {
            -- ID,	--Item name
            [173038] = true,	-- Lose Sole bait
            [173039] = true,	-- Iridescent amberjack bait
            [173040] = true,	-- Silvergill pike bait
            [173041] = true,	-- Pocked Bonefish bait
            [173042] = true,	-- Spinefin piranha bait
            [173043] = true,	-- Elysian thade bait
            [187712] = true, -- Precursor Placoderm Bait
        },
    },
    ["Ink"] = {
        uiName = Expansion .. " Inscription",
        uiDesc = "Ink made in " .. Expansion,
        title = "Ink",
        items = {
            -- ID,	--Item name
            [173059] = true, -- Luminous Ink
            [173058] = true, -- Umbral Ink
            [175970] = true, -- Tranquil Ink
        },
    },
    ["Jewels"] = {
        uiName = Expansion .. " Jewelcrafting",
        uiDesc = "Jewelcrafting reagents for " .. Expansion,
        title = "Jewels",
        items = {
            -- [ID] = used,	--Item name
            [173127] = true, -- Deadly Jewel Cluster
            [173129] = true, -- Versatile Jewel Cluster
            [173130] = true, -- Masterful Jewel Cluster
            [173128] = true, -- Quick Jewel Cluster
        }
    },
    ["Gems"] = {
        uiName = Expansion .. " Jewelcrafting Gems",
        uiDesc = "Jewelcrafting reagents for " .. Expansion,
        title = "Gems",
        items = {
            -- [ID] = used,	--Item name
            [173108] = true, -- Oriblase
            [173109] = true, -- Angerseye
            [173110] = true, -- Umbryl
        }
    },
    ["Essence"] = {
        uiName = Expansion .. " Jewelcrafting Essence",
        uiDesc = "Jewelcrafting reagents for " .. Expansion,
        title = "Essence",
        items = {
            -- [ID] = used,	--Item name
            [173170] = true, -- Essence of Rebirth
            [173171] = true, -- Essence of Torment
            [173172] = true, -- Essence of Servitude
            [173173] = true, -- Essence of Valor
        }
    },
    ["Leather"] = {
        uiName = Expansion .. " Leatherworking",
        uiDesc = "Reagents for Leatherworking in " .. Expansion,
        title = "Leather",
        items = {
            [172089] = true, -- Desolate Leather
            [172092] = true, -- Pallid Bone
            [172094] = true, -- Callous Hide
            [172096] = true, -- Heavy Desolate Leather
            [172097] = true, -- Heavy Callous Hide
            [172438] = true, -- Enchanted Heavy Callous Hide
            [177279] = true, -- Gaunt Sinew
            [172331] = true, -- Sinful Leather
            [172332] = true, -- Necrotic Leather
            [172330] = true, -- Unseelie Leather
            [172333] = true, -- Purified Leather
        }
    },


    ["Vendor_Reagents"] = {
        uiName = Expansion .. " Vendor Reagents",
        uiDesc = "Reagents purchased from vendor for use in " .. Expansion,
        title = "Vendor Reagents",
        items = {
            -- ID    = true,    --Item name
            [159]    = true, -- Refreshing spring water - [ Required for kettle of stone soup ]
            [38682]  = true, -- Enchanting Vellum
            [187812] = true, -- Empty Kettle - [ Required for kettle of stone soup ]
            [177062] = true, -- Penumbra Thread
            [178787] = true, -- Orboreal shards
            [172056] = true, -- Medley of Transplanar Spices
            [172057] = true, -- Inconceivably Aged Vinegar
            [172058] = true, -- Smuggled Azerothian Produce
            [172059] = true, -- Rich Grazer Milk
            [178786] = true, -- Lusterwheat Flour
            [180732] = true, -- Rune Etched Vial
            [183950] = true, -- Distilled Death Extract
            [177061] = true, -- Twilight Bark
            [180733] = true, -- Luminous Flux
            [183951] = true, -- Immortal shards
            [183952] = true, -- Machinist's Oil
            [175886] = true, -- Dark Parchment
            [173060] = true, -- Aereated Water
            [183953] = true, -- Sealing Wax
            [173168] = true, -- laestrite-setting
            [183954] = true, -- malleable-wire
            [183955] = true, -- Curing Salt
        }
    },
    ["Crafted_Reagents"] = {
        uiName = Expansion .. " Crafted Reagents",
        uiDesc = "Reagents made by crafting in " .. Expansion,
        title = "Crafted Reagents",
        items = {
            -- ID    = true,    --Item name
            [173384] = true, -- Crafter's Mark of the Chained Isle
            [359670] = true, -- Crafter's Mark of the First Ones
            [359661] = true, -- Crafter's Mark IV
            [173383] = true, -- Crafter's Mark III
            [173382] = true, -- Crafter's Mark II
            [173381] = true, -- Crafter's Mark I
            [183942] = true, -- Novice Mark
            [183942] = true, -- Novice Mark II
            [185960] = true, -- Vestige of Origins
            [359703] = true, -- Vestige of the Eternal
            [187707] = true, -- Progenitor Essentia
            [187850] = true, -- Sustaining Armor Polish
            [187827] = true, -- Infusion: Corpse Purification
            [187825] = true, -- Cosmic Protoweave
            [187823] = true, -- Magically Regulated Automa Core
            [172935] = true, -- Porous Polishing Abrasive
            [172936] = true, -- Mortal Coiled Spring
            [172937] = true, -- Wormfed Gear Assembly
            [172934] = true, -- Handful of Laestrite Bolts
            [187831] = true, -- Pure-Air Sail Extensions
            [187836] = true, -- Erratic Genesis Matrix
            [187849] = true, -- Devourer Essence Stone
            [187829] = true, -- Aealic Harmonizing Stone
        }
    },
    ["Zone_Reagents"] = {
        uiName = "Special Reagents",
        uiDesc = "Special reagents from Zerith Mortis in " .. Expansion,
        title = "ZM Reagents",
        items = {
            -- ID    = true,    --Item name
            [187701] = true, -- Protogenic Pelt
        }
    }
}

-- now that db is populated lets pass it on.
addonTable.Shadowlands = db
