--@type
local addonName, addonTable = ...

--[[
Put the code below...

-- now that db is populated lets pass it on.
addonTable.DFGlobal = db

at the end of each global database file where the first 2 letters ( DF ) are the expansion and then add that name to the list below.
The globals should only have the db.Filters not the db.name or db.desc.  See "DF-Global.lua" for an example.
This file should be listed in the .toc just after "expansion.lua"

--]]

addonTable.Globaldbs = {
    DFGlobal = "DFGlobal"
}
