-- BetterBags - All Crafting Knowledge
-- Midnight Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/midnight/professions/knowledge-point-treasure-locations

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- THALASSIAN TREATISES (crafted by Inscription, weekly use, +1 KP each)
-- ============================================================
local thalassianTreatises = {
    [245755] = true, -- Thalassian Treatise on Alchemy
    [245763] = true, -- Thalassian Treatise on Blacksmithing
    [245759] = true, -- Thalassian Treatise on Enchanting
    [245809] = true, -- Thalassian Treatise on Engineering
    [245761] = true, -- Thalassian Treatise on Herbalism
    [245757] = true, -- Thalassian Treatise on Inscription
    [245760] = true, -- Thalassian Treatise on Jewelcrafting
    [245758] = true, -- Thalassian Treatise on Leatherworking
    [245762] = true, -- Thalassian Treatise on Mining
    [245828] = true, -- Thalassian Treatise on Skinning
    [245756] = true, -- Thalassian Treatise on Tailoring
}

-- ============================================================
-- VENDOR RESEARCH BOOKS (various faction vendors, require skill rank 25)
-- ============================================================
local vendorBooks = {
    -- Beyond the Event Horizon (from Void Researcher Anomander)
    [262645] = true, -- Beyond the Event Horizon: Alchemy
    [262644] = true, -- Beyond the Event Horizon: Blacksmithing
    [262646] = true, -- Beyond the Event Horizon: Engineering

    -- Traditions of the Haranir (from Naynar)
    [258410] = true, -- Traditions of the Haranir: Herbalism
    [258411] = true, -- Traditions of the Haranir: Inscription

    -- Echo of Abundance
    [250445] = true, -- Echo of Abundance: Enchanting
    [250443] = true, -- Echo of Abundance: Herbalism
    [250444] = true, -- Echo of Abundance: Mining
    [250360] = true, -- Echo of Abundance: Skinning

    -- Whisper of the Loa (from Magovu)
    [250922] = true, -- Whisper of the Loa: Leatherworking
    [250924] = true, -- Whisper of the Loa: Mining
    [250923] = true, -- Whisper of the Loa: Skinning

    -- Skill Issue (from Caeris Fairdawn)
    [257600] = true, -- Skill Issue: Enchanting
    [257599] = true, -- Skill Issue: Jewelcrafting
    [257601] = true, -- Skill Issue: Tailoring
}

-- ============================================================
-- OPEN-WORLD TREASURE KNOWLEDGE ITEMS (+3 KP each)
-- Found in Quel'Thalas zone treasures across all professions
-- Source: https://www.wowhead.com/guide/midnight/professions/knowledge-point-treasure-locations
-- Note: Gathering professions (Herbalism, Mining, Skinning) have treasures in Midnight
--       unlike Dragonflight where only crafting professions had open-world treasures.
-- ============================================================
local treasureItems = {
    -- Alchemy
    [238532] = true, -- Vial of Eversong Oddities
    [238533] = true, -- Vial of Voidstorm Oddities
    [238534] = true, -- Vial of Rootlands Oddities
    [238535] = true, -- Vial of Zul'Aman Oddities
    [238536] = true, -- Freshly Plucked Peacebloom
    [238537] = true, -- Measured Ladle
    [238538] = true, -- Pristine Potion
    [238539] = true, -- Failed Experiment
    -- Blacksmithing
    [238540] = true, -- Deconstructed Forge Techniques
    [238541] = true, -- Silvermoon Smithing Kit
    [238542] = true, -- Carefully Racked Spear
    [238543] = true, -- Metalworking Cheat Sheet
    [238544] = true, -- Voidstorm Defense Spear
    [238545] = true, -- Rutaani Floratender's Sword
    [238546] = true, -- Sin'dorei Master's Forgemace
    [238547] = true, -- Silvermoon Blacksmith's Hammer
    -- Enchanting
    [238548] = true, -- Enchanted Amani Mask
    [238549] = true, -- Enchanted Sunfire Silk
    [238550] = true, -- Pure Void Crystal
    [238551] = true, -- Everblazing Sunmote
    [238552] = true, -- Entropic Shard
    [238553] = true, -- Primal Essence Orb
    [238554] = true, -- Loa-Blessed Dust
    [238555] = true, -- Sin'dorei Enchanting Rod
    -- Engineering
    [238556] = true, -- One Engineer's Junk
    [238557] = true, -- Miniaturized Transport Skiff
    [238558] = true, -- Manual of Mistakes and Mishaps
    [238559] = true, -- Expeditious Pylon
    [238560] = true, -- Ethereal Stormwrench
    [238561] = true, -- Offline Helper Bot
    [238562] = true, -- What To Do When Nothing Works
    [238563] = true, -- Handy Wrench
    -- Herbalism (gathering — treasures exist in Midnight)
    [238468] = true, -- Bloomed Bud
    [238469] = true, -- Sweeping Harvester's Scythe
    [238470] = true, -- Simple Leaf Pruners
    [238471] = true, -- Lightbloom Root
    [238472] = true, -- A Spade
    [238473] = true, -- Harvester's Sickle
    [238474] = true, -- Peculiar Lotus
    [238475] = true, -- Planting Shovel
    -- Inscription
    [238572] = true, -- Void-Touched Quill
    [238573] = true, -- Leather-Bound Techniques
    [238574] = true, -- Spare Ink
    [238575] = true, -- Intrepid Explorer's Marker
    [238576] = true, -- Leftover Sanguithorn Pigment
    [238577] = true, -- Half-Baked Techniques
    [238578] = true, -- Songwriter's Pen
    [238579] = true, -- Songwriter's Quill
    -- Jewelcrafting
    [238580] = true, -- Sin'dorei Masterwork Chisel
    [238581] = true, -- Speculative Voidstorm Crystal
    [238582] = true, -- Dual-Function Magnifiers
    [238583] = true, -- Poorly Rounded Vial
    [238584] = true, -- Shattered Glass
    [238585] = true, -- Vintage Soul Gem
    [238586] = true, -- Ethereal Gem Pliers
    [238587] = true, -- Sin'dorei Gem Faceters
    -- Leatherworking
    [238588] = true, -- Amani Leatherworker's Tool
    [238589] = true, -- Ethereal Leatherworking Knife
    [238590] = true, -- Prestigiously Racked Hide
    [238591] = true, -- Bundle of Tanner's Trinkets
    [238592] = true, -- Patterns: Beyond the Void
    [238593] = true, -- Haranir Leatherworking Mallet
    [238594] = true, -- Haranir Leatherworking Knife
    [238595] = true, -- Artisan's Considered Order
    -- Mining (gathering — treasures exist in Midnight)
    [238596] = true, -- Miner's Guide to Voidstorm
    [238597] = true, -- Spelunker's Lucky Charm
    [238598] = true, -- Lost Voidstorm Satchel
    [238599] = true, -- Solid Ore Punchers
    [238600] = true, -- Glimmering Void Pearl
    [238601] = true, -- Amani Expert's Chisel
    [238602] = true, -- Star Metal Deposit
    [238603] = true, -- Spare Expedition Torch
    -- Skinning (gathering — treasures exist in Midnight)
    [238628] = true, -- Lightbloom Afflicted Hide
    [238629] = true, -- Cadre Skinning Knife
    [238630] = true, -- Primal Hide
    [238631] = true, -- Voidstorm Leather Sample
    [238632] = true, -- Amani Tanning Oil
    [238633] = true, -- Sin'dorei Tanning Oil
    [238634] = true, -- Amani Skinning Knife
    [238635] = true, -- Thalassian Skinning Knife
    -- Tailoring
    [238612] = true, -- A Child's Stuffy
    [238613] = true, -- A Really Nice Curtain
    [238614] = true, -- Sin'dorei Outfitter's Ruler
    [238615] = true, -- Wooden Weaving Sword
    [238616] = true, -- Book of Sin'dorei Stitches
    [238617] = true, -- Satin Throw Pillow
    [238618] = true, -- Particularly Enchanting Tablecloth
    [238619] = true, -- Artisan's Cover Comb
}

