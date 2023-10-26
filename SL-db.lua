-- AdiBags Bears Ultimate - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Shadowlands"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Ultimate"
db.desc = "Special Items found in " .. Expansion

-- Filter info
db.Filters = {
	["Runes"] = {
		uiName = "Bears " .. Expansion .. "Special Runes",
		uiDesc = "Special Runes used in " .. Expansion,
		title = "Runes",
		items = {
			-- [ID]  = true,	--Item name
			[181468] = true,	-- Veiled Augment Runes
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Shadowlands = db
