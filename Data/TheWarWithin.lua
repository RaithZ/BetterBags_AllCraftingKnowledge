-- BetterBags - All Crafting Knowledge
-- The War Within (11.x) Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/the-war-within/professions/knowledge-point-treasure-locations
-- Source: https://www.wowhead.com/guide/professions/knowledge-points

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- ARTISAN'S CONSORTIUM VENDOR BOOKS (Faded / Exceptional / Pristine)
-- Cost: Artisan's Acuity — one-time purchase per character
-- ============================================================
local consortiumBooks = {
    -- Alchemy
    [227409] = true, -- Faded Alchemist's Research
    [227420] = true, -- Exceptional Alchemist's Research
    [227431] = true, -- Pristine Alchemist's Research
    -- Blacksmithing
    [227407] = true, -- Faded Blacksmithing Research
    [227418] = true, -- Exceptional Blacksmithing Research
    [227429] = true, -- Pristine Blacksmithing Research
    -- Enchanting
    [227411] = true, -- Faded Enchanting Research
    [227422] = true, -- Exceptional Enchanting Research
    [227433] = true, -- Pristine Enchanting Research
    -- Engineering
    [227412] = true, -- Faded Engineering Research
    [227423] = true, -- Exceptional Engineering Research
    [227434] = true, -- Pristine Engineering Research
    -- Herbalism (gathering)
    [227415] = true, -- Faded Herbalism Research
    [227426] = true, -- Exceptional Herbalism Research
    [227437] = true, -- Pristine Herbalism Research
    -- Inscription
    [227408] = true, -- Faded Inscription Research
    [227419] = true, -- Exceptional Inscription Research
    [227430] = true, -- Pristine Inscription Research
    -- Jewelcrafting
    [227413] = true, -- Faded Jewelcrafting Research
    [227424] = true, -- Exceptional Jewelcrafting Research
    [227435] = true, -- Pristine Jewelcrafting Research
    -- Leatherworking
    [227414] = true, -- Faded Leatherworking Research
    [227425] = true, -- Exceptional Leatherworking Research
    [227436] = true, -- Pristine Leatherworking Research
    -- Mining (gathering)
    [227416] = true, -- Faded Mining Research
    [227427] = true, -- Exceptional Mining Research
    [227438] = true, -- Pristine Mining Research
    -- Skinning (gathering)
    [227417] = true, -- Faded Skinning Research
    [227428] = true, -- Exceptional Skinning Research
    [227439] = true, -- Pristine Skinning Research
    -- Tailoring
    [227410] = true, -- Faded Tailoring Research
    [227421] = true, -- Exceptional Tailoring Research
    [227432] = true, -- Pristine Tailoring Research
}

-- ============================================================
-- CITY OF THREADS RENOWN VENDOR BOOKS (purchased with Kej currency)
-- ============================================================
local cityOfThreadsBooks = {
    [224024] = true, -- City of Threads Alchemy Book
    [224038] = true, -- City of Threads Blacksmithing Book
    [224050] = true, -- City of Threads Enchanting Book
    [224052] = true, -- City of Threads Engineering Book
    [224023] = true, -- City of Threads Herbalism Book
    [224053] = true, -- City of Threads Inscription Book
    [224054] = true, -- City of Threads Jewelcrafting Book
    [224056] = true, -- City of Threads Leatherworking Book
    [224055] = true, -- City of Threads Mining Book
    [224007] = true, -- City of Threads Skinning Book
    [224036] = true, -- City of Threads Tailoring Book
}

-- ============================================================
-- ALGARI TREATISES (crafted by Inscription, weekly use, +1 KP each)
-- ============================================================
local algariTreatises = {
    [222546] = true, -- Algari Treatise on Alchemy
    [222554] = true, -- Algari Treatise on Blacksmithing
    [222550] = true, -- Algari Treatise on Enchanting
    [222621] = true, -- Algari Treatise on Engineering
    [222552] = true, -- Algari Treatise on Herbalism
    [222548] = true, -- Algari Treatise on Inscription
    [222551] = true, -- Algari Treatise on Jewelcrafting
    [222549] = true, -- Algari Treatise on Leatherworking
    [222553] = true, -- Algari Treatise on Mining
    [222649] = true, -- Algari Treatise on Skinning
    [222547] = true, -- Algari Treatise on Tailoring
}

