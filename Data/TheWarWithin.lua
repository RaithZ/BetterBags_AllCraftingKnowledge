-- BetterBags - All Crafting Knowledge
-- The War Within (11.x) Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/professions/knowledge-points
-- Source: https://www.wowhead.com/guide/the-war-within/professions/knowledge-point-treasure-locations

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- ARTISAN'S CONSORTIUM VENDOR BOOKS (Khaz Algar equivalents)
-- Faded = +10 KP | Exceptional = +10 KP | Pristine = +10 KP (one-time per character)
-- Cost: Artisan's Acuity
-- ============================================================
local vendorBooks = {
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
-- ALGARI TREATISES (crafted by Inscription, weekly use, +1 KP each)
-- NOTE: Only Engineering and Herbalism IDs verified. Others need Wowhead confirmation.
-- Search: https://www.wowhead.com/items?filter=na=algari+treatise
-- ============================================================
local algariTreatises = {
    [222621] = true, -- Algari Treatise on Engineering
    [222552] = true, -- Algari Treatise on Herbalism
    -- TODO: Add remaining Algari Treatise IDs (Alchemy, Blacksmithing, Enchanting,
    --       Inscription, Jewelcrafting, Leatherworking, Mining, Skinning, Tailoring)
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
-- WORLD TREASURE KNOWLEDGE ITEMS (+3 KP each, from Khaz Algar world treasures)
-- Source: https://www.wowhead.com/guide/the-war-within/professions/knowledge-point-treasure-locations
-- ============================================================
local treasureItems = {
    -- Alchemy (226265–226272)
    [226265] = true, [226266] = true, [226267] = true, [226268] = true,
    [226269] = true, [226270] = true, [226271] = true, [226272] = true,
    -- Blacksmithing (226276–226283)
    [226276] = true, [226277] = true, [226278] = true, [226279] = true,
    [226280] = true, [226281] = true, [226282] = true, [226283] = true,
    -- Enchanting (226284–226291)
    [226284] = true, [226285] = true, [226286] = true, [226287] = true,
    [226288] = true, [226289] = true, [226290] = true, [226291] = true,
    -- Engineering (226292–226299)
    [226292] = true, [226293] = true, [226294] = true, [226295] = true,
    [226296] = true, [226297] = true, [226298] = true, [226299] = true,
    -- Herbalism (226300–226307)
    [226300] = true, [226301] = true, [226302] = true, [226303] = true,
    [226304] = true, [226305] = true, [226306] = true, [226307] = true,
    -- Inscription (226308–226315)
    [226308] = true, [226309] = true, [226310] = true, [226311] = true,
    [226312] = true, [226313] = true, [226314] = true, [226315] = true,
    -- Jewelcrafting (226316–226323)
    [226316] = true, [226317] = true, [226318] = true, [226319] = true,
    [226320] = true, [226321] = true, [226322] = true, [226323] = true,
    -- Leatherworking (226324–226331)
    [226324] = true, [226325] = true, [226326] = true, [226327] = true,
    [226328] = true, [226329] = true, [226330] = true, [226331] = true,
    -- Mining (226332–226339)
    [226332] = true, [226333] = true, [226334] = true, [226335] = true,
    [226336] = true, [226337] = true, [226338] = true, [226339] = true,
    -- Skinning (226340–226347)
    [226340] = true, [226341] = true, [226342] = true, [226343] = true,
    [226344] = true, [226345] = true, [226346] = true, [226347] = true,
    -- Tailoring (226348–226355)
    [226348] = true, [226349] = true, [226350] = true, [226351] = true,
    [226352] = true, [226353] = true, [226354] = true, [226355] = true,
}

-- ============================================================
-- GATHERING NODE SIDE-ITEMS (drop from gathering nodes, grant KP)
-- ============================================================
local gatheringNodeItems = {
    -- Herbalism
    [224264] = true, -- Deepgrove Petal
    [224265] = true, -- Deepgrove Rose
    -- Mining
    [224583] = true, -- Slab of Slate
    [224584] = true, -- Erosion-Polished Slate
    -- Skinning
    [224780] = true, -- Toughened Tempest Pelt
    [224781] = true, -- Abyssal Fur
}

-- Register all items into shared namespace
for id in pairs(vendorBooks) do items[id] = true end
for id in pairs(algariTreatises) do items[id] = true end
for id in pairs(undermineTreatises) do items[id] = true end
for id in pairs(etherealTomes) do items[id] = true end
for id in pairs(treasureItems) do items[id] = true end
for id in pairs(gatheringNodeItems) do items[id] = true end