-- ============================================================
-- FISHING
-- ============================================================
local fishingItems = {
    [255157] = true, -- Abyss Angler's Fish Log
}

-- ============================================================
-- GATHERING NODE SIDE-ITEMS (drop from Midnight gathering nodes, grant KP)
-- ============================================================
local gatheringNodeItems = {
    -- Herbalism
    [238465] = true, -- Thalassian Phoenix Plume (+1 KP)
    [238466] = true, -- Thalassian Phoenix Tail (+4 KP)
    -- Mining
    [237496] = true, -- Igneous Rock Specimen (+1 KP)
    [237506] = true, -- Septarian Nodule (+3 KP)
    -- Skinning
    [238625] = true, -- Fine Void-Tempered Hide (+1 KP)
    [238626] = true, -- Mana-Infused Bone (+3 KP)
}

-- ============================================================
-- CATCH-UP KNOWLEDGE ITEMS (treasure drops)
-- ============================================================
local catchupItems = {
    -- Herbalism (gathering catch-up)
    [238467] = true, -- Thalassian Phoenix Ember (+1 KP)
    -- Mining (gathering catch-up)
    [237507] = true, -- Cloudy Quartz (+1 KP)
    -- Skinning (gathering catch-up)
    [238627] = true, -- Manafused Sample (+1 KP)
    -- Alchemy
    [259188] = true, -- Lightbloomed Spore Sample (+1 KP)
    [259189] = true, -- Aged Cruor (+1 KP)
    -- Blacksmithing
    [259190] = true, -- Thalassian Whetstone (+2 KP)
    [259191] = true, -- Infused Quenching Oil (+2 KP)
    -- Enchanting
    [259192] = true, -- Voidstorm Ashes (+2 KP)
    [259193] = true, -- Lost Thalassian Vellum (+2 KP)
    -- Engineering
    [259194] = true, -- Dance Gear (+1 KP)
    [259195] = true, -- Dawn Capacitor (+1 KP)
    -- Inscription
    [259196] = true, -- Brilliant Phoenix Ink (+2 KP)
    [259197] = true, -- Loa-Blessed Rune (+2 KP)
    -- Jewelcrafting
    [259198] = true, -- Void-Touched Eversong Diamond Fragments (+2 KP)
    [259199] = true, -- Harandar Stone Sample (+2 KP)
    -- Leatherworking
    [259200] = true, -- Amani Tanning Oil (+2 KP)
    [259201] = true, -- Thalassian Mana Oil (+2 KP)
    -- Tailoring
    [259202] = true, -- Embroidered Memento (+2 KP)
    [259203] = true, -- Finely Woven Lynx Collar (+2 KP)
}

-- Register all items into shared namespace
for id in pairs(thalassianTreatises) do items[id] = true end
for id in pairs(vendorBooks) do items[id] = true end
for id in pairs(treasureItems) do items[id] = true end
for id in pairs(fishingItems) do items[id] = true end
for id in pairs(gatheringNodeItems) do items[id] = true end
for id in pairs(catchupItems) do items[id] = true end