-- ============================================================
-- UNDERMINE TREATISES (patch 11.1, Cartels of Undermine renown vendor, +1 KP each)
-- ============================================================
local undermineTreatises = {
    [232499] = true, -- Undermine Treatise on Alchemy
    [232500] = true, -- Undermine Treatise on Blacksmithing
    [232501] = true, -- Undermine Treatise on Enchanting
    [232507] = true, -- Undermine Treatise on Engineering
    [232503] = true, -- Undermine Treatise on Herbalism
    [232508] = true, -- Undermine Treatise on Inscription
    [232504] = true, -- Undermine Treatise on Jewelcrafting
    [232505] = true, -- Undermine Treatise on Leatherworking
    [232509] = true, -- Undermine Treatise on Mining
    [232506] = true, -- Undermine Treatise on Skinning
    [232502] = true, -- Undermine Treatise on Tailoring
}

-- ============================================================
-- K'ARESH TRUST / ETHEREAL TOMES (patch 11.2+, +1 KP each)
-- ============================================================
local etherealTomes = {
    [235865] = true, -- Ethereal Tome on Alchemy
    [235864] = true, -- Ethereal Tome on Blacksmithing
    [235863] = true, -- Ethereal Tome on Enchanting
    [235862] = true, -- Ethereal Tome on Engineering
    [235861] = true, -- Ethereal Tome on Herbalism
    [235860] = true, -- Ethereal Tome on Inscription
    [235859] = true, -- Ethereal Tome on Jewelcrafting
    [235858] = true, -- Ethereal Tome on Leatherworking
    [235857] = true, -- Ethereal Tome on Mining
    [235856] = true, -- Ethereal Tome on Skinning
    [235855] = true, -- Ethereal Tome on Tailoring
}

