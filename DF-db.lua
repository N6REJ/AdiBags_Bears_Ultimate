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
			[5512] = true, -- HealthStone
			[113509] = true, -- Conjured Mana bun
		}
	},
	["Phials"] = {
		uiName = "Bears " .. Expansion .. " Phials",
		uiDesc = "Phials used in " .. Expansion,
		title = "Phials",
		items = {
			-- ID  = true,		--Item name
			[124646] = true, -- Darkmoon Draught of Flexibility
			[124647] = true, -- Darkmoon Draught of Alacrity
			[124642] = true, -- Darkmoon Draught of Supremacy
			[124650] = true, -- Darkmoon Draught of Deftness
			[124645] = true, -- Darkmoon Draught of Precision
			[124651] = true, -- Darkmoon Draught of Deflection
			[124649] = true, -- Darkmoon Draught of Defense
			[124648] = true, -- Darkmoon Draught of Divergence
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
			[191917] = true, -- Suspiciously Fuzzy Drink
			[191918] = true, -- Suspiciously Fuzzy Drink
			[191919] = true, -- Suspiciously Fuzzy Drink
			[193859] = true, -- Twice-Burnt Potato
			[194680] = true, -- Jerky Surprise
			[194681] = true, -- Sugarwing Cupcake
			[194682] = true, -- Mother's Gift
			[194683] = true, -- Buttermilk
			[194684] = true, -- Azure Leywine
			[194685] = true, -- Dragonspring Water
			[194686] = true, -- Spicy Musken Drummies
			[194688] = true, -- Vorquin Filet
			[194689] = true, -- Anchovy Crisps
			[194690] = true, -- Horn o' Mead
			[194691] = true, -- Artisanal Berry Juice
			[194692] = true, -- Distilled Fish Juice
			[194693] = true, -- Improvised Sushi
			[194694] = true, -- Seasoned Hornswog Steak
			[194695] = true, -- Ramloaf
			[195455] = true, -- Argali Cheese
			[195456] = true, -- Plains Flatbread
			[195457] = true, -- Mammoth Jerky
			[195458] = true, -- Forager's Stew
			[195459] = true, -- Argali Milk
			[195460] = true, -- Fermented Musken Milk
			[195462] = true, -- Fried Hornstrider Wings
			[195463] = true, -- Seasoned Mudstomper Belly
			[195464] = true, -- Sweetened Broadhoof Milk
			[195465] = true, -- Stormwing Egg Breakfast
			[195466] = true, -- Frenzy and Chips
			[196540] = true, -- Broadhoof Tail Poutine
			[196582] = true, -- Syrup-Drenched Toast
			[196583] = true, -- Greenberry Toast
			[196584] = true, -- Acorn Milk
			[196585] = true, -- Plainswheat Pretzel
			[197758] = true, -- Twice-Baked Potato
			[197759] = true, -- Cheese and Quackers
			[197760] = true, -- Mackerel Snackerel
			[197761] = true, -- Probably Protein
			[197762] = true, -- Sweet and Sour Clam Chowder
			[197763] = true, -- Breakfast of Draconic Champions
			[197767] = true, -- Blubbery Muffin
			[197768] = true, -- Celebratory Cake
			[197769] = true, -- Tasty Hatchling's Treat
			[197770] = true, -- Zesty Water
			[197771] = true, -- Delicious Dragon Spittle
			[197772] = true, -- Churnbelly Tea
			[197774] = true, -- Charred Hornswog Steaks
			[197775] = true, -- Scrambled Basilisk Eggs
			[197776] = true, -- Thrice-Spiced Mammoth Kabob
			[197777] = true, -- Hopefully Healthy
			[197778] = true, -- Timely Demise
			[197779] = true, -- Filet of Fangs
			[197780] = true, -- Seamoth Surprise
			[197781] = true, -- Salt-Baked Fishcake
			[197782] = true, -- Feisty Fish Sticks
			[197783] = true, -- Aromatic Seafood Platter
			[197784] = true, -- Sizzling Seafood Medley
			[197785] = true, -- Revenge, Served Cold
			[197786] = true, -- Thousandbone Tongueslicer
			[197787] = true, -- Great Cerulean Sea
			[197788] = true, -- Braised Bruffalon Brisket
			[197789] = true, -- Riverside Picnic
			[197790] = true, -- Roast Duck Delight
			[197791] = true, -- Salted Meat Mash
			[197792] = true, -- Fated Fortune Cookie
			[197793] = true, -- Yusa's Hearty Stew
			[197794] = true, -- Grand Banquet of the Kalu'ak
			[197795] = true, -- Hoard of Draconic Delicacies
			[197847] = true, -- Gorloc Fin Soup
			[197848] = true, -- Hearty Squash Stew
			[197849] = true, -- Ancient Firewine
			[197850] = true, -- Mammoth Dumpling
			[197851] = true, -- Extra Crispy Mutton
			[197852] = true, -- Goat Brisket
			[197853] = true, -- Critter Kebab
			[197854] = true, -- Enchanted Argali Tenderloin
			[197855] = true, -- Explorer's Mix
			[197856] = true, -- Cup o' Wakeup
			[197857] = true, -- Swog Slurp
			[197858] = true, -- Salt-Baked Scalebelly
			[198356] = true, -- Honey Snack
			[198440] = true, -- Discounted Meat
			[198441] = true, -- Thunderspine Tenders
			[198830] = true, -- Conjured Tasty Hatchling's Treat
			[198831] = true, -- Conjured Snow in a Cone
			[198832] = true, -- Conjured Blubbery Muffin
			[198833] = true, -- Conjured Celebratory Cake
			[200099] = true, -- M.R.E.
			[200304] = true, -- Stored Dracthyr Rations
			[200305] = true, -- Dracthyr Water Rations
			[200619] = true, -- Scaralesh's Special
			[200680] = true, -- Maruukai Mule
			[200681] = true, -- Ohn Lite
			[200759] = true, -- Aruunem Berrytart
			[200855] = true, -- Tuskarr Port Wine
			[200856] = true, -- Sideboat
			[200862] = true, -- Experimental Duck Feed
			[200871] = true, -- Steamed Scarab Steak
			[200885] = true, -- Cinna-Cinderbloom Tea
			[200886] = true, -- Lemon Silverleaf Tea
			[200887] = true, -- Charred Porter
			[200888] = true, -- Coal-Fired Rib Rack
			[200889] = true, -- Highly-Spiced Haunch
			[200890] = true, -- Stonetalon Bloom Skewer
			[200891] = true, -- Druidic Dreamsalad
			[200892] = true, -- Dragonfruit Punch
			[200893] = true, -- Azsunian-Poached Lobster
			[200894] = true, -- Rare Vintage Arcwine
			[200895] = true, -- Fine Taladorian Cheese Platter
			[200896] = true, -- Captain's Caramelized Catfish
			[200897] = true, -- Venrik's Goat Milk
			[200898] = true, -- Mantis Shrimp Cocktail
			[200899] = true, -- Seared Sea Mist Noodles
			[200900] = true, -- Fried Emperor Wraps
			[200901] = true, -- Roquefort-Stuffed Peppers
			[200902] = true, -- Ravenberry Panacotta Delight
			[200903] = true, -- Moira's Choice Espresso
			[200904] = true, -- Picante Pomfruit Cake
			[200953] = true, -- Wild Dragon Fruit
			[200966] = true, -- Wild Truffle
			[201045] = true, -- Icecrown Bleu
			[201046] = true, -- Dreamwarding Dripbrew
			[201047] = true, -- Arcanostabilized Provisions
			[201089] = true, -- Craft Creche Crowler
			[201090] = true, -- Bivigosa's Blood Sausages
			[201327] = true, -- Emerald Dreamtime
			[201398] = true, -- Mogu Mozzarella
			[201413] = true, -- Eternity-Infused Burrata
			[201415] = true, -- Temporal Parmesan
			[201416] = true, -- Black Empire Brunost
			[201417] = true, -- Curding of Stratholme
			[201419] = true, -- Apexis Asiago
			[201422] = true, -- Flash Frozen Meat
			[201469] = true, -- Emerald Green Apple
			[201697] = true, -- Coldarra Coldbrew
			[201698] = true, -- Black Dragon Red Eye
			[201721] = true, -- Life Fire Latte
			[201725] = true, -- Flappuccino
			[201813] = true, -- Spoiled Firewine
			[201820] = true, -- Silithus Swiss
			[202033] = true, -- Slippery Salmon
			[202063] = true, -- Flopping Tilapia
			[202108] = true, -- Bouncing Bass
		}
	},
	["Knowledge"] = {
		uiName = Expansion .. " Knowledge Items",
		uiDesc = "Special items to aid in crafting in" .. Expansion,
		title = "Knowledge",
		items = {
			-- ID  = true,		--Item name
			[192131] = true, -- Valdrakken Weapon Chain
			[192132] = true, -- Draconium Blade Sharpener
			[192443] = true, -- Element-Infused Rocket Helmet
			[193891] = true, -- Experimental Substance
			[193897] = true, -- Reawakened Catalyst
			[193898] = true, -- Umbral Bone Needle
			[193899] = true, -- Primalweave Spindle
			[193900] = true, -- Prismatic Focusing Shard
			[193901] = true, -- Primal Dust
			[193902] = true, -- Eroded Titan Gizmo
			[193903] = true, -- Watcher Power Core
			[193904] = true, -- Phoenix Feather Quill
			[193905] = true, -- Iskaaran Trading Ledger
			[193907] = true, -- Chipped TyrStone
			[193909] = true, -- Ancient Gem Fragments
			[193910] = true, -- Molted Dragon Scales
			[193913] = true, -- Preserved Animal Parts
			[194039] = true, -- Heated Ore Sample
			[194040] = true, -- Slateskin Hide
			[194041] = true, -- Driftbloom Sprout
			[194042] = true, -- Explorer's Banner of Herbology
			[194043] = true, -- Explorer's Banner of Herbology
			[194044] = true, -- Explorer's Banner of Herbology
			[194045] = true, -- Explorer's Banner of Geology
			[194046] = true, -- Explorer's Banner of Geology
			[194047] = true, -- Explorer's Banner of Geology
			[194054] = true, -- Dredged Seedling
			[194055] = true, -- Primordial Soil
			[194061] = true, -- Suffocating Spores
			[194062] = true, -- Unyielding Stone Chunk
			[194063] = true, -- Glowing Fragment
			[194064] = true, -- Intricate Geode
			[194078] = true, -- Perfect Draconium Scale
			[194079] = true, -- Pure Serevite Nugget
			[194080] = true, -- Peculiar Bud
			[194081] = true, -- Mutated Root
			[194697] = true, -- Draconic Treatise on Alchemy
			[194698] = true, -- Draconic Treatise on Tailoring
			[194699] = true, -- Draconic Treatise on Inscription
			[194700] = true, -- Draconic Treatise on Leatherworking
			[194702] = true, -- Draconic Treatise on Enchanting
			[194703] = true, -- Draconic Treatise on Jewelcrafting
			[194704] = true, -- Draconic Treatise on Herbalism
			[194708] = true, -- Draconic Treatise on Mining
			[198156] = true, -- Wyrmhole Generator
			[198454] = true, -- Draconic Treatise on Blacksmithing
			[198510] = true, -- Draconic Treatise on Engineering
			[198518] = true, -- Professor Instructaur's Top Secret Guide to Blacksmithing
			[198519] = true, -- Professor Instructaur's Top Secret Guide to Alchemy
			[198520] = true, -- Professor Instructaur's Top Secret Guide to Enchanting
			[198521] = true, -- Professor Instructaur's Top Secret Guide to Engineering
			[198522] = true, -- Professor Instructaur's Top Secret Guide to Herbalism
			[198523] = true, -- Professor Instructaur's Top Secret Guide to Inscription
			[198524] = true, -- Professor Instructaur's Top Secret Guide to Jewelcrafting
			[198525] = true, -- Professor Instructaur's Top Secret Guide to Leatherworking
			[198526] = true, -- Professor Instructaur's Top Secret Guide to Mining
			[198527] = true, -- Professor Instructaur's Top Secret Guide to Skinning
			[198528] = true, -- Professor Instructaur's Top Secret Guide to Tailoring
			[198599] = true, -- Experimental Decay Sample
			[198606] = true, -- Blacksmith's Writ
			[198607] = true, -- Scribe's Glyphs
			[198608] = true, -- Alchemy Notes
			[198609] = true, -- Tailoring Examples
			[198610] = true, -- Enchanter's Script
			[198611] = true, -- Engineering Details
			[198612] = true, -- Jeweler's Cuts
			[198613] = true, -- Leatherworking Designs
			[198656] = true, -- Painter's Pretty Jewel
			[198658] = true, -- Decay-Infused Tanning Oil
			[198659] = true, -- Forgetful Apprentice's Tome
			[198660] = true, -- Fragmented Key
			[198662] = true, -- Intriguing Bolt of Blue Cloth
			[198663] = true, -- Frostforged Potion
			[198664] = true, -- Crystalline Overgrowth
			[198667] = true, -- Spare Djaradin Tools
			[198669] = true, -- How to Train Your Whelpling
			[198670] = true, -- Lofty Malygite
			[198675] = true, -- Lava-Infused Seed
			[198680] = true, -- Decaying Brackenhide Blanket
			[198682] = true, -- Alexstraszite Cluster
			[198683] = true, -- Treated Hides
			[198684] = true, -- Miniature Bronze Dragonflight Banner
			[198685] = true, -- Well Insulated Mug
			[198686] = true, -- Frosted Parchment
			[198687] = true, -- Closely Guarded Shiny
			[198689] = true, -- Stormbound Horn
			[198690] = true, -- Decayed Scales
			[198692] = true, -- Noteworthy Scrap of Carpet
			[198693] = true, -- Dusty Darkmoon Card
			[198694] = true, -- Enriched Earthen Shard
			[198696] = true, -- Wind-Blessed Hide
			[198697] = true, -- Contraband Concoction
			[198699] = true, -- Mysterious Banner
			[198702] = true, -- Itinerant Singed Fabric
			[198703] = true, -- Sign Language Reference Sheet
			[198704] = true, -- Pulsing Earth Rune
			[198710] = true, -- Canteen of Suspicious Water
			[198711] = true, -- Poacher's Pack
			[198712] = true, -- Firewater Powder Sample
			[198789] = true, -- Intact Coil Capacitor
			[198798] = true, -- Flashfrozen Scroll
			[198799] = true, -- Forgotten Arcane Tome
			[198800] = true, -- Fractured Titanic Sphere
			[198836] = true, -- Arclight Vital Correctors
			[198837] = true, -- Curious Hide Scraps
			[198841] = true, -- Large Sample of Curious Hide
			[198963] = true, -- Decaying Phlegm
			[198964] = true, -- Elementious Splinter
			[198965] = true, -- Primeval Earth Fragment
			[198966] = true, -- Molten Globule
			[198967] = true, -- Primordial Aether
			[198968] = true, -- Primalist Charm
			[198969] = true, -- Keeper's Mark
			[198970] = true, -- Infinitely Attachable Pair o' Docks
			[198971] = true, -- Curious Djaradin Rune
			[198972] = true, -- Draconic Glamour
			[198973] = true, -- Incandescent Curio
			[198974] = true, -- Elegantly Engraved Embellishment
			[198975] = true, -- Ossified Hide
			[198976] = true, -- Exceedingly Soft Skin
			[198977] = true, -- Ohn'arhan Weave
			[198978] = true, -- Stupidly Effective Stitchery
			[199115] = true, -- Herbalism Field Notes
			[199122] = true, -- Mining Field Notes
			[199128] = true, -- Skinning Field Notes
			[200677] = true, -- Dreambloom Petal
			[200678] = true, -- Dreambloom
			[200972] = true, -- Dusty Blacksmith's Diagrams
			[200973] = true, -- Dusty Scribe's Runic Drawings
			[200974] = true, -- Dusty Alchemist's Research
			[200975] = true, -- Dusty Tailor's Diagrams
			[200976] = true, -- Dusty Enchanter's Research
			[200977] = true, -- Dusty Engineer's Scribblings
			[200978] = true, -- Dusty Jeweler's Illustrations
			[200979] = true, -- Dusty Leatherworker's Diagrams
			[200980] = true, -- Dusty Herbalist's Notes
			[200981] = true, -- Dusty Miner's Notes
			[200982] = true, -- Dusty Skinner's Notes
			[201003] = true, -- Furry Gloop
			[201004] = true, -- Ancient Spear Shards
			[201005] = true, -- Curious Ingots
			[201006] = true, -- Draconic Flux
			[201007] = true, -- Ancient Monument
			[201008] = true, -- Molten Ingot
			[201009] = true, -- Falconer Gauntlet Drawings
			[201010] = true, -- Qalashi Weapon Diagram
			[201011] = true, -- Spelltouched Tongs
			[201012] = true, -- Enchanted Debris
			[201013] = true, -- Faintly Enchanted Remains
			[201014] = true, -- Boomthyr Rocket
			[201015] = true, -- Counterfeit Darkmoon Deck
			[201016] = true, -- Harmonic Crystal Harmonizer
			[201017] = true, -- Igneous Gem
			[201018] = true, -- Well-Danced Drum
			[201019] = true, -- Ancient Dragonweave Bolt
			[201020] = true, -- Silky Surprise
			[201023] = true, -- Draconic Treatise on Skinning
			[201268] = true, -- Rare Blacksmith's Diagrams
			[201269] = true, -- Rare Scribe's Runic Drawings
			[201270] = true, -- Rare Alchemist's Research
			[201271] = true, -- Rare Tailor's Diagrams
			[201272] = true, -- Rare Enchanter's Research
			[201273] = true, -- Rare Engineer's Scribblings
			[201274] = true, -- Rare Jeweler's Illustrations
			[201275] = true, -- Rare Leatherworker's Diagrams
			[201276] = true, -- Rare Herbalist's Notes
			[201277] = true, -- Rare Miner's Notes
			[201278] = true, -- Rare Skinner's Notes
			[201279] = true, -- Ancient Blacksmith's Diagrams
			[201280] = true, -- Ancient Scribe's Runic Drawings
			[201281] = true, -- Ancient Alchemist's Research
			[201282] = true, -- Ancient Tailor's Diagrams
			[201283] = true, -- Ancient Enchanter's Research
			[201284] = true, -- Ancient Engineer's Scribblings
			[201285] = true, -- Ancient Jeweler's Illustrations
			[201286] = true, -- Ancient Leatherworker's Diagrams
			[201287] = true, -- Ancient Herbalist's Notes
			[201288] = true, -- Ancient Miner's Notes
			[201289] = true, -- Ancient Skinner's Notes
			[201300] = true, -- Iridescent Ore Fragments
			[201301] = true, -- Iridescent Ore
			[201700] = true, -- Notebook of Crafting Knowledge
			[201705] = true, -- Notebook of Crafting Knowledge
			[201706] = true, -- Notebook of Crafting Knowledge
			[201708] = true, -- Notebook of Crafting Knowledge
			[201709] = true, -- Notebook of Crafting Knowledge
			[201710] = true, -- Notebook of Crafting Knowledge
			[201711] = true, -- Notebook of Crafting Knowledge
			[201712] = true, -- Notebook of Crafting Knowledge
			[201713] = true, -- Notebook of Crafting Knowledge
			[201715] = true, -- Notebook of Crafting Knowledge
			[201716] = true, -- Notebook of Crafting Knowledge
			[201717] = true, -- Notebook of Crafting Knowledge
			[202011] = true, -- Elementally-Charged Stone
			[202014] = true, -- Infused Pollen
			[202016] = true, -- Saturated Bone
		}
	},
	["Tools"] = {
		uiName = "Crafters tools",
		uiDesc = "Special tools to aid in crafting " .. Expansion,
		title = "Tools",
		items = {
			-- ID  = true,		--Item name
			[191223] = true, -- Khaz'gorite Pickaxe
			[191224] = true, -- Khaz'gorite Sickle
			[191225] = true, -- Khaz'gorite Skinning Knife
			[191226] = true, -- Khaz'gorite Needle Set
			[191227] = true, -- Khaz'gorite Leatherworker's Knife
			[191228] = true, -- Black Dragon Touched Hammer
			[191229] = true, -- Khaz'gorite Leatherworker's Toolset
			[191230] = true, -- Khaz'gorite Blacksmith's Toolbox
			[191231] = true, -- Alchemist's Brilliant Mixing Rod
			[191232] = true, -- Chef's Splendid Rolling Pin
			[191233] = true, -- Chef's Smooth Rolling Pin
			[191234] = true, -- Alchemist's Sturdy Mixing Rod
			[191235] = true, -- Draconium Blacksmith's Toolbox
			[191236] = true, -- Draconium Leatherworker's Toolset
			[191237] = true, -- Draconium Blacksmith's Hammer
			[191238] = true, -- Draconium Leatherworker's Knife
			[191239] = true, -- Draconium Needle Set
			[191240] = true, -- Draconium Skinning Knife
			[191241] = true, -- Draconium Sickle
			[191242] = true, -- Draconium Pickaxe
			[191888] = true, -- Khaz'gorite Blacksmith's Hammer
			[193035] = true, -- Bold-Print Bifocals
			[193036] = true, -- Left-Handed Magnifying Glass
			[193037] = true, -- Sundered Onyx Loupe
			[193038] = true, -- Chromatic Focus
			[193039] = true, -- Fine-Print Trifocals
			[193040] = true, -- Magnificent Margin Magnifier
			[193041] = true, -- Alexstraszite Loupes
			[193042] = true, -- Resonant Focus
			[193479] = true, -- Floral Basket
			[193480] = true, -- Durable Pack
			[193482] = true, -- Skinner's Cap
			[193485] = true, -- Protective Gloves
			[193486] = true, -- Resilient Smock
			[193487] = true, -- Alchemist's Hat
			[193488] = true, -- Lavish Floral Pack
			[193489] = true, -- Reinforced Pack
			[193490] = true, -- Expert Skinner's Cap
			[193491] = true, -- Shockproof Gloves
			[193492] = true, -- Masterwork Smock
			[193493] = true, -- Expert Alchemist's Hat
			[193528] = true, -- Wildercloth Alchemist's Robe
			[193529] = true, -- Wildercloth Fishing Cap
			[193533] = true, -- Master's Wildercloth Enchanter's Hat
			[193534] = true, -- Wildercloth Chef's Hat
			[193538] = true, -- Wildercloth Gardening Hat
			[193539] = true, -- Wildercloth Enchanter's Hat
			[193541] = true, -- Wildercloth Tailor's Coat
			[193540] = true, -- Dragoncloth Tailoring Vestments
			[193542] = true, -- Master's Wildercloth Gardening Hat
			[193543] = true, -- Master's Wildercloth Fishing Cap
			[193544] = true, -- Master's Wildercloth Alchemist's Robe
			[193545] = true, -- Master's Wildercloth Chef's Hat
			[193612] = true, -- Blacksmithing Apron
			[193613] = true, -- Flameproof Apron
			[193615] = true, -- Jeweler's Cover
			[193616] = true, -- Resplendent Cover
			[194125] = true, -- Spring-Loaded Draconium Fabric Cutters
			[194126] = true, -- Spring-Loaded Khaz'gorite Fabric Cutters
			[194874] = true, -- Scribe's Fastened Quill
			[194875] = true, -- Scribe's Resplendent Quill
			[198204] = true, -- Draconium Brainwave Amplifier
			[198205] = true, -- Khaz'gorite Brainwave Amplifier
			[198225] = true, -- Draconium Fisherfriend
			[198226] = true, -- Khaz'gorite Fisherfriend
			[198234] = true, -- Lapidary's Draconium Clamps
			[198235] = true, -- Lapidary's Khaz'gorite Clamps
			[198243] = true, -- Draconium Delver's Helmet
			[198244] = true, -- Khaz'gorite Delver's Helmet
			[198245] = true, -- Draconium Encased Samophlange
			[198246] = true, -- Khaz'gorite Encased Samophlange
			[198262] = true, -- Bottomless Stonecrust Ore Satchel
			[198263] = true, -- Bottomless Mireslush Ore Satchel
			[198715] = true, -- Runed Draconium Rod
			[198716] = true, -- Runed Khaz'gorite Rod
			[201601] = true, -- Runed Serevite Rod
			[204443] = true, -- Blacksteel Hammer
			[203705] = true, -- Obsidian Vial

			-- old item but useful
			[132514] = true, -- Auto-Hammer
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
			[191264] = true, -- Restored Obsidian Key
			[199906] = true, -- Titan Relic
			[200071] = true, -- Sacred Tuskarr Totem
			[200093] = true, -- Centaur Hunting Trophy
			[192055] = true, -- Dragon Isles Artifact
			[200224] = true, -- Mark of Sargha
			[201411] = true, -- Ancient Vault Artifact
			[201991] = true, -- Sargha's Signet
			[191784] = true, -- Dragon shard of knowledge
			[203701] = true, -- Neltharion Gift Token
			[202872] = true, -- Token of Blessing
		}
	},
	["Trinket"] = {
		uiName = Expansion .. " Trinket reagents",
		uiDesc = "Special items for 'Unstable Elemental Confluence' in" .. Expansion,
		title = "Trinket",
		items = {
			-- ID  = true,		--Item name
			[199836] = true, -- Dimmed Primeval Fire
			[199838] = true, -- Dimmed Primeval Storm
			[199839] = true, -- Dimmed Primeval Water
			[199837] = true, -- Dimmed Primeval Earth

		}
	},
	["API"] = {
		uiName = Expansion .. " API Fix",
		uiDesc = "Items that are miscategorized in" .. Expansion,
		title = "Disenchant",
		items = {
			-- ID  = true,		--Item name
			[201356] = true, -- Glimmer of Fire
			[201357] = true, -- Glimmer of Frost
			[201358] = true, -- Glimmer of Air
			[201359] = true, -- Glimmer of Earth
			[201360] = true, -- Glimmer of Order

		}
	},
	["Special"] = {
		uiName = Expansion .. " Special Items",
		uiDesc = "Items that are for unique things in" .. Expansion,
		title = "Special",
		items = {
			-- ID  = true,		--Item name
			[204276] = true, -- Untapped Forbidden Knowledge
			[202196] = true, -- Zskera Vault Key
			[204439] = true, -- Research Chest Key
		}
	},
	["Combine"] = {
		uiName = Expansion .. " combine Items",
		uiDesc = "Items that need to be combined in" .. Expansion,
		title = "Combine",
		items = {
			-- ID  = true,		--Item name
			[203703] = true, -- Prismatic Fragment
			[203702] = true, -- Experimental Melder
			[204360] = true, -- Strange Petrified Orb
			[204369] = true, -- Scrap of Black Dragonscales
			[204366] = true, -- Egg of unknown Contents
			[204352] = true, -- Leftover Elemental Slime
		}
	},
	["Stone"] = {
		uiName = Expansion .. " Stone Items",
		uiDesc = "Primordial Stone items in" .. Expansion,
		title = "Stone",
		items = {
			-- ID  = true,		--Item name
			[204575] = true, -- Condensed Earth Magic
			[204577] = true, -- Condensed nature magic
			[204578] = true, -- Condensed Arcane Magic
			[204574] = true, -- Condensed Frost Magic
			[204576] = true, -- Condensed Shadow Magic
			[204579] = true, -- Condensed Necromantic Magic
			[204573] = true, -- Condensed Fire Magic
			[204030] = true, -- Wind Sculpted Stone
			[204012] = true, -- Cold Frost Stone
			[204010] = true, -- Deluging Water Stone
			[204027] = true, -- Desirous Blood Stone
			[204001] = true, -- Echoing Thunder Stone
			[204005] = true, -- Entropic Fel Stone
			[204013] = true, -- Exuding Steam Stone
			[204002] = true, -- Flame Licked Stone
			[204011] = true, -- Freezing Ice Stone
			[204009] = true, -- Gleaming Iron Stone
			[204019] = true, -- Harmonic Music Stone
			[204018] = true, -- Humming Arcane Stone
			[204006] = true, -- Indomitable Earth Stone
			[204021] = true, -- Necromantic Death Stone
			[204025] = true, -- Obscure Pastel Stone
			[204022] = true, -- Pestilent Plague Stone
			[204029] = true, -- Prophetic Twilight Stone
			[204003] = true, -- Raging Magma Stone
			[204004] = true, -- Searing Smokey Stone
			[204007] = true, -- Shining obsidian Stone
			[204014] = true, -- Sparkling mana Stone
			[204000] = true, -- Storm infused Stone
			[204015] = true, -- Swirling Mojo Stone
			[204020] = true, -- Wild spirit Stone
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
