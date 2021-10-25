-- AdiBags_Shadowlands_Fishing
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/Adibags_Shadowlands_Fishing


local addonName, addonTable, addon = ...

-- Get reference to AdiBags addon
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

-- Debug tools
--LoadAddOn("ViragDevTool")
--ViragDevTool:ViragDevTool_AddData(addonTable)

local db = addonTable.db
local MatchIDs
local tooltip
local Result = { }

local function tooltipInit()
	local tip, leftside = CreateFrame("GameTooltip"), {}
	for i = 1, 6 do
		local left, right = tip:CreateFontString(), tip:CreateFontString()
		left:SetFontObject(GameFontNormal)
		right:SetFontObject(GameFontNormal)
		tip:AddFontStrings(left, right)
		leftside[i] = left
	end
	tip.leftside = leftside
	return tip
end

-- Create Filters
local function CreateFilter(name, uiName, uiDesc, title, items)

	-- Register Filter with adibags
	local filter = AdiBags:RegisterFilter(uiName, 98, "ABEvent-1.0")

	filter.uiName = uiName
	filter.uiDesc = uiDesc .. "Version:" .. GetAddOnMetadata(addonName, "Version");
	filter.items = items

	function filter:OnInitialize()
		-- Assign item table to filter
		self.items = filter.items
	end

	function filter:Update()
		self:SendMessage("AdiBags_FiltersChanged")
	end

	function filter:OnEnable()
		AdiBags:UpdateFilters()
	end

	function filter:OnDisable()
		AdiBags:UpdateFilters()
	end

	function filter:Filter(slotData)
		if self.items[tonumber(slotData.itemId)] then
			return title
		end

		tooltip = tooltip or tooltipInit()
		tooltip:SetOwner(UIParent, "ANCHOR_NONE")
		tooltip:ClearLines()

		if slotData.bag == BANK_CONTAINER then
			tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slotData.slot, nil))
		else
			tooltip:SetBagItem(slotData.bag, slotData.slot)
		end

		tooltip:Hide()
	end
end

-- Run filters
local function AllFilters(db)
	for name, group in pairs(db.Filters) do

		-- Does filter already exist?
		local FilterExists = CheckFilter(group.uiName)
		print(FilterExists)


		-- name = Name of table
		-- group.uiName = Name to use in filter listing
		-- group.uiDesc = Description to show in filter listing
		-- group.items = table of items to sort
		CreateFilter(name, group.uiName, group.uiDesc, group.title, group.items)
    end
end

local function CheckFilter(FilterExists)
	for i, filter in AdiBags:IterateFilters() do
		if filter == FilterExists then
			return true
		end
	end
end

-- Start here
AllFilters(db)