-- ============================================================
-- OPEN-WORLD TREASURE KNOWLEDGE ITEMS (+3 KP each)
-- Found in Khaz Algar zone treasures across all professions
-- Source: https://www.wowhead.com/guide/the-war-within/professions/knowledge-point-treasure-locations
-- ============================================================
local treasureItems = {
    -- Alchemy
    [226265] = true, -- Earthen Iron Powder
    [226266] = true, -- Metal Dornogal Frame
    [226267] = true, -- Reinforced Beaker
    [226268] = true, -- Engraved Stirring Rod
    [226269] = true, -- Chemist's Purified Water
    [226270] = true, -- Sanctified Mortar and Pestle
    [226271] = true, -- Nerubian Mixing Salts
    [226272] = true, -- Dark Apothecary's Vial
    -- Blacksmithing
    [226276] = true, -- Ancient Earthen Anvil
    [226277] = true, -- Dornogal Hammer
    [226278] = true, -- Ringing Hammer Vise
    [226279] = true, -- Earthen Chisels
    [226280] = true, -- Holy Flame Forge
    [226281] = true, -- Radiant Tongs
    [226282] = true, -- Nerubian Smith's Kit
    [226283] = true, -- Spiderling's Wire Brush
    -- Enchanting
    [226284] = true, -- Grinded Earthen Gem
    [226285] = true, -- Silver Dornogal Rod
    [226286] = true, -- Soot-Coated Orb
    [226287] = true, -- Animated Enchanting Dust
    [226288] = true, -- Essence of Holy Fire
    [226289] = true, -- Enchanted Arathi Scroll
    [226290] = true, -- Book of Dark Magic
    [226291] = true, -- Void Shard
    -- Engineering
    [226292] = true, -- Rock Engineer's Wrench
    [226293] = true, -- Dornogal Spectacles
    [226294] = true, -- Inert Mining Bomb
    [226295] = true, -- Earthen Construct Blueprints
    [226296] = true, -- Holy Firework Dud
    [226297] = true, -- Arathi Safety Gloves
    [226298] = true, -- Puppeted Mechanical Spider
    [226299] = true, -- Emptied Venom Canister
    -- Herbalism
    [226300] = true, -- Ancient Flower
    [226301] = true, -- Dornogal Gardening Scythe
    [226302] = true, -- Earthen Digging Fork
    [226303] = true, -- Fungarian Slicer's Knife
    [226304] = true, -- Arathi Garden Trowel
    [226305] = true, -- Arathi Herb Pruner
    [226306] = true, -- Web-Entangled Lotus
    [226307] = true, -- Tunneler's Shovel
    -- Inscription
    [226308] = true, -- Dornogal Scribe's Quill
    [226309] = true, -- Historian's Dip Pen
    [226310] = true, -- Runic Scroll
    [226311] = true, -- Blue Earthen Pigment
    [226312] = true, -- Informant's Fountain Pen
    [226313] = true, -- Calligrapher's Chiseled Marker
    [226314] = true, -- Nerubian Texts
    [226315] = true, -- Venomancer's Ink Well
    -- Jewelcrafting
    [226316] = true, -- Gentle Jewel Hammer
    [226317] = true, -- Earthen Gem Pliers
    [226318] = true, -- Carved Stone File
    [226319] = true, -- Jeweler's Delicate Drill
    [226320] = true, -- Arathi Sizing Gauges
    [226321] = true, -- Librarian's Magnifiers
    [226322] = true, -- Ritual Caster's Crystal
    [226323] = true, -- Nerubian Bench Blocks
    -- Leatherworking
    [226324] = true, -- Earthen Lacing Tools
    [226325] = true, -- Dornogal Craftsman's Flat Knife
    [226326] = true, -- Underground Stropping Compound
    [226327] = true, -- Earthen Awl
    [226328] = true, -- Arathi Beveler Set
    [226329] = true, -- Arathi Leather Burnisher
    [226330] = true, -- Nerubian Tanning Mallet
    [226331] = true, -- Curved Nerubian Skinning Knife
    -- Mining
    [226332] = true, -- Earthen Miner's Gavel
    [226333] = true, -- Dornogal Chisel
    [226334] = true, -- Earthen Excavator's Shovel
    [226335] = true, -- Regenerating Ore
    [226336] = true, -- Arathi Precision Drill
    [226337] = true, -- Devout Archaeologist's Excavator
    [226338] = true, -- Heavy Spider Crusher
    [226339] = true, -- Nerubian Mining Supplies
    -- Skinning
    [226340] = true, -- Dornogal Carving Knife
    [226341] = true, -- Earthen Worker's Beams
    [226342] = true, -- Artisan's Drawing Knife
    [226343] = true, -- Fungarian's Rich Tannin
    [226344] = true, -- Arathi Tanning Agent
    [226345] = true, -- Arathi Craftsman's Spokeshave
    [226346] = true, -- Nerubian's Slicking Iron
    [226347] = true, -- Carapace Shiner
    -- Tailoring
    [226348] = true, -- Dornogal Seam Ripper
    [226349] = true, -- Earthen Tape Measure
    [226350] = true, -- Runed Earthen Pins
    [226351] = true, -- Earthen Stitcher's Snips
    [226352] = true, -- Arathi Rotary Cutter
    [226353] = true, -- Royal Outfitter's Protractor
    [226354] = true, -- Nerubian Quilt
    [226355] = true, -- Nerubian's Pincushion
}

