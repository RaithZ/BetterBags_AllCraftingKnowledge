-- BetterBags - All Crafting Knowledge
-- Dragonflight (10.x) Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
-- Note: Open-world treasures exist for crafting professions only; gathering professions
--       have no open-world treasure knowledge items in Dragonflight.

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- ARTISAN'S CONSORTIUM VENDOR BOOKS (sold by Rabul in Valdrakken)
-- Dusty / Rare / Ancient — +10 KP each, one-time purchase per character
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
-- OPEN-WORLD TREASURE / DROP KNOWLEDGE ITEMS
-- Found in Dragon Isles zone treasures and mob drops (crafting profs only)
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
-- ============================================================
local worldDrops = {
    -- Alchemy
    [198685] = true, -- Well-Insulated Mug
    [198663] = true, -- Frostforged Potion
    [198710] = true, -- Canteen of Suspicious Water
    [198599] = true, -- Experimental Decay Sample
    [198712] = true, -- Firewater Powder Sample
    [203471] = true, -- Tasty Candy
    [198697] = true, -- Contraband Concoction
    [205212] = true, -- Marrow-Ripened Slime
    [205211] = true, -- Nutrient Diluted Protofluid
    [205213] = true, -- Suspicious Mold
    [210185] = true, -- Splash Potion of Narcolepsy
    [210184] = true, -- Half-Filled Dreamless Sleep Potion
    [210190] = true, -- Blazeroot
    -- Blacksmithing
    [198791] = true, -- Glimmer of Blacksmithing Wisdom
    [201007] = true, -- Ancient Monument
    [201005] = true, -- Curious Ingots
    [201008] = true, -- Molten Ingot
    [201010] = true, -- Qalashi Weapon Diagram
    [201004] = true, -- Ancient Spear Shards
    [201009] = true, -- Falconer Gauntlet Drawings
    [201011] = true, -- Spelltouched Tongs
    [201006] = true, -- Draconic Flux
    [205987] = true, -- Brimstone Rescue Ring
    [205986] = true, -- Well-Worn Kiln
    [205988] = true, -- Zaqali Elder Spear
    [210465] = true, -- Deathstalker Chassis
    [210466] = true, -- Flamesworn Render
    [210464] = true, -- Amirdrassil Defender's Shield
    -- Enchanting
    [198798] = true, -- Flashfrozen Scroll
    [198675] = true, -- Lava-Infused Seed
    [201012] = true, -- Enchanted Debris
    [198799] = true, -- Forgotten Arcane Tome
    [201013] = true, -- Faintly Enchanted Remains
    [198694] = true, -- Enriched Earthen Shard
    [204990] = true, -- Lava-Drenched Shadow Crystal
    [205001] = true, -- Resonating Arcane Crystal
    [204999] = true, -- Shimmering Aqueous Orb
    [210231] = true, -- Everburning Core
    [210228] = true, -- Pure Dream Water
    [210234] = true, -- Essence of Dreams
    -- Engineering
    [201014] = true, -- Boomthyr Rocket
    [198789] = true, -- Intact Coil Capacitor
    [204475] = true, -- Busted Wyrmhole Generator
    [204471] = true, -- Defective Survival Pack
    [204853] = true, -- Discarded Dracothyst Drill
    [204850] = true, -- Handful of Khaz'gorite Bolts
    [204470] = true, -- Haphazardly Discarded Bomb
    [204480] = true, -- Inconspicuous Data Miner
    [204469] = true, -- Misplaced Aberrus Outflow Blueprints
    [204855] = true, -- Overclocked Determination Core
    [210194] = true, -- Insomniotron
    [210193] = true, -- Experimental Dreamcatcher
    [210197] = true, -- Unhatched Battery
    [210198] = true, -- Depleted Battery
    -- Inscription
    [198704] = true, -- Pulsing Earth Rune
    [198703] = true, -- Sign Language Reference Sheet
    [198693] = true, -- Dusty Darkmoon Card
    [198686] = true, -- Frosted Parchment
    [198669] = true, -- How to Train Your Whelpling
    [198659] = true, -- Forgetful Apprentice's Tome
    [201015] = true, -- Counterfeit Darkmoon Deck
    [206034] = true, -- Hissing Rune Draft
    [206035] = true, -- Ancient Research
    [206031] = true, -- Intricate Zaqali Runes
    [210458] = true, -- Winnie's Notes on Flora and Fauna
    [210460] = true, -- Primalist Shadowbinding Rune
    [210459] = true, -- Grove Keeper's Pillar
    -- Jewelcrafting
    [198687] = true, -- Closely Guarded Shiny
    [201017] = true, -- Igneous Gem
    [198670] = true, -- Lofty Malygite
    [198660] = true, -- Fragmented Key
    [198664] = true, -- Crystalline Overgrowth
    [201016] = true, -- Harmonic Crystal Harmonizer
    [198682] = true, -- Alexstraszite Cluster
    [198656] = true, -- Painter's Pretty Jewel
    [205219] = true, -- Broken Barter Boulder
    [205216] = true, -- Gently Jostled Jewels
    [205214] = true, -- Snubbed Snail Shells
    [210200] = true, -- Petrified Hope
    [210201] = true, -- Handful of Tiny Pebbles
    [210202] = true, -- Coalesced Dreamstone
    -- Leatherworking
    [198711] = true, -- Poacher's Pack
    [198696] = true, -- Wind-Blessed Hide
    [201018] = true, -- Well-Danced Drum
    [198658] = true, -- Decay-Infused Tanning Oil
    [198683] = true, -- Treated Hides
    [198690] = true, -- Decayed Scales
    [204986] = true, -- Flame-Infused Scale Oil
    [204987] = true, -- Lava-Forged Leatherworker's "Knife"
    [204988] = true, -- Sulfur-Soaked Skins
    [210215] = true, -- Dreamtalon Claw
    [210208] = true, -- Tuft of Dreamsaber Fur
    [210211] = true, -- Molted Faerie Dragon Scales
    -- Tailoring
    [198699] = true, -- Mysterious Banner
    [198702] = true, -- Itinerant Singed Fabric
    [198692] = true, -- Noteworthy Scrap of Carpet
    [201020] = true, -- Silky Surprise
    [198680] = true, -- Decaying Brackenhide Blanket
    [198662] = true, -- Intriguing Bolt of Blue Cloth
    [198684] = true, -- Miniature Bronze Dragonflight Banner
    [201019] = true, -- Ancient Dragonweave Bolt
    [206019] = true, -- Abandoned Reserve Chute
    [206030] = true, -- Exquisitely Embroidered Banner
    [206025] = true, -- Used Medical Wrap Kit
    [210461] = true, -- Exceedingly Soft Wildercloth
    [210463] = true, -- Snuggle Buddy
    [210462] = true, -- Plush Pillow
}

-- Register all items into shared namespace
for id in pairs(vendorBooks) do items[id] = true end
for id in pairs(draconicTreatises) do items[id] = true end
for id in pairs(niffenNotebooks) do items[id] = true end
for id in pairs(worldDrops) do items[id] = true end
