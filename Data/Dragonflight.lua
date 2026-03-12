-- BetterBags - All Crafting Knowledge
-- Dragonflight (10.x) Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- ARTISAN'S CONSORTIUM VENDOR BOOKS (sold by Rabul in Valdrakken)
-- Dusty = +10 KP | Rare = +10 KP | Ancient = +10 KP (one-time per character)
-- ============================================================
local vendorBooks = {
    -- Alchemy
    [200974] = true, -- Dusty Alchemist's Research
    [201270] = true, -- Rare Alchemist's Research
    [201281] = true, -- Ancient Alchemist's Research
    -- Blacksmithing
    [200972] = true, -- Dusty Blacksmithing Research
    [201268] = true, -- Rare Blacksmithing Research
    [201279] = true, -- Ancient Blacksmithing Research
    -- Enchanting
    [200976] = true, -- Dusty Enchanting Research
    [201272] = true, -- Rare Enchanting Research
    [201283] = true, -- Ancient Enchanting Research
    -- Engineering
    [200977] = true, -- Dusty Engineering Research
    [201273] = true, -- Rare Engineering Research
    [201284] = true, -- Ancient Engineering Research
    -- Inscription
    [200973] = true, -- Dusty Inscription Research
    [201269] = true, -- Rare Inscription Research
    [201280] = true, -- Ancient Inscription Research
    -- Jewelcrafting
    [200978] = true, -- Dusty Jewelcrafting Research
    [201274] = true, -- Rare Jewelcrafting Research
    [201285] = true, -- Ancient Jewelcrafting Research
    -- Leatherworking
    [200979] = true, -- Dusty Leatherworking Research
    [201275] = true, -- Rare Leatherworking Research
    [201286] = true, -- Ancient Leatherworking Research
    -- Tailoring
    [200975] = true, -- Dusty Tailoring Research
    [201271] = true, -- Rare Tailoring Research
    [201282] = true, -- Ancient Tailoring Research
    -- Herbalism (gathering)
    [200980] = true, -- Dusty Herbalism Research
    [201276] = true, -- Rare Herbalism Research
    [201287] = true, -- Ancient Herbalism Research
    -- Mining (gathering)
    [200981] = true, -- Dusty Mining Research
    [201277] = true, -- Rare Mining Research
    [201288] = true, -- Ancient Mining Research
    -- Skinning (gathering)
    [200982] = true, -- Dusty Skinning Research
    [201278] = true, -- Rare Skinning Research
    [201289] = true, -- Ancient Skinning Research
}

-- ============================================================
-- DRACONIC TREATISES (crafted by Inscription, weekly use, +1 KP each)
-- ============================================================
local draconicTreatises = {
    [194697] = true, -- Draconic Treatise on Alchemy
    [198454] = true, -- Draconic Treatise on Blacksmithing
    [194702] = true, -- Draconic Treatise on Enchanting
    [198510] = true, -- Draconic Treatise on Engineering
    [194704] = true, -- Draconic Treatise on Herbalism
    [194699] = true, -- Draconic Treatise on Inscription
    [194703] = true, -- Draconic Treatise on Jewelcrafting
    [194700] = true, -- Draconic Treatise on Leatherworking
    [194708] = true, -- Draconic Treatise on Mining
    [201023] = true, -- Draconic Treatise on Skinning
    [194698] = true, -- Draconic Treatise on Tailoring
}

-- ============================================================
-- NIFFEN NOTEBOOKS (sold by Harlowe Marl, patch 10.1+, +1 KP each)
-- ============================================================
local niffenNotebooks = {
    [205353] = true, -- Niffen Notebook of Alchemy Knowledge
    [205352] = true, -- Niffen Notebook of Blacksmithing Knowledge
    [205351] = true, -- Niffen Notebook of Enchanting Knowledge
    [205349] = true, -- Niffen Notebook of Engineering Knowledge
    [205358] = true, -- Niffen Notebook of Herbalism Knowledge
    [205354] = true, -- Niffen Notebook of Inscription Knowledge
    [205348] = true, -- Niffen Notebook of Jewelcrafting Knowledge
    [205350] = true, -- Niffen Notebook of Leatherworking Knowledge
    [205356] = true, -- Niffen Notebook of Mining Knowledge
    [205357] = true, -- Niffen Notebook of Skinning Knowledge
    [205355] = true, -- Niffen Notebook of Tailoring Knowledge
}

-- ============================================================
-- WORLD DROP / TREASURE / GATHERING NODE KNOWLEDGE ITEMS
-- Found in Dragon Isles treasures, mob drops, and gathering nodes
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
-- NOTE: Partial list — verify full lists per profession on Wowhead
-- ============================================================
local worldDrops = {
    -- Alchemy (verified via Wowhead)
    [198685] = true, -- Well-Insulated Mug
    [198663] = true, -- Frostforged Potion
    [198710] = true, -- (Alchemy world-drop knowledge)
    [198599] = true, -- (Alchemy world-drop knowledge)
    [198712] = true, -- (Alchemy world-drop knowledge)
    [203471] = true, -- (Alchemy world-drop knowledge)
    [198697] = true, -- (Alchemy world-drop knowledge)
    [198684] = true, -- (Alchemy world-drop knowledge)
    -- TODO: Add remaining professions' world-drop / treasure / gathering-node IDs
    -- See: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
}

-- Register all items into shared namespace
for id in pairs(vendorBooks) do items[id] = true end
for id in pairs(draconicTreatises) do items[id] = true end
for id in pairs(niffenNotebooks) do items[id] = true end
for id in pairs(worldDrops) do items[id] = true end