-- ============================================================
-- RENOWN VENDOR KNOWLEDGE BOOKS (+10 KP each, cost 50 Artisan's Acuity)
-- ============================================================
local renownVendorBooks = {
    -- Council of Dornogal (Rank 12) — sold by Auditor Balwurz in Dornogal
    [224645] = true, -- Jewel-Etched Alchemy Notes
    [224647] = true, -- Jewel-Etched Blacksmithing Notes
    [224652] = true, -- Jewel-Etched Enchanting Notes
    [224648] = true, -- Jewel-Etched Tailoring Notes
    -- The Assembly of the Deeps (Rank 12) — sold by Waxmonger Squick in The Ringing Deeps
    [224651] = true, -- Machine-Learned Mining Notes
    [224653] = true, -- Machine-Learned Engineering Notes
    [224654] = true, -- Machine-Learned Inscription Notes
    -- Hallowfall Arathi (Rank 14) — sold by Auralia Steelstrike in Hallowfall
    [224655] = true, -- Void-Lit Jewelcrafting Notes
    [224656] = true, -- Void-Lit Herbalism Notes
    [224658] = true, -- Void-Lit Leatherworking Notes
}

-- ============================================================
-- ADDITIONAL TREASURE ITEMS (alternate item IDs, +3 KP each)
-- ============================================================
local additionalTreasureItems = {
    -- Herbalism
    [238564] = true, -- Ancient Flower
    [238565] = true, -- Dornogal Gardening Scythe
    [238566] = true, -- Earthen Digging Fork
    [238567] = true, -- Fungarian Slicer's Knife
    [238568] = true, -- Arathi Garden Trowel
    [238569] = true, -- Arathi Herb Pruner
    [238570] = true, -- Web-Entangled Lotus
    [238571] = true, -- Tunneler's Shovel
    -- Skinning
    [238604] = true, -- Dornogal Carving Knife
    [238605] = true, -- Earthen Worker's Beams
    [238606] = true, -- Artisan's Drawing Knife
    [238607] = true, -- Fungarian's Rich Tannin
    [238608] = true, -- Arathi Tanning Agent
    [238609] = true, -- Arathi Craftsman's Spokeshave
    [238610] = true, -- Nerubian's Slicking Iron
    [238611] = true, -- Carapace Shiner
}

-- ============================================================
-- GATHERING NODE SIDE-ITEMS (drop from Khaz Algar gathering nodes, grant KP)
-- ============================================================
local gatheringNodeItems = {
    -- Herbalism
    [224264] = true, -- Deepgrove Petal (+1 KP, 5/week)
    [224265] = true, -- Deepgrove Rose (+2-4 KP, 1/week)
    -- Mining
    [224583] = true, -- Slab of Slate (+1 KP, 5/week)
    [224584] = true, -- Erosion-Polished Slate (+2-4 KP, 1/week)
    -- Skinning
    [224780] = true, -- Toughened Tempest Pelt (+1 KP, 5/week)
    [224781] = true, -- Abyssal Fur (+2-4 KP, 1/week)
}

-- ============================================================
-- MISCELLANEOUS KNOWLEDGE ITEMS
-- Catch-up items, disenchant drops, patron order rewards
-- ============================================================
local miscItems = {
    -- Enchanting (from disenchanting)
    [227659] = true, -- Fleeting Arcane Manifestation (+1 KP)
    [227661] = true, -- Gleaming Telluric Crystal (+4 KP)
    [227662] = true, -- Shimmering Dust (catch-up)

}

-- ============================================================
-- PATRON ORDER KNOWLEDGE ITEMS
-- ============================================================
local patronOrderItems = {
    -- Alchemy
    [228724] = true, -- Flicker of Alchemy Knowledge (+1 KP)
    [228725] = true, -- Glimmer of Alchemy Knowledge (+2 KP)
    -- Blacksmithing
    [228726] = true, -- Flicker of Blacksmithing Knowledge (+1 KP)
    [228727] = true, -- Glimmer of Blacksmithing Knowledge (+2 KP)
    -- Enchanting
    [228728] = true, -- Flicker of Enchanting Knowledge (+1 KP)
    [228729] = true, -- Glimmer of Enchanting Knowledge (+2 KP)
    -- Engineering
    [228730] = true, -- Flicker of Engineering Knowledge (+1 KP)
    [228731] = true, -- Glimmer of Engineering Knowledge (+2 KP)
    -- Inscription
    [228732] = true, -- Flicker of Inscription Knowledge (+1 KP)
    [228733] = true, -- Glimmer of Inscription Knowledge (+2 KP)
    -- Jewelcrafting
    [228734] = true, -- Flicker of Jewelcrafting Knowledge (+1 KP)
    [228735] = true, -- Glimmer of Jewelcrafting Knowledge (+2 KP)
    -- Leatherworking
    [228736] = true, -- Flicker of Leatherworking Knowledge (+1 KP)
    [228737] = true, -- Glimmer of Leatherworking Knowledge (+2 KP)
    -- Tailoring
    [228738] = true, -- Flicker of Tailoring Knowledge (+1 KP)
    [228739] = true, -- Glimmer of Tailoring Knowledge (+2 KP)
}

-- Register all items into shared namespace
for id in pairs(consortiumBooks) do items[id] = true end
for id in pairs(cityOfThreadsBooks) do items[id] = true end
for id in pairs(algariTreatises) do items[id] = true end
for id in pairs(undermineTreatises) do items[id] = true end
for id in pairs(etherealTomes) do items[id] = true end
for id in pairs(treasureItems) do items[id] = true end
for id in pairs(renownVendorBooks) do items[id] = true end
for id in pairs(additionalTreasureItems) do items[id] = true end
for id in pairs(gatheringNodeItems) do items[id] = true end
for id in pairs(miscItems) do items[id] = true end
for id in pairs(patronOrderItems) do items[id] = true end
